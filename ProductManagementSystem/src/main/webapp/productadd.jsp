<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Add New Product</title>
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
            box-sizing: border-box;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }

        .container:hover {
            transform: translateY(-8px) scale(1.02);
            box-shadow: 0 30px 70px rgba(0, 0, 0, 0.9);
        }

        h2 {
            font-weight: 800;
            font-size: 2.6rem;
            margin-bottom: 28px;
            color: #00fff7;
            text-align: center;
        }

        label {
            font-weight: 700;
            margin-top: 22px;
            display: block;
            color: #f0f0f0;
            font-size: 1.1rem;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 16px 18px;
            margin-top: 8px;
            border: 3px solid #00fff7;
            border-radius: 16px;
            font-size: 1.1rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
            background: #2c2c3e;
            color: #fff;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #00fff7;
            outline: none;
            box-shadow: 0 0 12px rgba(0, 255, 247, 0.6);
        }

        .buttons {
            margin-top: 36px;
            display: flex;
            gap: 20px;
        }

        input[type="submit"],
        input[type="reset"] {
            flex: 1;
            padding: 16px 0;
            font-weight: 700;
            font-size: 1.2rem;
            border-radius: 16px;
            border: 3px solid #00fff7;
            cursor: pointer;
            transition: all 0.4s ease;
            box-shadow: 0 10px 20px rgba(0, 255, 247, 0.3);
            background-color: #1e1e2f;
            color: #00fff7;
            position: relative;
            overflow: hidden;
        }

        input[type="submit"]::after,
        input[type="reset"]::after {
            content: "";
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: rgba(0, 255, 247, 0.2);
            transition: left 0.4s;
        }

        input[type="submit"]:hover::after,
        input[type="reset"]:hover::after {
            left: 0;
        }

        input[type="submit"]:hover,
        input[type="submit"]:focus,
        input[type="reset"]:hover,
        input[type="reset"]:focus {
            background-color: #00fff7;
            color: #1e1e2f;
            box-shadow: 0 16px 32px rgba(0, 255, 247, 0.5);
            transform: translateY(-6px) scale(1.03);
            outline: none;
        }

        .error {
            color: #ff4d4f;
            font-weight: 700;
            margin-bottom: 18px;
            background: #fff1f0;
            border: 2px solid #ffa39e;
            padding: 12px 18px;
            border-radius: 16px;
            text-align: center;
            color: #000;
        }

        @media (max-width: 540px) {
            .container {
                padding: 45px 30px;
            }
            .buttons {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Product</h2>

        <% String errorMessage = (String) request.getAttribute("errorMessage"); if (errorMessage != null) { %>
            <div class="error">
                <%= errorMessage %>
            </div>
        <% } %>

        <form action="AddProductServlet" method="post" onsubmit="return validateForm()">
            <label for="productID">Product ID:</label>
            <input type="number" name="productID" id="productID" min="1" required />

            <label for="productName">Product Name:</label>
            <input type="text" name="productName" id="productName" required />

            <label for="category">Category:</label>
            <input type="text" name="category" id="category" required />

            <label for="price">Price:</label>
            <input type="number" step="0.01" name="price" id="price" min="0.01" required />

            <label for="quantity">Quantity:</label>
            <input type="number" name="quantity" id="quantity" min="0" required />

            <div class="buttons">
                <input type="submit" value="Add Product" />
                <input type="reset" value="Reset" />
            </div>
        </form>
    </div>

    <script>
        function validateForm() {
            const price = parseFloat(document.getElementById('price').value);
            const quantity = parseInt(document.getElementById('quantity').value, 10);

            if (isNaN(price) || price <= 0) {
                alert('Price must be a number greater than zero.');
                return false;
            }
            if (isNaN(quantity) || quantity < 0) {
                alert('Quantity cannot be negative.');
                return false;
            }
            return true;
        }
    </script>
</body>
</html>