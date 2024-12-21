<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Todo List</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        form {
            background-color: #fff;
            margin: 20px;
            border: 20px solid #ccc;
            width: 70%;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #007BFF;
            font-size: 28px;
            font-family: monospace;
            text-align: center;
        }

        label {
            display: block;
            font-family: monospace;
            font-size: 18px;
            margin: 10px 0;
        }

        select, input[type="text"] {
            width: 100%;
            font-family: monospace;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type=submit] {
            background-color: #007BFF;
            color: white;
            padding: 15px 20px;
            margin-top: 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        /* Media Queries */
        @media (max-width: 768px) {
            form {
                width: 90%;
                margin: 10px;
                padding: 20px;
            }
        }

        @media (max-width: 480px) {
            form {
                width: 100%;
                margin: 5px;
                padding: 15px;
            }

            label {
                font-size: 16px;
            }

            select, input[type="text"] {
                font-size: 14px;
            }

            input[type=submit] {
                font-size: 14px;
            }
        }
    </style>
    <script>
        $(function () {
            $("#datepicker").datepicker();
        });
    </script>
</head>
<body>
    <form method="post" action="todolistprocess.jsp">
        <h1>Todo List</h1>
        <div class="category">
            <label for="Db">Category:</label>
            <select name="Db" id="Db" required>
                <option value="">Select a category</option>
                <option value="personal">Personal</option>
                <option value="professional">Professional</option>
                <option value="academics">Academics</option>
            </select>
        </div>

        <div class="task">
            <label for="task">Todo Tasks:</label>
            <input type="text" name="task" id="task" required>
        </div>

        <div class="lastDate">
            <label for="lastDate">Last Date:</label>
            <input type="text" name="lastDate" id="datepicker">
        </div>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
