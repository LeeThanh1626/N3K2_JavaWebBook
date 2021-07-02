/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BookDAO;
import dao.UserDAO;
import java.util.List;
import model.Book;
import model.Login;
import model.User;
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
    UserDAO userdao;
    @RequestMapping(value = "book/list", method = RequestMethod.GET)
    public ModelAndView LayDanhSach() {
        List<Book> lst = dao.AllBook();
        return new ModelAndView("book/listSach", "list", lst);
    }

    @RequestMapping(value = "/book/detail", produces = "text/plain;charset=UTF-8")
    public ModelAndView Detail(@RequestParam("name") String name) {
        Book b = dao.DetailBook(name);
        return new ModelAndView("book/detail", "b", b);
    }

    @RequestMapping(value = "/book/edit", produces = "text/plain;charset=UTF-8")
    public ModelAndView CapNhat_Book(@RequestParam("name") String name) {
        Book b = dao.DetailBook(name);
        return new ModelAndView("book/edit", "b", b);
    }

    @RequestMapping(value = "book/listSearch", method = RequestMethod.GET)
    public ModelAndView Search_Book(@RequestParam("name") String name) {
        List<Book> lst = dao.Search_Book(name);
        return new ModelAndView("book/listSach", "list", lst);
    }
    
    
    //thêm và xử lý giỏ hàng
    @RequestMapping(value = "book/addcart", method = RequestMethod.GET)
    public String AddCart(@RequestParam("name") String name,@RequestParam("emal") String email) {    
        return "redirect:/book/cart.html";
    }

    @RequestMapping(value = "book/cart")
    public ModelAndView Book_Cart() {
        List<Book> lst = dao.allCart();
        return new ModelAndView("book/cart", "list", lst);
    }

    @RequestMapping(value = "/book/save", method = RequestMethod.POST)
    public String Save_Book(Book b) {
        if (b.getId() == 0) {
            dao.Them_NoImage(b);
        } else {
            dao.CapNhat_NoImage(b);
        }
        return "redirect:/book/listsach.html";
    }

    @RequestMapping(value = "/book/delete")
    public String Xoa(@RequestParam("name") String name) {
        dao.Xoa(name);
        return "redirect:/book/listsach.html";
    }

    @RequestMapping(value = "/book/add")
    public ModelAndView Them_ui() {
//        logger.info("Hien thi giao dien them nhan vien moi");
        return new ModelAndView("book/add");
    }
}
