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
    <table border=8px width=20%> 
      <!--Table headers-->
      <tr>
        <th>Name</th>
        <th>City</th>
        <th>Purpose</th>
        <th>Total Budget</th>
      </tr>
      <!--Table data-->
      <%  for(int i=0; i<trips.size(); i++){%>
              <tr>
              <td><%println trips[i].name%></td>
              <td><%println trips[i].city%></td>
              <td><%println trips[i].purpose%></td>
              <td><%println trips[i].budget.food+trips[i].budget.tickets+
                  trips[i].budget.lodging+trips[i].budget.otherexpenses%></td>   
              </tr>
      <%}%>
    </table>
  </body>
</html>
