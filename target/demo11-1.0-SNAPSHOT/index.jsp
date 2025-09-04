<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="includes/header.html" %>

<div class="container">
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>

    <!-- Gửi POST tới EmailListServlet -->
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">

        <label>Email:</label>
        <input type="email" name="email" value="${user.email}" required><br>

        <label>First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" required><br>

        <label>Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}" required><br>

        <input type="submit" value="Join Now">
    </form>

    <p style="color:red;">${message}</p>
</div>

<%@ include file="includes/footer.jsp" %>
