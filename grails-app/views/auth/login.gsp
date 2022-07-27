<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
%{--    <meta name="_csrf" th:content="${_csrf.token}"/>--}%
%{--    <meta name="_csrf_header" th:content="${_csrf.headerName}"/>--}%
%{--    <title th:text="${title}"></title>--}%
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://kit.fontawesome.com/8de2f0b37b.js" crossorigin="anonymous"></script>


<g:external dir="stylesheets" file="styles.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body class="gradient-custom-2 h-100">


<nav class="navbar navbar-expand-lg navbar-light bg-light bg-opacity-10">
    <div class="container-fluid p-3 mb-0 bg-light rounded gradient-custom-2">
        <a class="navbar-brand mb-0 h1" th:href="@{/}">Hobby Hoppr</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav me-auto mb-lg-0 flex-fill">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" th:href="@{/event}">Events</a>
                </li>
                <li class="nav-item" sec:authorize="isAuthenticated()">
                    <a class="nav-link" th:href="@{/event/create-edit-event}">Create an Event</a>
                </li>
                <li sec:authorize="isAuthenticated()" class="nav-item">
                    <a class="nav-link" th:href="@{/profile}">My profile</a>
                </li>
            </ul>

            <div class="d-none d-lg-block">
                <form class="d-flex" action="/event/search" method="get">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
                    <button class="btn btn-primary btn-lg" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li sec:authorize="isAuthenticated()" class="nav-item">
                    <form th:action="@{/logout}" method="POST">
                        <button class="nav-link btn">Logout</button>
                    </form>
                </li>
                <li sec:authorize="!isAuthenticated()" class="nav-item">
                    <a class="nav-link" href="/login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" th:href="@{/about}">About Us</a>
                </li>
            </ul>
            <div class="d-lg-none">
                <form class="d-flex" action="/event/search" method="get">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
                    <button class="btn btn-primary btn-lg" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
        </div>
    </div>
</nav>

<section>
    <div class="container h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5 text-center mb-md-5 mb-lg-5 mb-xl-5">
                <img src="/images/logo.png"
                     class="img-fluid" alt="HobbyHopper Logo" style="border-radius: 50%">
            </div>

            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1 my-5">
                <!--Username input -->
                <g:form controller="auth" action="doLogin" class="form-signin">
                    <g:textField name="username" class="form-control" placeholder="Email" required="required" />
                    <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
                    <g:submitButton class="btn btn-lg btn-primary btn-block" name="login" value="Login"/>

                </g:form>

                <div class="text-center text-lg-start mt-4 pt-2">
                    <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an Account? <a href="sign-up" class="link-danger">Sign up</a></p>
                </div>
            </div>
        </div>
    </div>
</section>

%{--<footer class="bg-dark text-center text-white py-3 mt-auto">--}%
%{--    <div class="container-fluid p-4 mb-0">--}%
%{--        <!--            Social media links-->--}%
%{--        <div class="socials">--}%
%{--            <a class="btn btn-outline-light btn-floating m-1 px-3" role="button" href="/about">--}%
%{--                <i class="fa-solid fa-info"></i>--}%
%{--            </a>--}%
%{--            <a class="btn btn-outline-light btn-floating m-1" role="button" href="https://twitter.com/HobbyHoppr">--}%
%{--                <i class="fa-brands fa-twitter"></i>--}%
%{--            </a>--}%
%{--            <a class="btn btn-outline-light btn-floating m-1" role="button" href="https://github.com/HobbyHopper/hobby-hopper">--}%
%{--                <i class="fa-brands fa-github"></i>--}%
%{--            </a>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--</footer>--}%

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</body>
</html>

