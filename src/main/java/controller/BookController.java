/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BookDAO;
import java.util.List;
import model.Book;
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

//    private static final Logger logger = Logger.getLogger(BookController.class);
    @Autowired
    BookDAO dao;

    @RequestMapping(value = "book/list", method = RequestMethod.GET)
    public ModelAndView LayDanhSach() {
//        logger.info("Xu ly lay danh sach nhan vien");
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

    @RequestMapping(value = "/book/listSearch", produces = "text/plain;charset=UTF-8")
    public ModelAndView Search_Book(@RequestParam("name") String name) {
        Book b = dao.DetailBook(name);
        return new ModelAndView("book/listSearch", "b", b);
    }

    @RequestMapping(value = "/book/cart", produces = "text/plain;charset=UTF-8")
    public ModelAndView Book_Cart(@RequestParam("name") String name) {
        Book b = dao.DetailBook(name);
        return new ModelAndView("book/cart", "b", b);
    }

    @RequestMapping(value = "/book/save", method = RequestMethod.POST)
    public String Save_Book(Book b) {
        if (b.getId() == 0) {
            dao.Them_NoImage(b);
            //logger.info("Them moi sach");            
        } else {
            //logger.info("Cap nhat sach");
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
        return new ModelAndView("add");
    }
}
