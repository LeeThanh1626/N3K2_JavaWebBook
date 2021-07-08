/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

//import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import dao.UserDAO;
import java.util.Locale;
import javax.servlet.http.Cookie;
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

    @RequestMapping(value = "/XacNhan", method = RequestMethod.GET)
    public String NapTien(HttpServletRequest request, HttpServletResponse response, User us) {
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("userC")) {
                us.setEmail(o.getValue());
            }
            if (o.getName().equals("passC")) {
                us.setPassword(o.getValue());
            }
        }
        userdao.NapTaiKhoan(us);
        return "redirect:/list.html";
    }

    @RequestMapping(value = "/NapTien", method = RequestMethod.GET)
    public ModelAndView ViewNapTien(HttpServletRequest request, HttpServletResponse response) {
        //User u = userdao.Search_User(email);
        ModelAndView us = new ModelAndView("user/NapTien");
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("userC")) {
                us.addObject("email", o.getValue());
            }
            if (o.getName().equals("passC")) {
                us.addObject("password", o.getValue());
            }
        }
        return us;
    }

    @RequestMapping(value = "/TrangCaNhan", method = RequestMethod.GET)
    public ModelAndView TrangCaNhan(HttpServletRequest request, HttpServletResponse response) {
        //User u = userdao.Search_User(email);
        String email = "";
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("userC")) {
                email = o.getValue();
            }
        }
        User u = userdao.Search_User(email);
        ModelAndView us = new ModelAndView("user/TrangCaNhan","u",u);
        return us;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    private String eraseCookie(HttpServletRequest req, HttpServletResponse resp) {
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                cookie.setMaxAge(0);
                resp.addCookie(cookie);
            }
        }
        return "redirect:./";
    }
}
