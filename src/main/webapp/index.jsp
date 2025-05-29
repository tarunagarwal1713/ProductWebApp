<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Product Management System</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: #f0f0f0;
            margin: 0;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background: #1e1e2f;
            padding: 60px 50px;
            border-radius: 24px;
            box-shadow: 0 25px 60px rgba(0, 0, 0, 0.7);
            width: 100%;
            max-width: 520px;
            text-align: center;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }

        .container:hover {
            transform: translateY(-8px) scale(1.02);
            box-shadow: 0 30px 70px rgba(0, 0, 0, 0.9);
        }

        h2 {
            font-weight: 800;
            font-size: 2.8rem;
            margin-bottom: 24px;
            color: #00fff7;
        }

        p {
            font-size: 1.4rem;
            color: #cccccc;
            margin-bottom: 35px;
        }

        ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        ul li {
            margin-bottom: 22px;
        }

        ul li a {
            display: inline-block;
            width: 100%;
            max-width: 320px;
            padding: 20px 0;
            font-weight: 700;
            font-size: 1.4rem;
            text-decoration: none;
            color: #00fff7;
            border: 3px solid #00fff7;
            border-radius: 20px;
            transition: all 0.4s ease;
            box-shadow: 0 10px 20px rgba(0, 255, 247, 0.3);
            position: relative;
            overflow: hidden;
        }

        ul li a::after {
            content: "";
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: rgba(0, 255, 247, 0.2);
            transition: left 0.4s;
        }

        ul li a:hover::after {
            left: 0;
        }

        ul li a:hover,
        ul li a:focus {
            background-color: #00fff7;
            color: #1e1e2f;
            box-shadow: 0 16px 32px rgba(0, 255, 247, 0.5);
            transform: translateY(-6px) scale(1.03);
            outline: none;
        }

        @media (max-width: 540px) {
            .container {
                padding: 45px 30px;
            }
            ul li a {
                max-width: 100%;
                font-size: 1.3rem;
                padding: 18px 0;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to the Product Management System</h2>
        <p>Select an action:</p>
        <ul>
            <li><a href="productadd.jsp">Add Product</a></li>
            <li><a href="productupdate.jsp">Update Product</a></li>
            <li><a href="productdelete.jsp">Delete Product</a></li>
            <li><a href="DisplayProductsServlet">View All Products</a></li>
            <li><a href="report_form.jsp">Generate Reports</a></li>
        </ul>
    </div>
</body>
</html>
