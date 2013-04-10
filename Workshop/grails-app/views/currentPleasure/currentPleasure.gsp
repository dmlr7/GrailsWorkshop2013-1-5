<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sample title</title>
  </head>
  <body>
    <h1>All Trips</h1>
    <table border=8px width=20%>
    <tr>
        <th>Name</th>
         <th>City</th>
         <th>Purpose</th>
    </tr>

    <g:each in="${trips}">
        <tr>
             <td>${it.name}</td>
             <td>${it.city}</td>
             <td>${it.purpose}</td>
        </tr>
    </g:each>
</table>
    <h4>Trips for Political Reasons:</h4>
    <g:findAll in="${trips}" expr="it.purpose == 'Political'">
     <table border=8px width=20%>
    <tr>
        <th>Name</th>
         <th>City</th>
         <th>Purpose</th>
    </tr>
    <tr>
             <td>${it.name}</td>
             <td>${it.city}</td>
             <td>${it.purpose}</td>
        </tr>
      </table>
</g:findAll>

  <h4>Trips for Education Reasons:</h4>
    <g:findAll in="${trips}" expr="it.purpose == 'Education'">
     <table border=8px width=20%>
    <tr>
        <th>Name</th>
         <th>City</th>
         <th>Purpose</th>
    </tr>
    <tr>
             <td>${it.name}</td>
             <td>${it.city}</td>
             <td>${it.purpose}</td>
        </tr>
      </table>
</g:findAll>
<h4>Trips for Scientific Reasons:</h4>
    <g:findAll in="${trips}" expr="it.purpose == 'Scientific'">
     <table border=8px width=20%>
    <tr>
        <th>Name</th>
         <th>City</th>
         <th>Purpose</th>
    </tr>
    <tr>
             <td>${it.name}</td>
             <td>${it.city}</td>
             <td>${it.purpose}</td>
        </tr>
      </table>
</g:findAll>

  </body>
</html>
