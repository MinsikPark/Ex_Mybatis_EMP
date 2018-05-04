package dao;

import java.util.ArrayList;

import vo.Emp;

public interface Empdao {
	//public int deleteEmp();
	//public int insertEmp();
	public Emp emp_search(String src_empno);
	//public ArrayList<String> get_deptnames();
	//public ArrayList<Emp> dept_search();
	public ArrayList<Emp> getEmpList();
	//public int updateemp(); 
}
