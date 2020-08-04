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
      s.executeUpdate("update  contact_details set name='"+c.name+"',email='"+c.mail_id+"',phn_no='"+c.phone_no+"' where name='"+c.name+"';");
      %> <center><button onclick="window.location.href='viewcontact.jsp'"  name="viewcontact">view contacts</button><%
    }
    catch(SQLException e)
    {}
    %>
  </table>
</form>
</body>
    </html>
