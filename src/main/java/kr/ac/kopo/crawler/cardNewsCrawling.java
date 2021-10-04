package kr.ac.kopo.crawler;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class cardNewsCrawling {
	
	
	    public static void main(String[] args) throws  IOException {
	        
	        Document doc = Jsoup.connect("http://www.bok.or.kr/portal/bbs/B0000273/list.do?menuNo=201037").get();
	        String folder = doc.title();
	        Element element = doc.select("span[class=ratioObject bg100p 2]").get(0);
	        Elements img = element.select("img");
	        int page = 0;
	        for (Element e : img) {
	            String url = e.getElementsByAttribute("src").attr("src");
	            
	            URL imgUrl = new URL(url);
	            System.out.println(url);
	            BufferedImage jpg = ImageIO.read(imgUrl);
	            File file = new File("C:/Users/HP/Desktop/IMG"+folder+"\\"+page+".jpg");
	            ImageIO.write(jpg, "jpg", file);
	            page+=1;
	        }
	        System.out.println("크롤링 완료");
	    }
	    
	    

}
