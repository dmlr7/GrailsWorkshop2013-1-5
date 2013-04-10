<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Trip Data</title>
  </head>
  <body>
    <table border=8px width=20%> 
      <!--Table headers-->
      <tr>
        <th>Name</th>
        <th>Last Name</th>
        <th>Trips Name</th>
      </tr>
      <!--Table data-->
      <%  for(int i=0; i<users.size(); i++){%>
              <tr>
              <td><%println users[i].name%></td>
              <td><%println users[i].lastname%></td>
              <td><%println users[i].trips%></td>
              </tr>
              
      <%}%>
    </table>
  </body>
</html>
