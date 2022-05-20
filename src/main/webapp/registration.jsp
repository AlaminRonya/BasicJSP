<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/25/2022
  Time: 10:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<c:forEach var = "i" begin = "1" end = "5">
Item <c:out value = "${i}"/><p>
    </c:forEach>
<form action="FileUploadServlet" method="post" enctype="multipart/form-data">
    <label for="fileUpload">Select image:</label>
    <input type="file" id="fileUpload"  name="img" accept="image/*" >
    Location <input name="textPath">
    <input type="submit">
</form>

</body>
</html>
