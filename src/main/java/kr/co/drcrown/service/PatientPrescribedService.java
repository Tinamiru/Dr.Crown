package kr.co.drcrown.service;

import kr.co.drcrown.command.PatientPrescribedRegistListCommand;

public interface PatientPrescribedService {

    void registCureDetailForPrescribed(PatientPrescribedRegistListCommand pprc) throws Exception;

}
