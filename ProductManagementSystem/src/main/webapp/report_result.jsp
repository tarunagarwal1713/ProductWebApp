<%@ page language="java" import="java.util.List, com.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Report Results</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: #e0e0e0;
            margin: 0;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
            min-height: 100vh;
        }

        .wrapper {
            width: 100%;
            max-width: 960px;
            background-color: #1e1e2f;
            border-radius: 24px;
            padding: 40px 50px;
            box-shadow: 0 30px 70px rgba(0, 255, 247, 0.15);
            box-sizing: border-box;
            text-align: center;
        }

        h2 {
            font-weight: 800;
            font-size: 2.8rem;
            margin-bottom: 40px;
            color: #00fff7;
            letter-spacing: 0.1em;
            text-transform: uppercase;
        }

        p {
            font-size: 1.2rem;
            color: #a0a0a0;
            margin-top: 50px;
            font-weight: 500;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background: #2c2c3e;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 12px 30px rgba(0, 255, 247, 0.25);
            margin-bottom: 40px;
        }

        th, td {
            padding: 18px 22px;
            text-align: center;
            font-size: 1.05rem;
            color: #d0f7f9;
        }

        th {
            background: #00fff7;
            color: #1e1e2f;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.1em;
        }

        tr:not(:last-child) td {
            border-bottom: 1px solid rgba(0, 255, 247, 0.15);
        }

        tr:hover {
            background-color: rgba(0, 255, 247, 0.1);
            cursor: default;
        }

        a {
            display: inline-block;
            margin: 0 15px;
            text-decoration: none;
            color: #00fff7;
            font-weight: 600;
            font-size: 1.1rem;
            padding: 12px 25px;
            border: 2.5px solid #00fff7;
            border-radius: 18px;
            transition: all 0.3s ease;
            box-shadow: 0 8px 18px rgba(0, 255, 247, 0.3);
            user-select: none;
        }

        a:hover,
        a:focus {
            background-color: #00fff7;
            color: #1e1e2f;
            box-shadow: 0 14px 30px rgba(0, 255, 247, 0.7);
            transform: translateY(-3px) scale(1.05);
            outline: none;
        }

        /* Responsive */
        @media (max-width: 700px) {
            h2 {
                font-size: 2rem;
            }
            th, td {
                font-size: 0.9rem;
                padding: 14px 12px;
            }
            a {
                font-size: 1rem;
                padding: 10px 20px;
            }
            .wrapper {
                padding: 30px 25px;
            }
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <h2>Report Results</h2>

        <%
            Object obj = request.getAttribute("reportProducts");
            List<Product> products = null;

            if (obj instanceof List<?>) {
                boolean valid = true;
                for (Object o : (List<?>) obj) {
                    if (!(o instanceof Product)) {
                        valid = false;
                        break;
                    }
                }
                if (valid) {
                    products = (List<Product>) obj; // safe cast after check
                }
            }

            if (products == null) {
        %>
            <p>No data to display.</p>
        <%
            } else if (products.isEmpty()) {
        %>
            <p>No products found for the selected criteria.</p>
        <%
            } else {
        %>
            <table>
                <tr>
                    <th>Product ID</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Quantity</th>
                </tr>
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
            </table>
        <%
            }
        %>

        <div>
            <a href="report_form.jsp">Back to Report Form</a>
            <a href="index.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
