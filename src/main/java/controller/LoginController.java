/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDAO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
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
 * @author Dell 7450
 */
@Controller
public class LoginController {

    @Autowired
    UserDAO userdao;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("user/login");
        mav.addObject("login", new Login());
        return mav;
    }

    @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
    public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
            @ModelAttribute("login") Login login) {
        ModelAndView email = null;

        User user = userdao.validateUser(login);

        if (null != user) {
            email = new ModelAndView("user/welcome");
            email.addObject("email", user.getEmail());
            email.addObject("password", user.getPassword());
        } else {
            email = new ModelAndView("user/login");
            JFrame frame = new JFrame("Swing Tester");
            JOptionPane.showMessageDialog(frame,
                        "Email or password error","",
                        JOptionPane.ERROR_MESSAGE);
        }
        return email;
    }
}
