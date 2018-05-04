package ncontroller;

import java.util.ArrayList;
import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.Empdao;
import vo.Emp;

@Controller
public class IndexController {

	@Autowired
	private SqlSession sqlsession;

	@RequestMapping("/index.htm")
	public String index() {
		// return "index.jsp"; 기존방법 (리졸버 없이)
		System.out.println("타요");
		return "home.index"; // Tiles 적용하기 <definition name="home.*"
	}

	@RequestMapping("/list.htm")
	public String allEmpList(Model model) {
		List<Emp> list = null;

		try {
			System.out.println(sqlsession.toString());
			Empdao empdao = sqlsession.getMapper(Empdao.class);
			list = empdao.getEmpList();
			model.addAttribute("list", list);
		} catch (Exception e) {
			System.out.println("exception");
			e.printStackTrace();
		}
		
		
		return "home.emplist";
	}

	@RequestMapping("selectbyempno.htm")
	public String selectByEmpno(String src_empno, Model model) {
		System.out.println("src "+src_empno);
		List<Emp> list = null;
		Emp emp = null;

		
		try {
			Empdao empdao = sqlsession.getMapper(Empdao.class);
			emp = empdao.emp_search(src_empno);
		} catch (Exception e) {

		}

		if(emp==null) {
			System.out.println("여기");
			return "redirect:list.htm";
		}else {
			list = new ArrayList<Emp>();
			list.add(emp);			
			model.addAttribute("list", list);
			return "home.emplist";
		}
	}
	
	@RequestMapping(value= "empedit.htm", method=RequestMethod.GET)
	public String Edit(String empno, Model model) {
		Emp empedit = null;
				
		try {
			Empdao empdao = sqlsession.getMapper(Empdao.class);
			empedit = empdao.emp_search(empno);
			model.addAttribute("empedit",empedit);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "home.empedit";
	}
	
	@RequestMapping(value= "empedit.htm", method=RequestMethod.POST)
	public String Edit(Emp e) {
		try {
			Empdao empdao = sqlsession.getMapper(Empdao.class);
			empdao.updateemp(e);
		} catch (Exception ex) {
			// TODO: handle exception
		}
		
		return "redirect:list.htm";
	}
	
	@RequestMapping("empdelete.htm")
	public String delete(String empno) {
		try {
			Empdao empdao = sqlsession.getMapper(Empdao.class);
			empdao.deleteEmp(empno);
		} catch (Exception ex) {
			// TODO: handle exception
		}
		
		
		return "redirect:list.htm";
	}
	
	@RequestMapping("empinsert.htm")
	public String insert(Emp e) {
		System.out.println(e.toString());
		try {
			Empdao empdao = sqlsession.getMapper(Empdao.class);
			empdao.insertEmp(e);
		} catch (Exception ex) {
			// TODO: handle exception
		}
		return "redirect:list.htm";
	}
		

}
