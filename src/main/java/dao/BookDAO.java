/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import model.Book;
import model.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Dell 7450
 */
public class BookDAO {

    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public List<Book> AllBook() {
        return template.query("select * from allbook", new RowMapper<Book>() {
            public Book mapRow(ResultSet rs, int row) throws SQLException {
                Book b = new Book();
                b.setId(rs.getInt(1));
                b.setName(rs.getNString(2));
                b.setPrice(rs.getFloat(3));
                b.setPic(rs.getNString(4));
                b.setPic2(rs.getNString(5));
                b.setPic3(rs.getNString(6));
                b.setContent(rs.getNString(7));
                b.setClassify(rs.getNString(8));
                return b;
            }
        });
    }
        
    public void Them(Book b) {
        String sql = String.format("insert into allbook (name, price, pic, pic2, pic3, content, classify) values('%s','%f','%s','%s','%s','%s','%s')",
                b.getName(), b.getPrice(), b.getPic(), b.getPic2(), b.getPic3(), b.getContent(), b.getClassify());
        template.update(sql);
    }

    public void Them_NoImage(Book b) {
        String sql = String.format("insert into allbook (name, price, content, classify) values('%s','%f','%s','%s')",
                b.getName(), b.getPrice(), b.getContent(), b.getClassify());
        template.update(sql);
    }
    
    public int CapNhat(Book b) {
        String sql = String.format("update allbook set price='%f' ,pic='%s', pic2='%s', pic3='%s', content='%s',classify='%s' where name=%s",
                b.getPrice(), b.getPic(), b.getPic2(), b.getPic3(), b.getContent(), b.getClassify(), b.getName());
        return template.update(sql);
    }
 
    public int CapNhat_NoImage(Book b) {
        String sql = String.format("update allbook set price='%f', content='%s' where name='%s'",
                b.getPrice(), b.getContent(), b.getName());
        return template.update(sql);
    }
    
    public int Xoa(String name) {
        String sql = "delete from allbook where name = ?";
        return template.update(sql, name);
    }

    public Book DetailBook(String name) {
        String sql = "select * from allbook where name like ?";
        return template.queryForObject(sql, new Object[]{"%"+name+"%"}, new BeanPropertyRowMapper<>(Book.class));
    }
    
    public void register(User user) {

        String sql =String.format("insert into users(email, password) values('%s','%s')",user.getEmail(), user.getPassword());
        template.update(sql);
    }
}
