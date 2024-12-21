<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
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

        .registration-block {
            flex: 1; /* Expand to fill available space */
            padding: 20px;
        }

        .registration-block h2 {
            text-align: center;
            color: #333;
        }

        .registration-block form {
            display: flex;
            flex-direction: column;
        }

        .registration-block label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .registration-block input[type="text"],
        .registration-block input[type="password"],
        .registration-block input[type="email"] {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .registration-block input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .registration-block input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .signin-link {
            text-align: center;
            margin-top: 20px;
        }

        .signin-link a {
            color: #007BFF;
            text-decoration: none;
        }

        /* Style for the image on the left side */
        .registration-image {
            flex: 1;
            background-image: url("https://static.vecteezy.com/system/resources/previews/002/616/168/non_2x/young-man-using-laptop-computer-on-desk-working-online-vector.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh; /* Minimum height to cover the full viewport */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="registration-image"></div>
        <div class="registration-block">
            <h2>User Registration</h2>
            <form action="register" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <label for="reenterPassword">Reenter Password:</label>
                <input type="password" id="reenterPassword" name="reenterPassword" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="phoneNumber">Phone Number:</label>
                <input type="text" id="phoneNumber" name="phoneNumber" required>

                <input type="submit" value="Register">
            </form>

            <div class="signin-link">
                <p>Already have an account? <a href="login.jsp">Sign In</a></p>
            </div>
        </div>
    </div>
</body>
</html>
