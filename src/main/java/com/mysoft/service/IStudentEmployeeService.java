package com.mysoft.service;

import java.util.List;
import java.util.Map;

import com.mysoft.pojo.Employee;

public interface IStudentEmployeeService {
	//List<Map<String,Object>>findStudentEmployeeInfo(/*int page,int pageSize*/);
	
	/*@@@
	 * List<Map<String,Object>>findNormalEmployeeByEmpno(String empno);
	List<Map<String,Object>>findDeptList();
	List<Map<String,Object>>findJobList();
	List<Map<String,Object>>findSexList();
	List<Map<String,Object>>findDiplayList();*/
	
	//List<Map<String,Object>>findNormalEmployeeSexAndEduhitory();
	List<Map<String,Object>>findStudentEmployeeInfo(int page,int pageSize,String empno,String personid,String name);
	boolean insertStudentEmplpyeeInfo(Employee employee);
	boolean entryStudentEmpInfo(Employee employee);
	boolean deleteStudentEmployeeByEmpno(String empno);
	List<Map<String,Object>>findNormalSalaryInfo(int page,int pageSize,String name,String empno);
	int getNormalSalaryCount();
	int getStudentEmployeeCount();
	boolean updateStudentEmployeeSalary(String empno,String namecn,String base,String job,String traffic,String communicate,String ednownent,String medical,String unemployment,String pafhc);
	boolean updateStudentEmployeeInfoByEmpno(String empno,String namecn,String sex,String school,String personid,String tel,String qq,String level,String email);
	/*int getStudentEmployeeCount();*/

}
