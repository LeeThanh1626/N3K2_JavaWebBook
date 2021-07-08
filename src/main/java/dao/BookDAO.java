/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import model.Book;
import model.Cart;
import model.User;
import dao.UserDAO;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell 7450
 */
public class BookDAO {

    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
    
    //get danh sách book
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
        String sql = String.format("update allbook set name='%s' ,price='%f', content='%s' where id ='%d' ",
               b.getName(), b.getPrice(), b.getContent(),b.getId() );
        return template.update(sql);
    }

    public int Xoa( String id) {
        String sql = "delete from allbook where id = ?";
        return template.update(sql, id);
    }

    public Book DetailBook(int id) {
        String sql = "select * from allbook where id = ?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Book.class));
    }

    public List<Book> Search_Book(String name) {
        String sql = "select * from allbook where name like ?";
        return template.query(sql, new Object[]{"%" + name + "%"}, new BeanPropertyRowMapper<>(Book.class));
    }
    
    // gio hang
    public void ThemCart(Cart cart) {
//        Cart id = searchCart(cart.getId());
//        if (id.getId() != 0) {
//            int sl = id.getAmount() + 1;
//            UpdateCart(sl, id.getId());
//        } else {
        String sql = String.format("insert into cart (email,name, pic, price, amount) values('%s','%s','%s','%f','%d')",
                cart.getEmail(), cart.getName(), cart.getPic(), cart.getPrice(), cart.getAmount());
        template.update(sql);
//        }

    }

    public List<Cart> AllCart(String email) {
        String sql = "select * from cart where email=?";
        return template.query(sql, new Object[]{email}, new BeanPropertyRowMapper<>(Cart.class));
    }

    public Cart searchCart(int id) {
        String sql = "select * from cart where id=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Cart.class));
    }

    public int UpdateCart(int sl, int id) {
        if (sl == 0) {
            return Delete(id);
        } else {
            String sub = "update cart set amount=? where id=?";
            return template.update(sub, sl, id);
        }

    }

    //Cập nhât giỏ hàng khi tăng giảm số lượng
    public int Sub(int id) {
        Cart c = searchCart(id);
        int sl = c.getAmount() - 1;
        return UpdateCart(sl, id);
    }

    public int Add(int id) {
        Cart c = searchCart(id);
        int sl = c.getAmount() + 1;
        return UpdateCart(sl, id);
    }

    public int Delete(int id) {
        String sql = "delete from cart where id = ?";
        return template.update(sql, id);
    }

    public User Search_User(String email) {
        String sql = "select * from users where email like ?";
        return template.queryForObject(sql, new Object[]{"%" + email + "%"}, new BeanPropertyRowMapper<>(User.class));
    }

    public void Buy(float totalmoney, String email) {
        User u = Search_User(email);
        if (u.getId() != 0) {
            float newmoney = (float) (u.getMoney() - totalmoney);
            if (newmoney < 0) {
                JFrame frame = new JFrame("Swing Tester");
                JOptionPane.showMessageDialog(frame,
                        "Tài Khoản Không Đủ", "",
                        JOptionPane.INFORMATION_MESSAGE);
               ModelAndView v = new ModelAndView("book/listSach");
            } else {
                String sub = "update users set money=? where email=?";
                template.update(sub, newmoney, email);
                Dele(email);
            }

        }
    }

    public void Dele(String email) {
        String sql = "delete from cart where email = ?";
        template.update(sql, email);
    }
}
