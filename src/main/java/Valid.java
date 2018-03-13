import javax.servlet.http.HttpSession;
        import java.sql.Connection;
        import java.sql.DriverManager;
        import java.sql.PreparedStatement;
        import java.sql.ResultSet;

public class Valid {
    public static boolean checkUser(String username,String pwd)
    {
        boolean st =false;
        try{


            Class.forName("com.mysql.jdbc.Driver");



            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jspuser","root","ttn");
            PreparedStatement ps =con.prepareStatement("select * from user   where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, pwd);
            ResultSet rs =ps.executeQuery();
            st = rs.next();

        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return st;
    }

}