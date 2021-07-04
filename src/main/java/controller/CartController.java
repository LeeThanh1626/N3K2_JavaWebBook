/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BookDAO;
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
public class CartController {

    @Autowired
    BookDAO dao;

    //thêm và xử lý giỏ hàng
    @RequestMapping(value = "/addcart", method = RequestMethod.GET)
    public String AddCart(HttpServletRequest request, HttpServletResponse response, @RequestParam("id") int id) {
        Book b = dao.DetailBook(id);
        Cart us = new Cart();
        us.setName(b.getName());
        us.setPic(b.getPic());
        us.setPrice(b.getPrice());
        us.setAmount(1);
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("userC")) {
                us.setEmail(o.getValue());
            }
        }
        dao.ThemCart(us);
        return "redirect:/list.html";
    }

    @RequestMapping(value = "/listcart")
    public ModelAndView LayCart(HttpServletRequest request, HttpServletResponse response) {
        String email = "";
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("userC")) {
                email = o.getValue();
            }
        }
        List<Cart> lst = dao.AllCart(email);
        ModelAndView us = new ModelAndView("book/cart", "list", lst);
        float total = 0;
        for (Cart i : lst) {
            float price = i.getPrice();
            int amount = i.getAmount();  
            total += price * amount;
            us.addObject("money", total);
            us.addObject("email",i.getEmail());
        }
        return us;
    }

    //Xử lý button
    @RequestMapping(value = "/subbookcart")
    public ModelAndView Sub(@RequestParam("id") int id) {
        int cart = dao.Sub(id);
        return new ModelAndView("book/cart");
    }

    @RequestMapping(value = "/addbookcart")
    public ModelAndView Add(@RequestParam("id") int id) {
        int cart = dao.Add(id);
        return new ModelAndView("book/cart");
    }

    @RequestMapping(value = "/deletebookcart")
    public ModelAndView Detele(@RequestParam("id") int id) {
        int cart = dao.Delete(id);
        return new ModelAndView("book/cart");
    }
    
    @RequestMapping(value = "/buy")
    public ModelAndView Buy(@RequestParam("totalmoney") float totalmoney,@RequestParam("email") String email ) {
        dao.Buy(totalmoney,email);
        return new ModelAndView("book/listSach");
    }
}
