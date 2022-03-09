package kr.co.test;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	public MainController() {
		System.out.println("MainController 객체생성");
	}
	
	@RequestMapping("index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping("index2.do")
	public String index2() {
		return "index2";
	}
	
	//회원가입
	@RequestMapping(value = "join.do", method = RequestMethod.POST)
	public ModelAndView join(MemDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("memInfo");
		try {
			String resource="config/jdbc.xml";
			InputStream is=Resources.getResourceAsStream(resource);	//파일 형태로 만들기.
			SqlSessionFactory ssf=new SqlSessionFactoryBuilder().build(is);
			System.out.println("--DB연결 성공!!");
			SqlSession sql=ssf.openSession(true);
			System.out.println(dto.toString());
			
			sql.insert("mem.insertMem",dto);
			
			MemDTO list=sql.selectOne("mem.selectMem",dto.getId());
			mav.addObject("dto", list);
			
		} catch (Exception e) {
			System.out.println("회원가입 실패: "+e);
		}	
		return mav;
	}

}
