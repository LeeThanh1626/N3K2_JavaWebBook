/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import model.Login;
import org.springframework.jdbc.core.JdbcTemplate;
import model.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell 7450
 */
public class UserDAO {

    JdbcTemplate jdbctemplate;

    public void setJdbctemplate(JdbcTemplate jdbctemplate) {
        this.jdbctemplate = jdbctemplate;
    }


    public User Search_User(String email) {
        String sql = "select * from users where email = ?";
        return jdbctemplate.queryForObject(sql, new Object[]{email}, new BeanPropertyRowMapper<>(User.class));    
    }
    
    public void NapTaiKhoan(User user) {
        User u = Search_User(user.getEmail());
        if (u.getId()!=0) {
            float newmoney = (float) (u.getMoney() + user.getMoney());
            String sql = String.format("UPDATE users set money='%f' where email='%s' and password = '%s'",newmoney, user.getEmail(),user.getPassword());
            jdbctemplate.update(sql);
        }
    }
}
