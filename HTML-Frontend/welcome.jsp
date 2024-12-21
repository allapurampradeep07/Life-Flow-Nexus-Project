<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to LifeFlow Nexus</title>
    <style>
        /* Reset some default browser styles */
        body, h1, h2, p, ul, li {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #333; /* Darker background */
            color: #fff; /* White text color */
        }

        .navbar {
            background-color: #007BFF;
            padding: 10px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .brand {
            display: flex;
            align-items: center;
        }

        .avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-image: url("https://static.vecteezy.com/system/resources/previews/014/194/232/original/avatar-icon-human-a-person-s-badge-social-media-profile-symbol-the-symbol-of-a-person-vector.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            margin-right: 10px;
        }

        .brand h1 {
            color: #fff;
            font-size: 24px;
        }

        .user-info {
            color: #fff;
            display: flex;
            align-items: center;
        }

        .user-info p {
            margin-right: 10px;
        }

        .main-content {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #333;
        }

        /* Style for the "To-Do List" button */
        .todo-button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        /* Style for logout button */
        .logout-button {
            background-color: #ff3547;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-left: 10px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        /* Style for the "Apps" section */
        .apps-section {
            background-color: #f2f2f2; /* Lighter background */
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }

        .apps-section h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        /* Style for the app block */
        .app-block {
            background-color: #007BFF;
            color: #fff;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .app-block:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navigation bar -->
    <div class="navbar">
        <div class="brand">
            <div class="avatar"></div>
            <h1>LifeFlow Nexus</h1>
        </div>
        <div class="user-info">
            <p>Hello, ${param.username}</p>
            <a href="logout" class="logout-button">Logout</a>
        </div>
    </div>

    <!-- Main content -->
    <div class="main-content">
        <h2>Welcome</h2>
        <div class="apps-section">
            <h3>Apps</h3>
            <div class="app-block">
                <a href="todolist.jsp" class="todo-button">To-Do List App</a>
            </div>
            <br><br>
            <div class="app-block">
                <a href="passwordSave.jsp" class="todo-button">Password Manager App</a>
            </div>
            <br><br>
            <div class="app-block">
                <a href="todolist.jsp" class="todo-button">Personal Notes App</a>
            </div>
            <br><br>
            <div class="app-block">
                <a href="todolist.jsp" class="todo-button">Personal Diary App</a>
            </div>
            <br><br>
            <div class="app-block">
                <a href="todolist.jsp" class="todo-button">Travel Journal App</a>
            </div>
            <br><br>
        </div>
    </div>
</body>
</html>
