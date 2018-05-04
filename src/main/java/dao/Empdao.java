package dao;

import java.util.ArrayList;

import vo.Emp;

public interface Empdao {
	public int deleteEmp(String empno);
	public int insertEmp(Emp e);
	public Emp emp_search(String src_empno);
	//public ArrayList<String> get_deptnames();
	//public ArrayList<Emp> dept_search();
	public ArrayList<Emp> getEmpList();
	public int updateemp(Emp e); 
}
