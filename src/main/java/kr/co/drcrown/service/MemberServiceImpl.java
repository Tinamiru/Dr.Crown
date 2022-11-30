package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dao.BookingDAO;
import kr.co.drcrown.dao.FileDAO;
import kr.co.drcrown.dao.MemberDAO;
import kr.co.drcrown.dao.PatientDAO;
import kr.co.drcrown.dto.BookingVO;
import kr.co.drcrown.dto.FileVO;
import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.dto.PatientVO;
import kr.co.drcrown.exception.InvalidPasswordException;
import kr.co.drcrown.exception.NotFoundIdException;
import kr.co.drcrown.security.PasswordEncoding;
import kr.co.drcrown.security.SHAPasswordEncoder;

@Service
public class MemberServiceImpl implements MemberService {

    private MemberDAO memberDAO;
    private BookingDAO bookingDAO;
    private PatientDAO patientDAO;
    private FileDAO fileDAO;

    public void setMemberDAO(MemberDAO memberDAO) {
        this.memberDAO = memberDAO;
    }

    public void setBookingDAO(BookingDAO bookingDAO) {
        this.bookingDAO = bookingDAO;
    }

    public void setPatientDAO(PatientDAO patientDAO) {
        this.patientDAO = patientDAO;
    }

    public void setFileDAO(FileDAO fileDAO) {
        this.fileDAO = fileDAO;
    }

    @Override
    public Map<String, Object> getMemberList(Criteria cri) throws SQLException {

        Map<String, Object> dataMap = null;

        // 처리.......
        List<MemberVO> memberList = memberDAO.selectMemberList(cri);

        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(memberDAO.selectMemberListCount(cri));

        dataMap = new HashMap<String, Object>();
        dataMap.put("memberList", memberList);
        dataMap.put("pageMaker", pageMaker);

        return dataMap;
    }

    @Override
    public MemberVO getMember(String id) throws SQLException {
        MemberVO member = memberDAO.selectMemberById(id);
        return member;
    }

    @Override
    public void regist(MemberVO member, String typeAuthority) throws Exception {
        SHAPasswordEncoder shaPasswordEncoder = new SHAPasswordEncoder(512);
        shaPasswordEncoder.setEncodeHashAsBase64(true);
        PasswordEncoding passwordEncoding = new PasswordEncoding(shaPasswordEncoder);
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        passwordEncoding = new PasswordEncoding(passwordEncoder);

        String encodedPwd = passwordEncoding.encode("1234");

        member.setMemPwd(encodedPwd);

        String newMemId = memberDAO.insertMember(member, typeAuthority);
        MemberVO memberForFile = memberDAO.selectMemberById(newMemId);
        fileDAO.insertFileByMember(memberForFile);
    }

    @Override
    public void modify(MemberVO member) throws Exception {
        memberDAO.updateMember(member);
    }

    @Override
    public void remove(String memId) throws Exception {
        memberDAO.deleteMember(memId);
    }

    @Override
    public void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException, SQLException {

        MemberVO member = memberDAO.selectMemberById(id);
        if (member == null)
            throw new NotFoundIdException();
        if (!pwd.equals(member.getMemPwd()))
            throw new InvalidPasswordException();

    }

    @Override
    public Map<String, Object> getMemberDoctorList(Criteria cri) throws SQLException {
        Map<String, Object> dataMap = null;

        // 처리.......
        List<MemberVO> memberDoctorList = memberDAO.selectMemberDoctorList(cri);
        List<BookingVO> bookingByList = bookingDAO.selectBookingByList(cri);
        List<PatientVO> patientList = patientDAO.selectSearchPatientList(cri);

        dataMap = new HashMap<String, Object>();
        dataMap.put("memberDoctorList", memberDoctorList);
        dataMap.put("bookingByList", bookingByList);
        dataMap.put("patientList", patientList);

        return dataMap;
    }

    @Override
    public void activation(String memId) throws Exception {
        memberDAO.activationMember(memId);
    }

    @Override
    public int getMemberForVerification(MemberVO member) throws Exception {
        MemberVO memberById = memberDAO.selectMemberById(member.getMemId());
        String pwdFromDAO = memberById.getMemPwd();
        String pwdFromUser = member.getMemPwd();
        int result = 0;
        if (pwdFromDAO.equals(pwdFromUser)) {
            result = 1;
        }
        return result;
    }

    @Override
    public boolean isMemberPwd(HttpServletRequest request, String password, String newPassword) throws Exception {
        boolean isMemberPwd = false;
        SHAPasswordEncoder shaPasswordEncoder = new SHAPasswordEncoder(512);
        shaPasswordEncoder.setEncodeHashAsBase64(true);
        PasswordEncoding passwordEncoding = new PasswordEncoding(shaPasswordEncoder);
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        passwordEncoding = new PasswordEncoding(passwordEncoder);
        
        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
        
//        String encryptionPwd = passwordEncoder.encode(password);
        String encryptionNewPwd = passwordEncoder.encode(newPassword);
        MemberVO member = memberDAO.selectMemberById(loginUser.getMemId());
        
        if(passwordEncoding.matches(password,member.getMemPwd())) {
            member.setMemPwd(encryptionNewPwd);
            memberDAO.modifyMemPwd(member);
            session.invalidate();
            isMemberPwd = true;
        }
        
        return isMemberPwd;
    }

}
