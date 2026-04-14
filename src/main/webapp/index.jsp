<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Highrise Interior</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f5f5f5;
        }

        header {
            background-color: #2c3e50;
            color: white;
            padding: 15px;
            text-align: center;
        }

        nav {
            background-color: #34495e;
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: white;
            margin: 10px;
            text-decoration: none;
            font-weight: bold;
        }

        .hero {
            padding: 50px;
            text-align: center;
            background-color: #ecf0f1;
        }

        .services {
            padding: 30px;
        }

        .services h2 {
            text-align: center;
        }

        .service-box {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .card {
            background: white;
            padding: 20px;
            width: 25%;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
            border-radius: 10px;
            text-align: center;
        }

        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 20px;
        }
    </style>
</head>

<body>

<header>
    <h1>Highrise Interior</h1>
    <p>Transforming Spaces into Beautiful Living</p>
</header>

<nav>
    <a href="#">Home</a>
    <a href="#">Services</a>
    <a href="#">Projects</a>
    <a href="#">Contact</a>
</nav>

<div class="hero">
    <h2>Premium Interior Design for Home & Office</h2>
    <p>We design modern, elegant, and functional interiors.</p>
</div>

<div class="services">
    <h2>Our Services</h2>

    <div class="service-box">
        <div class="card">
            <h3>Modular Kitchens</h3>
            <p>Stylish and functional kitchen designs.</p>
        </div>

        <div class="card">
            <h3>Wardrobes</h3>
            <p>Custom storage solutions for your home.</p>
        </div>

        <div class="card">
            <h3>False Ceilings</h3>
            <p>Modern ceiling designs with lighting.</p>
        </div>
    </div>
</div>

<footer>
    <p>📧 contact@highriseinterior.com</p>
</footer>

</body>
</html>
