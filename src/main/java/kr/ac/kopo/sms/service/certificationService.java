package kr.ac.kopo.sms.service;

import kr.ac.kopo.sms.vo.MailVO;

public interface certificationService {

	void certifiedPhoneNumber(String phoneNumber, String cerNum); 
	
}
