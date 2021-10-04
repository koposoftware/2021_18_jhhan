package kr.ac.kopo.sms.service;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


public class ExampleSend {
	
	 public static void main(String[] args) {
		    String api_key = "NCSD96QJMM8FLWZF";
		    String api_secret = "M9SHBJTLXHDP2NQBEDGY71PUIQNNML2T";
		    Message coolsms = new Message(api_key, api_secret);

		    // 4 params(to, from, type, text) are mandatory. must be filled
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", "01029950328");	// 수신전화번호
		    params.put("from", "01029950328");	// 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
		    params.put("type", "SMS");
		    params.put("text", "첫번째 보내는 테스트 문자 메시지!");
		    params.put("app_version", "test app 1.2"); // application name and version

		    try {
		      JSONObject obj = (JSONObject) coolsms.send(params);
		      System.out.println(obj.toString());
		    } catch (CoolsmsException e) {
		      System.out.println(e.getMessage());
		      System.out.println(e.getCode());
		    }
		  }

}
