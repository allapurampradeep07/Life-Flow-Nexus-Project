<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Selector</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        form {
            background-color: #fff;
            border-radius: 10px;
            text-align: center;
            padding: 20px;
            margin: auto;
            font-family: monospace;
            font-size: 16px;
            width: 80%;
            padding: 20px;
            border: 10px solid #ccc;
            border-radius: 30px;
        }

        h1 {
            color: #007BFF;
            font-size: 24px;
        }

        select {
            width: 100%;
            font-family: monospace;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 20px;
        }

        input[type="submit"] {
            font-family: monospace;
            display: block;
            background-color: #007BFF;
            color: #fff;
            text-decoration: none;
            padding: 15px 20px;
            border-radius: 5px;
            margin: 20px 0;
            font-size: 20px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Media Queries */
        @media (max-width: 768px) {
            form {
                width: 90%;
                padding: 15px;
                font-size: 18px;
            }
        }

        @media (max-width: 480px) {
            form {
                width: 100%;
                padding: 10px;
                font-size: 16px;
            }

            select {
                padding: 12px;
                font-size: 18px;
            }

            input[type="submit"] {
                padding: 12px 18px;
                font-size: 18px;
            }
        }
    </style>
</head>
<body>
    <form method="post" action="todolistreading.jsp">
        <h1>Select The Category To View</h1>
        <select name="Db" required>
            <option>personal</option>
            <option>professional</option>
            <option>academics</option>
        </select><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
