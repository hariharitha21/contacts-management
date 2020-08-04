<html>
  <head>
    <title>removecontact</title>
    <h1>REMOVE CONTACT</h1>
  </head>
  <body>
    <form method="post" >
      <%@ page import="com.lxisoft.Contact" %>
      <%@ page import="java.sql.*" %>
      <%  try
      {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","root");
        Statement s=con.createStatement();
        Contact c=new Contact();
        c.name=request.getParameter("name");
        



        s.executeUpdate("delete from contact_details where name='"+c.name+"';");

      }
      catch(SQLException e)
      {

      }
        %>
    </form>
  </body>
</html>
