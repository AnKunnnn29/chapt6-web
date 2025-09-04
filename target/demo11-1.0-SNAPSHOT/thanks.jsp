<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="includes/header.html" %>

<div class="thanks-container">
    <h2>Thanks for joining our email list!</h2>
    <p><b>Email:</b> ${user.email}</p>
    <p><b>First Name:</b> ${user.firstName}</p>
    <p><b>Last Name:</b> ${user.lastName}</p>

    <!-- Quay lại index.jsp -->
    <form action="index.jsp" method="get">
        <input type="submit" value="Return">
    </form>
</div>

<%@ include file="includes/footer.jsp" %>
