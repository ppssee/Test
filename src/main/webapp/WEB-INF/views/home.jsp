<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인</title>
    <link rel="stylesheet" href="../../resources/mainCss/beforeLogin.css">
    <style>
        @font-face {
            font-family: 'Chosunilbo_myungjo';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        * {
            font-family: 'Chosunilbo_myungjo';
        }
        a:link, a:visited{
				text-decoration: none;
				color: black;
		}
        
    </style>
</head>

<body>
    <div id="container">
        <header>
            <nav>
                <div class="nav-item"><img src="../../resources/img/main/logo.png" alt="logo"></div>
                <div class="nav-item">
                    <p><a href="/reservation">reservation</a></p>
                </div>
                <div class="nav-item">
                    <p>review board</p>
                </div>
                <div class="nav-item">
                    <p>QnA</p>
                </div>
                <div class="nav-item">
                    <p>login</p>
                </div>
            </nav>
        </header>
        <main>
            <div id="img-box">
                <img class="img" src="../../resources/img/main/num1.webp" />
                <img class="img" src="../../resources/img/main/num2.webp" />
                <img class="img" src="../../resources/img/main/num3.webp" />
                <img class="img" src="../../resources/img/main/num4.webp" />
            </div>
        </main>
        <footer>
            <img src="../../resources/img/main/num5.webp" />
        </footer>
    </div>
    <script>
        const images = document.querySelectorAll('.img');
        let current = 0;

        function showSlide() {
            for (let i = 0; i < images.length; i++) {
                images[i].classList.remove('on');
            }
            current++;
            if (current > images.length) {
                current = 1;
            }
            images[current - 1].classList.add('on');
            setTimeout(showSlide, 3000);
        }

        showSlide();
    </script>
</body>

</html>