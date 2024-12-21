<!DOCTYPE html>
<html>
	<title>Todo List</title>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .main {
            background-color: #fff;
            width: 100%;
            max-width: 400px;
            margin: 10% auto;
            padding: 5%;
            border-radius: 10%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            color: #333;
        }

        a, .button {
            text-decoration: none;
            display: block;
            padding: 5%;
            margin: 5% 0;
            background-color: #007BFF;
            color: #fff;
            border-radius: 50px;
            transition: background-color 0.3s ease;
        }

        a:hover, .button:hover {
            background-color: #0056b3;
        }

        .button {
            background-color: #007BFF;
        }

        @media (max-width: 600px) {
            .main {
                margin: 10% auto;
                padding: 10%;
                max-width: 90%;
            }
        }

        @media (max-width: 768px) {
            .main {
                padding: 8%;
            }
        }

        @media (min-width: 1024px) {
            .main {
                max-width: 600px;
            }
        }
    </style>
</head>
<body>
    <div class="main">
        <h1>TODO LIST</h1>
        <a href="todolistI.jsp">Add ToDo</a>
        <a href="viewtodolist.jsp">View TodoList</a>
        <a href="welcome.jsp" class="button">Go Back</a>
    </div>
</body>
</html>
