<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page</title>
    <style>
        body {
            background-color: #fff;
            color: #000;
            font-family: Arial, sans-serif;
            height: 100vh; /* Set body height to 100vh */
            margin: 0; /* Remove default body margins */
        }

        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px;
            background-color: #000;
            color: #fff;
        }

        .logo {
            /* Tambahkan logo Anda di sini */
        }

        nav {
            display: flex;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            padding: 5px 10px;
        }

        .hero-section {
            background-image: url("hero-image.jpg");
            background-size: cover;
            background-position: center;
            height: 500px;
            text-align: center;
            padding: 20px;
        }

        .hero-section h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero-section p {
            font-size: 18px;
            line-height: 1.5;
        }

        .hero-section button {
            background-color: #000;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .content-section {
            flex: 1; /* Make content section take remaining space */
            display: flex;
            flex-direction: column; /* Arrange content vertically */
            align-items: center;
            justify-content: center; /* Center content vertically */
            padding: 20px;
        }

        .content-section h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .content-section .item {
            margin-bottom: 20px;
        }

        .content-section .item img {
            width: 200px;
            height: 150px;
            object-fit: cover;
            margin-right: 20px;
        }

        .content-section .item h3 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .content-section .item p {
            font-size: 14px;
            line-height: 1.5;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #000;
            color: #fff;
            position: absolute; /* Position footer at the bottom */
            bottom: 0; /* Set bottom to 0 */
            width: 100%; /* Make footer span full width */
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            </div>

        <nav>
            <a href="http://103.67.78.106:8000/login">Login</a>
        </nav>
    </header>

    <main>
        <section class="hero-section">
            <h1>Selamat Datang di Scaflearn!</h1>
            <img src="{{ asset('AdminLTE-3.2.0/dist/img/teach.jpg') }}" class="img-circle elevation-2" alt="User Image" style="width: 1280px; height: 720px;">
        </section>

        <section class="content-section">
            </section>
    </main>
