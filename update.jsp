<html>
  <head><center>
  <h1>UPDATE CONTACT</h1>
</head>
<body>
  <form method="post" action="updated.jsp">
    <table>
  <%@ page import="com.lxisoft.Contact"%>
  <%@ page import="java.sql.*"%>
  <% Contact c=new Contact();
  String name=request.getParameter("name");
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","root");
  Statement s=con.createStatement();
  ResultSet rs=s.executeQuery("select name,email,phn_no from contact_details where name='"+name+"';");
  while (rs.next())
  {
    c.name=rs.getString("name");
    c.mail_id=rs.getString("email");
    c.phone_no=rs.getString("phn_no");
  %>
      <tr><td>NAME</td><td><input type="text" name="name" value=<% out.println(c.name); %>></td></tr>
      <tr><td>Email</td><td><input type="text" name="mailid" value=<%out.println(c.mail_id);%>></td></tr>
      <tr><td>PHONE NO</td><td><input type="text" name="phone" value=<%out.println(c.phone_no);%>></td></tr>
      <%
  // c.name=rs.getString("name");
  // c.mail_id=rs.getString("email");
  // c.phone_no=rs.getString("phn_no");
  // out.println(c.name);
  // s.executeUpdate("select from (name,email,phn_no) contact_details  where name='"+c.name+"';");
}
}
catch (SQLException e){}%>
<tr><td><input type="submit" value="update" name="update"></td><td><input type="reset" value="reset" /></td></tr>

</html>
