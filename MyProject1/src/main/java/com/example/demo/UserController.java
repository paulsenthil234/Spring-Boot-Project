package com.example.demo;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import jakarta.servlet.http.HttpSession;
@Controller
public class UserController {
	@Autowired// wiring/connect the UserDao class
	UserDAO userdao;
	@Autowired
	ToDoRepository todo;
	int loginuser=0;
	@RequestMapping("signup") 
	// @ResponseBody
	public String signuppage()
	{
	return "sign.jsp";
	}
	@PostMapping("signupsubmit")//store the signup values in
	//@ResponseBody
	public String submitsignup(User user)
	{
	userdao.save(user); //store the value in database
	return "redirect:/login";
	}
	@RequestMapping("login")
	public String loginpage()
	{
	return "index.jsp";
	}
	@RequestMapping("loginsubmit") //Get the value from the Database
	//@ResponseBody
	public String userlogin(User user,HttpSession session)
	{
	String email = user.getEmail();//login page email
	String password = user.getPassword();
	Iterable<User> userlist =
	userdao.findAll();//name,pwd,email,cnfrm pwd
	for (User List : userlist) {
	if(email.equals( List.getEmail()) & password.equals(
	List.getPassword()))//database email
	{
	loginuser = List.getId();
	}
	// l = l.concat(List.getEmail())+"-"+email;
	}
	//return userdao.findByEmail(email);
	if(loginuser != 0)
	{
	//user.setId(l);
	session.setAttribute("UserId",loginuser); //set session
	return "redirect:/task";
	}else {
	session.setAttribute("Error","Invalid Username,Password");
	return "redirect:/login";
	}
	//return userlist;
	}
	@RequestMapping("task")
	public String userpage(HttpSession session)
	{
	//if(session!=null) {
	int userid=(Integer) session.getAttribute("UserId");
	// if(userid != 0) {
	Iterable<ToDoTask> todolist= todo.findAll();
	String mytasklistviewtable="";
	//String testing="";
	int count=1;
	for(ToDoTask list : todolist) {
	if((Integer) list.getUserId()==userid) {
	// testing=testing+list.getUserId()+"Session User"+userid+"<br>";
	mytasklistviewtable=mytasklistviewtable+"<tr><td>"+count+"</td><td>"+list
	.getTask()+"</td><td>"+list.getStatus()+"</td></tr>";
	count++;
	}
	}
	//session.setAttribute("test",testing);
	session.setAttribute("todolist",mytasklistviewtable);
	return "ToDoList.jsp";
	}
	//else {
	//return "redirect:/login";
	//}
	//}
	@PostMapping("tasksubmit")
	// @ResponseBody
	public String submitToDo(ToDoTask taskpage, HttpSession
	session)
	{
	taskpage.setUserId((Integer)
	session.getAttribute("UserId"));
	todo.save(taskpage);
	int userid=(Integer) session.getAttribute("UserId");
	Iterable<ToDoTask> todolist= todo.findAll();
	String mytasklistviewtable="";
	//String testing="";
	int count=1;
	for(ToDoTask list : todolist) {
	if((Integer) list.getUserId()==userid) {
	// testing=testing+list.getUserId()+"Session User"+userid+"<br>";
	mytasklistviewtable=mytasklistviewtable+"<tr><td>"+count+"</td><td>"+list
	.getTask()+"</td><td>"+list.getStatus()+"</td></tr>";
	count++;
	}
	}
	//session.setAttribute("test",testing);
	session.setAttribute("todolist",mytasklistviewtable);
	return "redirect:/task";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
	//if(session.getSession(false))
	session.invalidate();
	return "redirect:/login";
	}
	}
