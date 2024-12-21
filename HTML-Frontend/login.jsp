<!DOCTYPE html>
<html>
<head>
    <title>User Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            background-color: #fff; /* White background */
            font-family: Arial, sans-serif;
        }

        .container {
            padding: 20px;
            border-radius: 10px;
            max-width: 1000px; /* Adjust the maximum width as needed */
            margin: 0 auto;
            margin-top: 50px;
            box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.5);
            display: flex; /* Display content and image side by side */
        }

        .login-block {
            flex: 1; /* Expand to fill available space */
            padding: 20px;
        }

        .login-block h2 {
            text-align: center;
            color: #333;
        }

        .login-block form {
            display: flex;
            flex-direction: column;
        }

        .login-block label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .login-block input[type="text"],
        .login-block input[type="password"] {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .login-block input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-block input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .register-link {
            text-align: center;
            margin-top: 20px;
        }

        .register-link a {
            color: #007BFF;
            text-decoration: none;
        }

        /* Style for the image on the left side */
        .login-image {
            flex: 1;
            background-image: url("https://static.vecteezy.com/system/resources/previews/002/616/168/non_2x/young-man-using-laptop-computer-on-desk-working-online-vector.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh; /* Minimum height to cover the full viewport */
        }
        
        
        .login-block input[type="email"] {
            /* Style for the email input */
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <div class="login-image"></div>
        <div class="login-block">
            <h2>User Login</h2>
            <form action="login" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <input type="submit" value="Login">
            </form>

            <div class="register-link">
                <p>Don't have an account? <a href="register.jsp">Register</a></p>
            </div>
        </div>
    </div>
</body>
</html>
