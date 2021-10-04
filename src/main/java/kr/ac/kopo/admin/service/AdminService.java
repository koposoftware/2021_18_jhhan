package kr.ac.kopo.admin.service;

import java.util.List;

import kr.ac.kopo.admin.vo.AdminVO;
import kr.ac.kopo.admin.vo.InfoVO;

public interface AdminService {

	AdminVO login(AdminVO admin);
	List<InfoVO> membinfo();
	AdminVO countMemer();
	AdminVO countSchool();
	AdminVO bankCount();
	AdminVO stockCount();
	AdminVO countMbti();
	
	List<InfoVO> getinfo(InfoVO info);
}
