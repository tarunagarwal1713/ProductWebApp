<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Reports Dashboard</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: #d0f7f9;
            margin: 40px 20px;
            text-align: center;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        h2 {
            color: #00fff7;
            font-weight: 800;
            font-size: 3rem;
            margin-bottom: 15px;
            letter-spacing: 0.12em;
            text-transform: uppercase;
            text-shadow: 0 0 10px #00fff7;
        }

        p {
            font-size: 1.3rem;
            margin-bottom: 40px;
            color: #a0e9f9;
            font-weight: 600;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0 auto;
            display: inline-flex;
            gap: 25px;
        }

        nav ul li a {
            text-decoration: none;
            background-color: #00fff7;
            color: #1e1e2f;
            padding: 14px 28px;
            border-radius: 20px;
            font-weight: 700;
            font-size: 1.1rem;
            box-shadow: 0 8px 22px rgba(0, 255, 247, 0.3);
            transition: background-color 0.3s ease, box-shadow 0.3s ease, transform 0.3s ease;
            user-select: none;
            display: inline-block;
            min-width: 220px;
        }

        nav ul li a:hover,
        nav ul li a:focus {
            background-color: #00ccc7;
            box-shadow: 0 14px 30px rgba(0, 204, 199, 0.7);
            transform: translateY(-3px) scale(1.05);
            outline: none;
            color: #121212;
        }

        a.back-home {
            display: inline-block;
            margin-top: 50px;
            font-weight: 600;
            font-size: 1.1rem;
            color: #00fff7;
            text-decoration: none;
            border: 2px solid #00fff7;
            padding: 10px 30px;
            border-radius: 22px;
            box-shadow: 0 6px 18px rgba(0, 255, 247, 0.4);
            transition: all 0.3s ease;
            user-select: none;
        }

        a.back-home:hover,
        a.back-home:focus {
            background-color: #00fff7;
            color: #1e1e2f;
            box-shadow: 0 12px 30px rgba(0, 255, 247, 0.7);
            transform: translateY(-2px) scale(1.03);
            outline: none;
        }

        /* Responsive */
        @media (max-width: 480px) {
            h2 {
                font-size: 2.2rem;
                letter-spacing: 0.08em;
            }
            p {
                font-size: 1.1rem;
            }
            nav ul {
                flex-direction: column;
                gap: 18px;
            }
            nav ul li a {
                min-width: auto;
                padding: 12px 22px;
                font-size: 1rem;
            }
            a.back-home {
                padding: 9px 22px;
                font-size: 1rem;
                margin-top: 30px;
            }
        }
    </style>
</head>
<body>
    <h2>Reports Dashboard</h2>

    <p>Select a report option below:</p>

    <nav>
        <ul>
            <li><a href="report_form.jsp">Generate Custom Report</a></li>
            <!-- Add more report links here if needed -->
        </ul>
    </nav>

    <a href="index.jsp" class="back-home">Back to Home</a>
</body>
</html>
