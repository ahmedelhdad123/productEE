<%-- Created by IntelliJ IDEA.
User: ENG
Date: 04/06/2024
Time: 12:49 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        main {
            width: 50%;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            margin-bottom: 20px;
        }
        .form-control label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-control input[type="text"] {
            width: calc(100% - 12px);
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<main>
    <form class="product-form" action="${pageContext.request.contextPath}/products/add" method="post">
        <div class="form-control">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" required>
        </div>
        <div class="form-control">
            <label for="price">Price</label>
            <input type="number" name="price" id="price" step="0.01" min="0" required>
        </div>
        <button class="btn" type="submit">Add Product</button>
    </form>
</main>
</body>
</html>
