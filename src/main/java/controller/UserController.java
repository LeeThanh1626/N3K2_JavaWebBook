/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDAO;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Book;
import model.Login;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell 7450
 */
@Controller
public class UserController {

    @Autowired
    UserDAO userdao;

    @RequestMapping(value = "/XacNhan", method = RequestMethod.POST)
    public String NapTien(User us) {
        userdao.NapTaiKhoan(us);
        return "redirect:/book/list.html";   
    }
    
    @RequestMapping(value = "/NapTien", method = RequestMethod.GET)
    public ModelAndView ViewNapTien(@RequestParam("email") String email) {
        User u = userdao.Search_User(email);
        ModelAndView us = new ModelAndView("user/NapTien","u",u);
        return us;
    }
}
