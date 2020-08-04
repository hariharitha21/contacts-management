<html>
  <head>
    <title>viewcontact</title>
    <center>
      <h1>CONTACTS<h1>
  </head>
  <body>

      <table style="width:25%" align="center">
        <tr><th>Name</th><th>Email id</th><th>phone no</th><th>Update</th><th>Delete</th></tr>
  <%@ page import="com.lxisoft.Contact"%>
  <%@ page import="java.sql.* "%>
  <%
  Contact c=new Contact();
    try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","root");
      Statement s=con.createStatement();
      ResultSet rs=s.executeQuery("select name,email,phn_no from contact_details;");
      while (rs.next())
      {
        c.name=rs.getString("name");
        c.mail_id=rs.getString("email");
        c.phone_no=rs.getString("phn_no");
      %>  <tr><td><% out.println(c.name); %></td><td><%out.println(c.mail_id);%></td><td><%out.println(c.phone_no);%></td>
      <td><button onclick="window.location.href='update.jsp?name=<%=c.name%>'">update</td>
      <td><button onclick="window.location.href='removecontact.jsp?name=<%=c.name %>'" value="delete">delete</td></tr>

    <%  }

    }
    catch(SQLException e)
    {}
  %>



      </table>

  </body>

</html>
