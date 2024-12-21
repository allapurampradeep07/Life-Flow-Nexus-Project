<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Password Manager</title>
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
            margin: 50px;
            border: 20px solid #ccc;
            width: 55%;
            padding: 50px;
            /*border: 10px solid #ccc;*/
            border-radius: 90px;
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
            font-size: 28px;
            margin: 10px 0;
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

        input[type="text"] {
            width: 100%;
            font-family: monospace;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
       
        input[type="password"] {
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
        
    body{
        background-color: #99ffff
    }
  </style>
    <script>
    function ck(text,str) {
      if (!text.includes(str)) {
        alert.("Enter correct URL");
      }
    }
  </script>
</head>
<body>
  <h1>Password Manager</h1>
  <form action="main.jsp" method="post"> 
      <br><input type="text" name="websiteURL" id="url" placeholder="Website" required ><br>
     <br><input type="text" name="user" placeholder="Username" required><br>
      <br><input type="password" name="password" placeholder="Password" required>
      <input type="submit" placeholder="submit">
  </form>
  <br><br>
  <a href="welcome.jsp" class="button">Go Back</a>
</body>
</html>
