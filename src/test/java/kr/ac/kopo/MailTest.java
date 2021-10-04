package kr.ac.kopo;

import java.io.File;

import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kr.ac.kopo.sms.vo.MailVO;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring/spring-mvc.xml" })
public class MailTest {

	@Autowired
	private JavaMailSenderImpl mailSender;

	@Test
	public void 메일테스트() throws Exception {
		MailVO vo = new MailVO();
		vo.setContents("Play하나 개별 리포트 보내드립니다.");
		vo.setFrom("angki_95@naver.com");
		vo.setTo("hjh847@gmail.com");
		vo.setSubject("PlayHana Report | 플레이하나 리포트");
		
		final MimeMessagePreparator preparator = new MimeMessagePreparator() {
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				helper.setFrom(vo.getFrom());
				helper.setTo(vo.getTo());
				helper.setSubject(vo.getSubject());
				helper.setText(vo.getContents(), true);

				FileSystemResource file = new FileSystemResource(new File("C:/Users/HP/Desktop/IMG/PlayHanaReport.pdf"));
				helper.addAttachment("PlayHanaReport.pdf", file);

			}
		};
		mailSender.send(preparator);
		System.out.println("send!");
	}
}
