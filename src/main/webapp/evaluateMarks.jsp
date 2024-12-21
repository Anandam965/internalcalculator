<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Evaluate Marks</title>
</head>
<body>
    <% 
        // Fetching form inputs
        int aat1 = Integer.parseInt(request.getParameter("aat1"));
        int aat2 = Integer.parseInt(request.getParameter("aat2"));
        int mid1 = Integer.parseInt(request.getParameter("mid1"));
        int mid2 = Integer.parseInt(request.getParameter("mid2"));

        // Evaluating AAT marks
        double aatMarks = (aat1 / 2.0) + (aat2 / 2.0);

        // Evaluating Mid marks
        double midHigher = Math.max(mid1, mid2) / 2.33333;
        double midLower = Math.min(mid1, mid2) / 7.0;

        // Total internal marks
        double internalMarks = aatMarks + midHigher + midLower;

        // Formatting result to 2 decimal places
        DecimalFormat df = new DecimalFormat("0.00");
        String formattedMarks = df.format(internalMarks);

        // Setting the internal marks attribute for redirection
        request.setAttribute("internalMarks", formattedMarks);

        // Redirecting back to the main index page
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
    %>
</body>
</html>
