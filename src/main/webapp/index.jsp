<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int hour = java.time.LocalTime.now().getHour();
    String name = "Evelyn Huang";
    String message;

    if (hour < 12) {
        message = "Good morning, " + name + ", Welcome to COMP367";
    } else {
        message = "Good afternoon, " + name + ", Welcome to COMP367";
    }
%>

<html>
<body>
<h2><%= message %></h2>
</body>
</html>
