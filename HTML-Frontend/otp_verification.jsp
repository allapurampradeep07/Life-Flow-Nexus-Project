<!DOCTYPE html>
<html>
<head>
    <title>OTP Verification</title>
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

        .otp-block {
            flex: 1; /* Expand to fill available space */
            padding: 20px;
        }

        .otp-block h2 {
            text-align: center;
            color: #333;
        }

        .otp-block form {
            display: flex;
            flex-direction: column;
        }

        .otp-block label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .otp-block input[type="text"] {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .otp-block input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .otp-block input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Style for the image on the left side */
        .otp-image {
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
        <div class="otp-image"></div>
        <div class="otp-block">
            <h2>OTP Verification</h2>
            <form action="OTPVerificationServlet" method="post">
                <label for="otp">Enter OTP:</label>
                <input type="text" id="otp" name="otp" required>
                <br>
                <input type="submit" value="Submit OTP">
            </form>
        </div>
    </div>
</body>
</html>
