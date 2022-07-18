<!doctype html>
<html xmlns:th="http://www.thymeleaf.org">

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
<body class="gradient-custom-2">

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
                <li class="nav-item" sec:authorize="!isAuthenticated()">
                    <a class="nav-link" th:href="@{/login}">Create an Event</a>
                </li>
                <li sec:authorize="isAuthenticated()" class="nav-item">
                    <a class="nav-link" th:href="@{/profile}">My profile</a>
                </li>
            </ul>

            <div class="d-none d-lg-block">
                <g:form class="d-flex" action="/event/search" method="get">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
                    <button class="btn btn-primary btn-lg" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </g:form>
            </div>

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li sec:authorize="isAuthenticated()" class="nav-item">
                    <g:form action="/logout" method="POST">
                        <button class="nav-link btn">Logout</button>
                    </g:form>
                </li>
                <li sec:authorize="!isAuthenticated()" class="nav-item">
                    <a class="nav-link" href="/login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about">About Us</a>
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
                <img th:src="@{/images/logo.png}"
                     class="img-fluid" alt="HobbyHopper Logo" style="border-radius: 50%">
            </div>

            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1 my-5">
                <g:form action="/sign-up?error" method="POST" name="user">
                    <h2 class="text-center">Sign up</h2>
%{--                    <div th:if="${param.deleted}">--}%
%{--                        Account was erased--}%
%{--                    </div>--}%
%{--                    <!--                     Username input -->--}%
                    <div class="form-outline">
                        <label for="username">Username*</label>
                        <input type="text" id="username" class="form-control form-control-lg"
                               placeholder="Enter a valid user name" th:field="*{username}"/>
%{--                        <p th:if="${#fields.hasErrors('username')}" th:errors="*{username}" class="error-color"></p>--}%
                    </div>

                    <!-- Email input -->
                    <div class="form-outline mt-3">
                        <label for="email">Email*</label>
                        <input type="email" id="email" class="form-control form-control-lg"
                               placeholder="Enter email" th:field="*{email}"/>
%{--                        <p th:if="${#fields.hasErrors('email')}" th:errors="*{email}" class="error-color"></p>--}%
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mt-3">
                        <label for="password">Password*</label>
                        <input type="password" id="password" class="form-control form-control-lg"
                               placeholder="Enter password" th:field="*{password}"/>
%{--                        <p th:if="${#fields.hasErrors('password')}" th:errors="*{password}" class="error-color"></p>--}%
                    </div>

                    <!-- Confirm password input -->
                    <div class="form-outline mt-3">
                        <label for="confirm">Confirm password*</label>
                        <input type="password" id="confirm" class="form-control form-control-lg"
                               placeholder="Confirm password" th:field="*{confirm}"/>
%{--                        <p th:if="${#fields.hasErrors('confirm')}" th:errors="*{confirm}" class="error-color"></p>--}%
                    </div>

                    <!-- location input -->
                    <div class="form-outline mt-3">
                        <label for="location">Location</label>
                        <input type="text" id="location" class="form-control form-control-lg"
                               placeholder="Enter location" th:field="*{location}"/>
                    </div>

                    <!--Image input-->
                    <div class="form-outline mt-3">
                        <button type="button" class="form-control form-control-lg picker" required>Upload image</button>
                        <div id="image-url"></div>
                    </div>
                    <!--                    -->
                    <div id="upload"></div>

                    <div class="d-flex justify-content-between align-items-center">
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <input type="submit" value="Sign Up" class="btn btn-primary btn-lg"
                               style="padding-left: 2.5rem; padding-right: 2.5rem;">
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <p class="small fw-bold mt-2 pt-1 mb-0">Have an Account? <a href="login" class="link-danger">Login</a></p>
                    </div>

                </g:form>
            </div>
        </div>
    </div>
</section>
<footer th:replace="partials/partials.html :: footer"></footer>

<script th:replace="partials/partials.html :: script-keys" ></script>
<script th:replace="partials/partials.html :: bootstrap-js" ></script>
<script th:replace="partials/partials.html :: file-stack" ></script>
<script th:replace="partials/partials.html :: file-js" ></script>
<script th:replace="partials/partials.html :: map-js" ></script>
<script th:replace="partials/partials.html :: environment-keys" ></script>

</body>
</html>