<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Current Trip</title>
  </head>
  <body>
    <table border=8px width=50% height=50px> 
      <!--Table headers-->
      <tr>
        <th>Name</th>
        <th>City</th>
        <th>Purpose</th>
      </tr>
      <!--Table data-->
      <%  for(int i=0; i<trips.size(); i++){%>
              <tr>
              <td><%println trips[i].name%></td>
              <td><%println trips[i].city%></td>
              <td><%println trips[i].purpose%></td>
              </tr>
              
      <%}%>
    </table>
  </body>
</html>
