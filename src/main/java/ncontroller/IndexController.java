package ncontroller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.Empdao;
import vo.Emp;

@Controller
public class IndexController {
	
//		@Autowired
//		private SqlSession sqlsession;
		
		@RequestMapping("/index.htm")
		public String index() {
			//return "index.jsp"; 기존방법 (리졸버 없이)
			System.out.println("타요");
			return "home.index"; //Tiles 적용하기 <definition name="home.*"
		}
		
		@RequestMapping("/list.htm")
		public String allEmpList(Model model) {
			List<Emp> list = null;
			
			try {
			/*	Empdao empdao =sqlsession.getMapper(Empdao.class);
				list = empdao.getEmpList();
				model.addAttribute("list", list);*/
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			System.out.println("list.htm");
			return "home.emplist";
		}
		
		@RequestMapping()
		public String selectByEmpno(String empno) {
			return "home.emplist";
		}
		
}
