package kr.co.drcrown.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.drcrown.dto.MemberVO;
import kr.co.drcrown.dto.MenuVO;
import kr.co.drcrown.exception.InvalidPasswordException;
import kr.co.drcrown.exception.NotFoundIdException;
import kr.co.drcrown.service.MemberService;
import kr.co.drcrown.service.MenuService;

@Controller
public class CommonController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private MemberService memberService;

    @RequestMapping("/main")
    public void main() throws Exception {
    }
    @RequestMapping("/common/reloadPage")
    public void reloadPage() throws Exception {
    }

    @RequestMapping("/indexPage")
    public String indexPage() throws SQLException {
        String url = "redirect:common/index";

        return url;
    }

    @RequestMapping("/index")
    public String index(@RequestParam(defaultValue = "M000000") String mCode, Model model, HttpServletRequest request)
            throws SQLException {
        String url = "common/indexPage";

        if (mCode.equals("M000000")) {
            HttpSession session = request.getSession();
            MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
            switch (loginUser.getMemAuthority()) {
                case "ROLE_ADMIN":
                    mCode = "M080100";
                    break;
                case "ROLE_MANAGER":
                    mCode = "M040100";
                    break;
                case "ROLE_USER":
                    mCode = "M030000";
                    break;
                default:
                    mCode = "M000000";
                    break;
            }
        }

        List<MenuVO> menuList = menuService.getMainMenuList();
        MenuVO menu = menuService.getMenuByMcode(mCode);
        
        String ipAddress=request.getRemoteAddr();
        if(ipAddress.equalsIgnoreCase("0:0:0:0:0:0:0:1")){
            InetAddress inetAddress = null;
            try {
                inetAddress = InetAddress.getLocalHost();
            } catch (UnknownHostException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            ipAddress=inetAddress.getHostAddress();
        }

        model.addAttribute("menuList", menuList);
        model.addAttribute("menu", menu);
        model.addAttribute("ipAddress", ipAddress);

        return url;
    }

    @RequestMapping("/subMenu")
    @ResponseBody
    public ResponseEntity<List<MenuVO>> subMenuToJSON(String mCode) {
        ResponseEntity<List<MenuVO>> entity = null;

        List<MenuVO> subMenu = null;

        try {
            subMenu = menuService.getSubMenuList(mCode);

            entity = new ResponseEntity<List<MenuVO>>(subMenu, HttpStatus.OK);
        } catch (Exception e) {
            entity = new ResponseEntity<List<MenuVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
            e.printStackTrace();
        }
        return entity;
    }

    @GetMapping("/common/loginForm")
    public String loginForm(@RequestParam(defaultValue = "") String error,
            @ModelAttribute("retUrl") String retUrl,
            HttpServletResponse response, HttpServletRequest request) {
        HttpSession session = request.getSession();    
        session.invalidate();
        String url = "common/loginForm";

        if (error != null && error.equals("-1")) {
            response.setStatus(302);
        }

        return url;
    }

    @RequestMapping("/security/accessDenied")
    public void accessDenied() {
    }

    @RequestMapping("/common/loginTimeOut")
    public String loginTimeOut(Model model) throws Exception {

        String url = "security/sessionOut";

        model.addAttribute("message", "세션이 만료되었습니다.\\n다시 로그인 하세요!");
        return url;
    }

    @RequestMapping("/common/loginExpired")
    public String loginExpired(Model model) throws Exception {

        String url = "security/sessionOut";

        model.addAttribute("message", "다른 장치에서 로그인이 되었습니다.\\n로그아웃 합니다!");
        return url;
    }

    @GetMapping("/common/aiLoginForm")
    public String aiLoginForm(CorsRegistry registry) {
        String url = "/common/aiLoginForm";
        registry.addMapping("/**")
        .allowedOrigins("*");
        return url;
    }
    @GetMapping("/api/proxy")
    @ResponseBody
    public String proxyView() {
        String url = "http://192.168.141.29:5005/b";
//        String url = "http://localhost:5012/b";

        RestTemplate restTemplate = new RestTemplate();
        return restTemplate.getForObject(url, String.class);
    }


    @GetMapping("/common/findPwdForm")
    public String findPwdForm() {
        String url = "/common/findPwdForm";
        return url;
    }
    @GetMapping("/common/aiready")
    public String aiForm() {
        String url = "/common/aiready";
        return url;
    }

    @GetMapping("/common/findMemNumForm")
    public String findEmpnumForm() {
        String url = "/common/findMemNumForm";
        return url;
    }

}
