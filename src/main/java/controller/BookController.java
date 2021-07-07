/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BookDAO;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Book;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
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

    //test up hình ành
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String Saves(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, FileUploadException, Exception {
        Book b = new Book();
//        cách này lưu đc ảnh nhưng không lưu đc data
        //tạo nơi lưu ảnh
        String folderupload = request.getServletContext().getRealPath("/AllBook");
        Path uploadpath = Paths.get(folderupload);
        //nếu null tạo file tự động
        if (!Files.exists(uploadpath)) {
            Files.createDirectory(uploadpath);
        }
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> multiparts = upload.parseRequest(request);
        for (FileItem item : multiparts) {
            if (!item.isFormField()) {
                // Process form file field (input type="file").
                String image = item.getFieldName();
                if ("pic".equals(image)) {
                    String nametemp = new File(item.getName()).getName();
                    String path = request.getServletContext().getRealPath("/AllBook" + File.separator + nametemp);
                    item.write(new File(path));
                    b.setPic(nametemp);
                }
                else if ("pic2".equals(image)) {
                    String name = new File(item.getName()).getName();
                    String path = request.getServletContext().getRealPath("/AllBook" + File.separator + name );
                    item.write(new File(path));
                    b.setPic2(name);
                }
                else if ("pic3".equals(image)) {
                    String name = new File(item.getName()).getName();
                    String path = request.getServletContext().getRealPath("/AllBook" + File.separator + name);
                    item.write(new File(path));
                    b.setPic3(name);
                }
            } else {
                // Process regular form field (input type="text|radio|checkbox|etc", select, etc).
                String namebook = item.getFieldName();
                if ("id".equals(namebook)) {
                    b.setId(Integer.parseInt(item.getString()));
                }
                if ("name".equals(namebook)) {
                    b.setName(item.getString());
                }
                if ("price".equals(namebook)) {
                    b.setPrice(Float.parseFloat(item.getString()));
                }
                if ("content".equals(namebook)) {
                    b.setContent(item.getString());
                }
            }
        }
        if (b.getId() == 0) {
            dao.Them(b);
        } else {
            dao.CapNhat_NoImage(b);
        }

        return "redirect:/list.html";
    }
}
