/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDAO;
import java.io.IOException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import model.Book;
import model.Login;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author DELL
 */
@Controller
public class LoginController {

    @Autowired
    UserDAO userdao;

    //Return view login
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("user/login");
        mav.addObject("login", new Login());
        return mav;
    }

    //Confirm account
    @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
    public String loginProcess(HttpServletRequest request, HttpServletResponse response,
            @ModelAttribute("login") Login login) throws IOException {
        ModelAndView mav = null;
        User user = userdao.validateUser(login);
        if (null != user) {
            mav = new ModelAndView("./book/header");
            mav.addObject("email", user.getEmail());
            mav.addObject("password", user.getPassword());
            //lưu cookie
            Cookie uc = new Cookie("userC", user.getEmail());
            Cookie pc = new Cookie("passC", user.getPassword());
            uc.setMaxAge(60 * 60 * 24 * 360);
            pc.setMaxAge(60 * 60 * 24 * 360);
            //lưu cookie lên chrome
            response.addCookie(uc);
            response.addCookie(pc);
            return "redirect:/list.html";
        } 
            JOptionPane.showMessageDialog(null, "Email or password error");
            return "redirect:/login.html";
    }
}
