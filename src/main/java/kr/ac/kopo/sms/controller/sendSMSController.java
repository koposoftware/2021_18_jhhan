package kr.ac.kopo.sms.controller;

import java.io.File;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.sms.service.certificationService;
import kr.ac.kopo.sms.vo.MailVO;

@CrossOrigin({"*"})
@Controller
public class sendSMSController {
	
	@Autowired
	certificationService certiService;
	
	
	@ResponseBody
	@GetMapping("/send/sms/{phoneNumber}")
	public String sendSMS(@PathVariable("phoneNumber") String phoneNumber) {
		System.out.println("컨트롤러");
		System.out.println(phoneNumber);
		
		Random rand = new Random();
		String numStr ="";
		for(int i=0; i<4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr+=ran;
			
		}
		
		System.out.println("수신자번호: " + phoneNumber);
		System.out.println("인증번호: " + numStr);
		
	
		certiService.certifiedPhoneNumber(phoneNumber,numStr);
		
		System.out.println("여기까지 넘어오니?");
	
	
		return numStr;
	}
	
	//이메일 전송
	@Autowired
	private JavaMailSenderImpl mailSender;

	@PostMapping("admin/email")
	public String sendMail(final MailVO vo) {
		final MimeMessagePreparator preparator = new MimeMessagePreparator() {
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				helper.setFrom("angki_95@naver.com");
				helper.setTo(vo.getTo());
				helper.setSubject(vo.getSubject());
				helper.setText(vo.getContents(), true);
				System.out.println("mail: "+ helper);
				
				FileSystemResource file = new FileSystemResource(new File("C:/Users/HP/Desktop/IMG/[PlayHana]나의 금융성과리포트(한주희).pdf"));
				helper.addAttachment("[PlayHana]나의 금융성과리프토(한주희).pdf", file);

			}
		};
		mailSender.send(preparator);
		return "admin/email_check";
	}
	
	@GetMapping("admin/email_check")
	public String emailSend() {
		return "admin/email_check";
	}
	
	

	
}

	/*
	 @PostMapping("/CheckMail") // AJAX와 URL을 매핑시켜줌 
	@ResponseBody  //AJAX후 값을 리턴하기위해 작성

		public String SendMail(String mail) {
			Random random=new Random();  //난수 생성을 위한 랜덤 클래스
			String key="";  //인증번호 

			SimpleMailMessage message = new SimpleMailMessage();
			message.setTo(mail); //스크립트에서 보낸 메일을 받을 사용자 이메일 주소 
			//입력 키를 위한 코드
			for(int i =0; i<3;i++) {
				int index=random.nextInt(25)+65; //A~Z까지 랜덤 알파벳 생성
				key+=(char)index;
			}
			int numIndex=random.nextInt(9999)+1000; //4자리 랜덤 정수를 생성
			key+=numIndex;
			message.setSubject("인증번호 입력을 위한 메일 전송");
			message.setText("인증 번호 : "+key);
			JavaMailSender.send(message);
	        return key;
		}
}
*/
	
	
	
	
