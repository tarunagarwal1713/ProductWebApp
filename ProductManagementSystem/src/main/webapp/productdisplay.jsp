<%@ page language="java" import="java.util.List, com.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>All Products</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: #f0f0f0;
            margin: 0;
            padding: 40px 20px;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            font-weight: 800;
            font-size: 2.8rem;
            margin-bottom: 40px;
            color: #00fff7;
            text-align: center;
        }

        table {
            border-collapse: separate;
            border-spacing: 0;
            width: 90%;
            max-width: 900px;
            background: #1e1e2f;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 25px 60px rgba(0,0,0,0.7);
        }

        th, td {
            padding: 16px 20px;
            text-align: center;
            color: #00fff7;
            font-weight: 600;
        }

        th {
            background: #0a91a4;
            color: #fff;
            font-size: 1.2rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        tr:nth-child(even) td {
            background: #162a38;
        }

        tr:hover td {
            background: #00fff7;
            color: #1e1e2f;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .center {
            width: 90%;
            max-width: 900px;
            margin: 30px auto 0;
            text-align: center;
        }

        a {
            display: inline-block;
            margin-top: 30px;
            font-weight: 700;
            font-size: 1.2rem;
            text-decoration: none;
            color: #00fff7;
            border: 3px solid #00fff7;
            padding: 12px 28px;
            border-radius: 24px;
            box-shadow: 0 12px 24px rgba(0, 255, 247, 0.4);
            transition: all 0.4s ease;
        }

        a:hover, a:focus {
            background-color: #00fff7;
            color: #1e1e2f;
            box-shadow: 0 16px 32px rgba(0, 255, 247, 0.6);
            transform: translateY(-6px) scale(1.05);
            outline: none;
        }

        .print-button {
            background-color: #00c853;
            color: #fff;
            padding: 14px 36px;
            border: none;
            border-radius: 24px;
            font-size: 1.3rem;
            font-weight: 700;
            cursor: pointer;
            box-shadow: 0 16px 32px rgba(0, 200, 83, 0.5);
            transition: background-color 0.3s ease, box-shadow 0.3s ease, transform 0.3s ease;
            margin: 0 auto;
            display: block;
        }

        .print-button:hover,
        .print-button:focus {
            background-color: #00e676;
            box-shadow: 0 20px 40px rgba(0, 230, 118, 0.7);
            transform: translateY(-5px) scale(1.05);
            outline: none;
        }

        @media (max-width: 600px) {
            h2 {
                font-size: 2rem;
                margin-bottom: 30px;
            }
            table {
                width: 100%;
                font-size: 0.9rem;
            }
            th, td {
                padding: 12px 8px;
            }
            .print-button {
                padding: 12px 20px;
                font-size: 1.1rem;
            }
            a {
                padding: 10px 20px;
                font-size: 1rem;
            }
        }

        @media print {
            .print-button, a {
                display: none !important;
            }
        }
    </style>
</head>
<body>
    <h2>Product List</h2>

    <%
        @SuppressWarnings("unchecked")
        List<Product> products = (List<Product>) request.getAttribute("productList");

        if (products == null || products.isEmpty()) {
    %>
        <p style="color:#ff6f61; font-weight: 700; text-align:center; margin-top: 40px;">
            No products found in the database.
        </p>
    <%
        } else {
    %>
        <table>
            <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
            <%
                for (Product p : products) {
            %>
                <tr>
                    <td><%= p.getProductID() %></td>
                    <td><%= p.getProductName() %></td>
                    <td><%= p.getCategory() %></td>
                    <td><%= p.getPrice() %></td>
                    <td><%= p.getQuantity() %></td>
                </tr>
            <%
                }
            %>
            </tbody>
        </table>
    <%
        }
    %>

    <div class="center">
        <button class="print-button" onclick="window.print()">Print Product List</button>
    </div>

    <a href="index.jsp">Back to Home</a>
</body>
</html>
