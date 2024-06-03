<%@ page import="com.javaee.product.productee.entities.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #77aaff 3px solid;
        }
        header a {
            color: #fff;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 16px;
        }
        .btn {
            display: inline-block;
            color: #333;
            background: #f4f4f4;
            padding: 5px 20px;
            border: 1px solid #ccc;
            text-decoration: none;
        }
        table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .center {
            text-align: center;
        }
    </style>
</head>
<body>
<header>
    <div class="container center">
        <h1>Product List</h1>
    </div>
</header>
<div class="container">
    <div class="center">
        <form action="${pageContext.request.contextPath}/products/add" method="get">
            <button class="btn">Add Product</button>
        </form>
    </div>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        <%
            List<Product> products = (List<Product>) request.getAttribute("products");
            if (products != null && !products.isEmpty()) {
                for (Product product : products) {
        %>
        <tr>
            <td><%= product.getId() %></td>
            <td><%= product.getName() %></td>
            <td><%= product.getPrice() %></td>
            <td>
                <form action="${pageContext.request.contextPath}/products/delete" method="post" onsubmit="return confirm('Are you sure you want to delete this product?');">
                    <input type="hidden" name="productId" value="<%= product.getId() %>">
                    <input type="submit" value="Delete" class="btn">
                </form>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="4">No products available.</td>
        </tr>
        <% } %>
    </table>
</div>
</body>
</html>
