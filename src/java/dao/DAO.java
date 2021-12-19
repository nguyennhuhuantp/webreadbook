/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getTop10() {
        List<Product> list = new ArrayList<>();
        String query = "select top 10 * from Product order by Price";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from Account";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account login(String user, String pass) {
        String query = "select * from Account where [Username] = ? and [Password] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String user, String pass) {
        String query = "insert into Account values (?, ?,'0','0','1')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public List<Product> getLatest() {
        List<Product> list = new ArrayList<>();
        String query = "select top 10 * from Product order by [Discount] desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getT3Sell() {
        List<Product> list = new ArrayList<>();
        String query = "select top 3 * from Product order by Discount asc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getT3View() {
        List<Product> list = new ArrayList<>();
        String query = "select top 3 * from Product order by [Price] asc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getT3New() {
        List<Product> list = new ArrayList<>();
        String query = "select top 3 * from Product order by [Product ID] desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product order by Price asc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int countProduct() {
        String query = "select count(*) from product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product order by [Product ID] offset ? rows fetch next 16 rows only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 16);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> paging8Product(int index) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product order by [Product ID] offset ? rows fetch next 8 rows only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 8);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getSingleProduct(String id) {
        String query = "select * from Product where [Product ID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insertAuthor(String authorname, String description) {
        String query = "insert into Author values( ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, authorname);
            ps.setString(2, description);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String accid, String name, String cateid, String auid, String description, String image, String price, String title, int discount, String status) {
        String query = "insert into Product values(?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accid);
            ps.setString(2, name);
            ps.setString(3, cateid);
            ps.setString(4, auid);
            ps.setString(5, description);
            ps.setString(6, image);
            ps.setString(7, price);
            ps.setString(8, title);
            ps.setInt(9, discount);
            ps.setString(10, status);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> getT4Product() {
        List<Product> list = new ArrayList<>();
        String query = "select top 4 * from Product order by Price asc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getT5Product() {
        List<Product> list = new ArrayList<>();
        String query = "select top 5 * from Product order by Price asc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getT6Product() {
        List<Product> list = new ArrayList<>();
        String query = "select top 6 * from Product order by Price desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public Category getCategory(int id) {
        String query = "select * from Category where [Category ID] =" + id;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(rs.getInt(1), rs.getString(2));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductByCate(String cateid) {
        String query = "select top 8 * from Product where [Category ID] = ?";
        List<Product> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cateid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductByID(String id) {
        String query = "select top 8 * from Product where [Product ID] = ?";
        List<Product> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11), rs.getInt(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getNext8Product(int amount) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT *\n"
                + "  FROM product\n"
                + " ORDER BY [Product ID]\n"
                + "OFFSET ? ROWS\n"
                + " FETCH NEXT 4 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, amount);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Author getAuthorByName(String name) {
        String query = "select * from Author where [Author Name] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Author(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Author getAuthorByID(String id) {
        String query = "select * from Author where [Author ID] = " + id;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Author(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Author> getAllAuthor() {
        List<Author> list = new ArrayList<>();
        String query = "select * from Author";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Author(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteProduct(String id) {
        String query = "delete from product where [Product ID] = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String image, String price, String title, String description, String category, int author, String discount, String pid) {
        String query = "update Product \n"
                + "set [Product Name] =N'" + name + "',\n"
                + "[Category ID] = ?,\n"
                + "[Author ID] = ?,\n"
                + "[Description] = N'" + description + "',\n"
                + "[Image] = ?,\n"
                + "Price = ?,\n"
                + "Title = ?,\n"
                + "Discount = ?\n"
                + "where [Product ID] = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, category);
            ps.setInt(2, author);
            ps.setString(3, image);
            ps.setString(4, price);
            ps.setString(5, title);
            ps.setString(6, discount);
            ps.setString(7, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Customer getCustomerByAcID(String accid) {
        String query = "select * from Customer where [Account ID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insertCustomer(String accid) {
        String query = "insert into Customer\n"
                + "values(?,'','','','')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateInforOfCus(String name, String address, String email, String phone, String cusid) {
        String query = "update Customer \n"
                + "set [Customer Name] = ?,\n"
                + "[Address] = ?,\n"
                + "[Email] = ?,\n"
                + "[Phone] = ?\n"
                + "where [Customer ID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, cusid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void changePassword(String pass, String id) {
        String query = "update Account\n"
                + "set [Password] = ?\n"
                + "where [Account ID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pass);
            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> searchByName(String s) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product where [Product Name] like '%" + s + "%'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int countProductByAcc(String accid) {
        String query = "select count(*) from product where [Account ID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> paging8ProductByAcc(int index, int accid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where [Account ID] = ? order by [Product ID] offset ? rows fetch next 8 rows only;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, accid);
            ps.setInt(2, (index - 1) * 8);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public String md5(String s) {
        String result = "";
        MessageDigest digest;
        try {
            digest = MessageDigest.getInstance("MD5");
            digest.update(s.getBytes());
            BigInteger bigInteger = new BigInteger(1, digest.digest());
            result = bigInteger.toString(16);
            while (result.length() < 32) {
                result = "0" + result;
            }
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
        return result;
    }

    public List<Account> getAccountNotAdmin() {
        List<Account> list = new ArrayList<>();
        String query = "select a.* from Account a join Customer c on a.[Account ID] = c.[Account ID] order by a.[Account ID]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void editAccount(String id, String isSell, String status) {
        String query = "Update Account set isSell = ?, Status = ? where [Account ID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, isSell);
            ps.setString(3, id);
            ps.setString(2, status);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getAccountByID(String id) {
        String query = "select * from Account where [Account ID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insertCom(int accid, int pid, String comment) {
        String query = "insert into Comment values(?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, accid);
            ps.setInt(2, pid);
            ps.setString(3, comment);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Comment> getAllCommentByPID(int pid) {
        String query = "select c.[Comment ID],a.Username,c.[Product ID],c.Comment\n"
                + "from Comment c, Account a\n"
                + "where c.[Account ID] = a.[Account ID] and c.[Product ID] = ?\n"
                + "order by c.[Comment ID] desc";
        List<Comment> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(rs.getInt(1), rs.getInt(3), rs.getString(4), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Chapter> getChapter(int pid) {
        String query = "select * from [Novel_Content] where [ProductID] = ?";
        List<Chapter> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Chapter(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Chapter getChapterbyID(int id){
        String query = "select * from [Novel_Content] where [ID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Chapter(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
        DAO dao = new DAO();
        String s = "kimitohl1201";
        System.out.println(dao.md5(s));
    }
}
