<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Marks Input</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f9;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn:hover {
            background: #0056b3;
        }
        .marks {
            font-size: 18px;
            font-weight: bold;
        }
        .green {
            color: green;
        }
        .red {
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Internal Marks Calculator</h2>
        <form action="evaluateMarks.jsp" method="post">
            <div class="form-group">
                <label for="aat1">AAT1:</label>
                <input type="number" id="aat1" name="aat1" placeholder="Enter AAT1 marks" min="0" max="10">
            </div>
            <div class="form-group">
                <label for="aat2">AAT2:</label>
                <input type="number" id="aat2" name="aat2" placeholder="Enter AAT2 marks" min="0" max="10">
            </div>
            <div class="form-group">
                <label for="mid1">Mid1:</label>
                <input type="number" id="mid1" name="mid1" placeholder="Enter Mid1 marks" min="0" max="35">
            </div>
            <div class="form-group">
                <label for="mid2">Mid2:</label>
                <input type="number" id="mid2" name="mid2" placeholder="Enter Mid2 marks" min="0" max="35">
            </div>
            <button type="submit" class="btn">Submit</button>
        </form>
        <div>
            <%-- Display calculated internal marks if available --%>
			            <% 
			    String internalMarks = (String) request.getAttribute("internalMarks");
			    if (internalMarks != null) {
			        double marks = Double.parseDouble(internalMarks); // Use Double to handle decimal numbers
			        String colorClass = marks >= 15 ? "green" : "red";
			%>
			        <h3 class="marks <%= colorClass %>">Total Internal Marks: <%= marks %></h3>
			<% 
			    }
			%>
            
            
        </div>
    </div>
</body>
</html>
