<%@ page import="com.alamin.models.Employee" %>
<%@ page import="java.io.Serializable" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.alamin.databases.DBClass" %>
<%@ page import="com.alamin.utils.BaseUtil" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/25/2022
  Time: 2:03 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<%


//    final String name = request.getParameter("name");
//    final String email = request.getParameter("email");
//    final String img = request.getParameter("img");


//    if (name != null && email != null && img != null){
////        String finalLocation=null;
////        try {
//////            BaseUtil.encodeImage(img);
////
////            final Part part = request.getPart("img");
////            String fileName = part.getSubmittedFileName();
////            finalLocation = img + File.separator + fileName;
////        } catch (Exception e) {
////            e.printStackTrace();
////        }
//
//        Employee emp= new Employee(name,email,img);
//        init(emp);
//    }





%>
<%!
//    public void init(Employee employee){
//
//        DBClass.setEmployees(employee);
//    }
%>
<!-- Responsive navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#!">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="registration.jsp">Registration</a></li>
                <li class="nav-item"><a class="nav-link" href="#Contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Blog</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Page content-->
<div class="container mt-5">
    <div class="row">
        <div class="col-lg-8">
            <!-- Post content-->
            <article>
                <!-- Post header-->
                <header class="mb-4">
                    <!-- Post title-->
                    <h1 class="fw-bolder mb-1">Welcome to Blog Post!</h1>
                    <!-- Post meta content-->
                    <div class="text-muted fst-italic mb-2">Posted on January 1, 2022 by Start Bootstrap</div>
                    <!-- Post categories-->
                    <a class="badge bg-secondary text-decoration-none link-light" href="#!">Web Design</a>
                    <a class="badge bg-secondary text-decoration-none link-light" href="#!">Freebies</a>
                </header>
                <!-- Preview image figure-->
                <figure class="mb-4"><img class="img-fluid rounded" src="images/nihal.jpg" alt="..." /></figure>
                <!-- Post content-->
                <section class="mb-5">
                    <h1 id="greeting">TT</h1>
                    <p class="fs-5 mb-4">Science is an enterprise that should be cherished as an activity of the free human mind. Because it transforms who we are, how we live, and it gives us an understanding of our place in the universe.</p>

                </section>
            </article>
            <!-- Comments section-->
            <section class="mb-5" id="Contact">
                <div class="card bg-light">
                    <div class="card-body">

                        <form action="FileUploadServlet" method="post" enctype="multipart/form-data">

                                <div class="mb-3 mt-3">
                                    <label for="name" class="form-label">Name:</label>
                                    <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email:</label>
                                    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                                </div>
                                <div class="mb-3">

                                        <label for="fileUpload">Select image:</label>
                                        <input type="file" id="fileUpload"  name="img" accept="image/*" >
                                        Location <input name="textPath">

                                </div>
                                <div class="form-check mb-3">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="remember"> Remember me
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                        </form>


                    </div>
                </div>
            </section>
        </div>
        <!-- Side widgets-->
        <div class="col-lg-4">
            <!-- Search widget-->
            <div class="card mb-4">
                <div class="card-header">Search</div>
                <div class="card-body">
                    <div class="input-group">
                        <input class="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" />
                        <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                    </div>
                </div>
            </div>
            <!-- Categories widget-->
            <div class="card mb-4">
                <div class="card-header">Categories</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <ul class="list-unstyled mb-0">
                                <li><a href="#!">Web Design</a></li>
                                <li><a href="#!">HTML</a></li>
                                <li><a href="#!">Freebies</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6">
                            <ul class="list-unstyled mb-0">
                                <li><a href="#!">JavaScript</a></li>
                                <li><a href="#!">CSS</a></li>
                                <li><a href="#!">Tutorials</a></li>
                            </ul>
                        </div>
                    </div>


                </div>
            </div>

            <% for (Employee employee: DBClass.getEmployees()) {%>
                <% String im = "images\\"+employee.getImg();%>
                <div class="card mb-4" style="width: 18rem;">
                    <img src="<D:/MavenProject-03-25-22/ServletP/src/main/webapp/<%= im%>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%= employee.getName() %></h5>
                        <p class="card-text"><%= employee.getEmail() %></p>

                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            <% } %>

        </div>
    </div>
</div>


<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
