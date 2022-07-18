<!doctype html>
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

<header class="jumbotron text-center text-white gradient-custom-2">
    <div class="jumbotron-content">
        <div class="container-fluid px-5">
            <!--                <h1 class="jumbotron-heading">Hobby Hoppr</h1>-->
            <h1 class="jumbotron-heading">Find Your Fun!</h1>
            <a class="btn btn-primary btn-xl rounded-pill mt-5" th:href="${'/event'}">View Events</a> <p class="my-auto">or</p>

            <a sec:authorize="!isAuthenticated()" class="btn btn-primary btn-xl rounded-pill " href="${'/signup'}">Sign up</a>

            <a sec:authorize="isAuthenticated()" class="btn btn-primary btn-xl rounded-pill " th:href="${'/event/create-edit-event'}">Create an event</a>

        </div>
    </div>
    <div class="bg-circle-1 bg-circle"></div>
    <div class="bg-circle-2 bg-circle"></div>
</header>
<!--        first content section-->
<section id="scroll">
    <div class="circle-container px-5">
        <div class="row align-items-center">
            <div class="col-lg-6 order-lg-2">
                <div class="p-5"><img class="img-fluid rounded-circle" th:src="@{/images/street-biking.jpg}"></div>
            </div>

            <div class="col-lg-6 order-lg-1">
                <div class="p-5">
                    <h2 class="display-4">For outdoor activities</h2>
                    <p>Take a walk with friends or skate with friendly strangers. Schedule a group run on your favorite trail or try out that skate park you've always wanted to. Meet up with people that crave the same outdoor adventures as you in the click of a button!</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--        second content section-->
<section>
    <div class="circle-container px-5">
        <div class="row gx-5 align-items-center">
            <div class="col-lg-6">
%{--                <div><img class="img-fluid rounded-circle" th:src="@{/images/yoga.jpg}"></div>--}%
            </div>
            <div class="col-lg-6">
                <div class="p-5">
                    <h2 class="display-4">For indoor activities</h2>
                    <p>Ever tried indoor camping? Neither have we but there's someone on this site who has! Get a group together for a treasure hunt or indoor swim. Gather improv artists to put on a show together. There are so many possibilities!</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--            third content section-->
<section>
    <div class="circle-container px-5">
        <div class="row gx-5 align-items-center">
            <div class="col-lg-6 order-lg-2">
                <div class="p-5"><img class="img-fluid rounded-circle" th:src="@{/images/programming.jpg}"></div>
            </div>
            <div class="col-lg-6 order-lg-1">
                <div class="p-5">
                    <h2 class="display-4">For coming together</h2>
                    <p>Assemble, round up, huddle...however you put it coming together is always a good time. Create an event to support a local business. Even meet up for a gaming tournament or create your own. There's so much you can do!</p>
                </div>

            </div>
        </div>
    </div>
</section>
%{--<footer th:replace="partials/partials.html :: footer"></footer>--}%
%{--<script th:replace="partials/partials.html :: bootstrap-js"></script>--}%

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
