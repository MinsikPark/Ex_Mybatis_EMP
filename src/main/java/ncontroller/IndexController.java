package ncontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
		@RequestMapping("/index.htm")
		public String index() {
			//return "index.jsp"; 기존방법 (리졸버 없이)
			System.out.println("타요");
			return "home.index"; //Tiles 적용하기 <definition name="home.*"
		}
		
		@RequestMapping("/list.htm")
		public String allEmpList(String empno, Model model) {
			System.out.println("emp : " + empno);
			System.out.println("list.htm");
			return "home.emplist";
		}
		
		@RequestMapping()
		public String selectByEmpno(String empno) {
			return "home.emplist";
		}
		
}
