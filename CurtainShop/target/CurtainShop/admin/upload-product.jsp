<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/29/2023
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload Product</title>
</head>
<body>
<form action="uploadProduct" method="post" enctype="multipart/form-data">
    <input type="number" name="id" placeholder="id"><br>
    <input type="text" name="productName" placeholder="product name"><br>
    <input type="text" name="productPrice" placeholder="product price"><br>
    <input type="text" name="brandName" placeholder="brand name"><br>
    <input type="text" name="material" placeholder="material"><br>
    <input type="text" name="origin" placeholder="origin"><br>
    <input type="text" name="discount" placeholder="discount"><br>
    <input type="text" name="detail" placeholder="product detail"><br>
    <input type="number" name="productQuantity" placeholder="product quantity"><br>
    <input type="file" name="file" placeholder="product image" multiple><br>
    <input type="submit" value="upload"><br>
</form>
</body>
</html>
