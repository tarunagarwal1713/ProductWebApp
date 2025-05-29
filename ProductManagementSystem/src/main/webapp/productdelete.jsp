<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Delete Product</title>
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
            color: #ff4d4f; /* bright red for delete */
        }

        label {
            font-weight: 700;
            margin-top: 22px;
            display: block;
            color: #f0f0f0;
            font-size: 1.2rem;
            text-align: left;
        }

        input[type="number"] {
            width: 100%;
            padding: 16px 18px;
            margin-top: 8px;
            border: 3px solid #ff4d4f;
            border-radius: 16px;
            font-size: 1.1rem;
            background: #2c2c3e;
            color: #fff;
            box-sizing: border-box;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="number"]:focus {
            border-color: #ff7875;
            outline: none;
            box-shadow: 0 0 12px rgba(255, 77, 79, 0.7);
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
            border: 3px solid #ff4d4f;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 10px 20px rgba(255, 77, 79, 0.3);
            background-color: #1e1e2f;
            color: #ff4d4f;
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
            background: rgba(255, 77, 79, 0.2);
            transition: left 0.4s;
        }

        input[type="submit"]:hover::after,
        input[type="reset"]:hover::after {
            left: 0;
        }

        input[type="submit"]:hover,
        input[type="submit"]:focus {
            background-color: #ff4d4f;
            color: #1e1e2f;
            box-shadow: 0 14px 28px rgba(255, 77, 79, 0.5);
            transform: translateY(-5px) scale(1.02);
            outline: none;
        }

        input[type="reset"]:hover,
        input[type="reset"]:focus {
            background-color: #ffa39e;
            color: #1e1e2f;
            box-shadow: 0 14px 28px rgba(255, 163, 158, 0.6);
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
        <h2>Delete Product</h2>

        <% String errorMessage = (String) request.getAttribute("errorMessage"); 
           if (errorMessage != null) { %>
            <div class="error">
                <%= errorMessage %>
            </div>
        <% } %>

        <form action="DeleteProductServlet" method="post" onsubmit="return validateDeleteForm()">
            <label for="productID">Product ID:</label>
            <input type="number" name="productID" id="productID" min="1" required />

            <div class="buttons">
                <input type="submit" value="Delete Product" />
                <input type="reset" value="Reset" />
            </div>
        </form>
    </div>

    <script>
        function validateDeleteForm() {
            let productID = document.getElementById('productID').value;
            if (productID <= 0) {
                alert('Please enter a valid Product ID');
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
