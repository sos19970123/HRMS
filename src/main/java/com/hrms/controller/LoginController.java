package com.hrms.controller;

import com.hrms.bean.Employee;
import com.hrms.service.DepartmentService;
import com.hrms.service.DepartmentServiceImpl;
import com.hrms.service.EmployeeService;
import com.hrms.service.EmployeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.PanelUI;
import java.util.UUID;

@Controller
public class LoginController {

    @Autowired
    @Qualifier("employeeServiceImpl")
    EmployeeServiceImpl employeeService;

    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam(value = "token",required = false) String pageToken){
        if ("0".equals(pageToken)) {
            String serverToken = "1";
            serverToken = (String) session.getAttribute("token");
            System.out.println("login");
            if (serverToken != null && !serverToken.equals(pageToken)){
                return "login";
            }else {
                return "main";
            }
        }else {
            return "login";
        }
    }

    @RequestMapping("/loginPage")
    public ModelAndView loginPage(@RequestParam("username") String name,
                                  @RequestParam("password") String passWord,
                                  @RequestParam("token") String pageToken,
                ModelAndView mv,
                HttpSession session,
                HttpServletResponse response){
            //简单起见，暂时使用email替代密码
            Employee emp = employeeService.getEmpByName(name);
            if (emp != null){
                if (passWord.equals(emp.getEmpEmail())){
                    mv.addObject("empName",emp.getEmpName());
                    mv.setViewName("main");

                    //记忆登录功能
                    String token = UUID.randomUUID().toString();
                    System.out.println(token);
                    session.setAttribute("token",token);
                    session.setMaxInactiveInterval(60*60*24);

                    Cookie cookie = new Cookie("token",token);
                    cookie.setMaxAge(60*60*24);
                    response.addCookie(cookie);

                }else {
                    mv.setViewName("error");
                    mv.addObject("msg","密码错误，请重试");
                }
            }else {
                mv.setViewName("error");
                mv.addObject("msg","该用户不存在");
            }
        return mv;
    }
}
