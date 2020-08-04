
<html>
  <title>save</title>
  <%@ page import="com.lxisoft.Contact"%>
  <%@ page import="java.sql.*"  %>
  <% try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","root");
      Statement s=con.createStatement();
      Contact c=new Contact();
      c.name=request.getParameter("name");
      c.mail_id=request.getParameter("mailid");
      c.phone_no=request.getParameter("phone");
      s.executeUpdate("insert into contact_details (name,email,phn_no) values('"+c.name+"','"+c.mail_id+"','"+c.phone_no+"');");
      //System.out.println(c.name+"\t"+c.mail_id+"\t"+c.phone_no);
      c.printDetail();
      //out.println(c.name);  out.println(c.mail_id); out.println(c.phone_no);
      %> <center><button onclick="window.location.href='viewcontact.jsp'"  name="viewcontact">view contacts</button><%
  }
 catch(SQLException e)
 {}
%>
</html>
