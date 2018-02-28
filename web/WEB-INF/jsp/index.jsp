<%--
  Created by IntelliJ IDEA.
  User: le
  Date: 2018/2/28
  Time: 上午9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>


  </head>
  <body>


  <h2>Spring Page Redirection</h2>
  <p>Click below button to redirect the result to new page</p>
  <form:form method="POST" action="/rtmp/redirect">
    <table>
      <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
      </tr>
      <tr>
        <td><form:label path="age">Age</form:label></td>
        <td><form:input path="age" /></td>
      </tr>
      <tr>
        <td><form:label path="id">id</form:label></td>
        <td><form:input path="id" /></td>
      </tr>
      <tr>
        <td colspan="2">
          <input type="submit" value="Submit"/>
        </td>
      </tr>
    </table>
  </form:form>

  </body>
</html>
