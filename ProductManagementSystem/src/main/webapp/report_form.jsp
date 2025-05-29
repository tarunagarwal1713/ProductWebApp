<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Generate Product Reports</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');

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
            text-align: left;
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
            margin-bottom: 8px;
        }

        select,
        input[type="number"],
        input[type="text"] {
            width: 100%;
            padding: 16px 18px;
            margin-bottom: 20px;
            border: 3px solid #00fff7;
            border-radius: 16px;
            font-size: 1.1rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
            background: #2c2c3e;
            color: #fff;
            box-sizing: border-box;
            appearance: none;
        }

        select:focus,
        input[type="number"]:focus,
        input[type="text"]:focus {
            border-color: #00fff7;
            outline: none;
            box-shadow: 0 0 12px rgba(0, 255, 247, 0.6);
            background: #3a3a52;
        }

        input[type="submit"] {
            background-color: #1e1e2f;
            color: #00fff7;
            border: 3px solid #00fff7;
            padding: 16px 0;
            font-size: 1.2rem;
            font-weight: 700;
            border-radius: 16px;
            cursor: pointer;
            transition: all 0.4s ease;
            box-shadow: 0 10px 20px rgba(0, 255, 247, 0.3);
            user-select: none;
            position: relative;
            overflow: hidden;
            width: 100%;
        }

        input[type="submit"]::after {
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
        input[type="submit"]:focus::after {
            left: 0;
        }

        input[type="submit"]:hover,
        input[type="submit"]:focus {
            background-color: #00fff7;
            color: #1e1e2f;
            box-shadow: 0 16px 32px rgba(0, 255, 247, 0.5);
            transform: translateY(-6px) scale(1.03);
            outline: none;
        }

        /* Hide/show input sections */
        #priceInput, #categoryInput, #topNInput {
            display: none;
        }

        @media (max-width: 540px) {
            .container {
                padding: 45px 30px;
            }
        }
    </style>

    <script>
        function toggleInputs() {
            const reportType = document.getElementById("reportType").value;
            document.getElementById("priceInput").style.display = (reportType === "price") ? "block" : "none";
            document.getElementById("categoryInput").style.display = (reportType === "category") ? "block" : "none";
            document.getElementById("topNInput").style.display = (reportType === "topN") ? "block" : "none";
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Generate Product Reports</h2>

        <form action="ReportCriteriaServlet" method="post">
            <label for="reportType">Select Report Type:</label>
            <select id="reportType" name="reportType" onchange="toggleInputs()" required>
                <option value="" disabled selected>--Select--</option>
                <option value="price">Products with Price Greater Than</option>
                <option value="category">Products in Specific Category</option>
                <option value="topN">Top N Products by Quantity</option>
            </select>

            <div id="priceInput">
                <label>Enter Minimum Price:</label>
                <input type="number" step="0.01" name="minPrice" min="0.01" placeholder="e.g. 20000" />
            </div>

            <div id="categoryInput">
                <label>Enter Category Name:</label>
                <input type="text" name="category" placeholder="e.g. Electronics" />
            </div>

            <div id="topNInput">
                <label>Enter Number of Top Products (N):</label>
                <input type="number" name="topN" min="1" placeholder="e.g. 5" />
            </div>

            <input type="submit" value="Generate Report" />
        </form>
    </div>
</body>
</html>
