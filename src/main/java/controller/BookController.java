/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BookDAO;
import dao.UserDAO;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Book;
import model.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell 7450
 */
@Controller
public class BookController {

    @Autowired
    BookDAO dao;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView LayDanhSach() {
        List<Book> lst = dao.AllBook();
        ModelAndView us = new ModelAndView("book/listSach", "list", lst);
        return us;
    }

    @RequestMapping(value = "/detail", produces = "text/plain;charset=UTF-8")
    public ModelAndView Detail(@RequestParam("id") int id) {
        Book b = dao.DetailBook(id);
        return new ModelAndView("book/detail", "b", b);
    }

    @RequestMapping(value = "/edit", produces = "text/plain;charset=UTF-8")
    public ModelAndView CapNhat_Book(@RequestParam("id") int id) {
        Book b = dao.DetailBook(id);
        return new ModelAndView("book/edit", "b", b);
    }

    @RequestMapping(value = "/listSearch", method = RequestMethod.GET)
    public ModelAndView Search_Book(@RequestParam("name") String name) {
        List<Book> lst = dao.Search_Book(name);
        return new ModelAndView("book/listSach", "list", lst);
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String Save_Book(Book b) {
        if (b.getId() == 0) {
            dao.Them_NoImage(b);
        } else {
            dao.CapNhat_NoImage(b);
        }
        return "redirect:/list.html";
    }

    @RequestMapping(value = "/delete")
    public String Xoa(@RequestParam("id") String id) {
        dao.Xoa(id);
        return "redirect:/list.html";
    }

    @RequestMapping(value = "/add")
    public ModelAndView Them_ui() {
        return new ModelAndView("book/add");
    }

    //Xu Ly gio hang
}
