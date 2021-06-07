<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"
    />
    <link rel="shortcut icon" href="./img/logo-kecil.png" type="image/x-icon" />
    <title>${param.current} - QUIZYY by Nafaarts | Share your G-Form Quiz</title>

    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
      crossorigin="anonymous"
    ></script>

    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <style>
    .crop-text {
      -webkit-line-clamp: 3;
      overflow : hidden;
      text-overflow: ellipsis;
      display: -webkit-box;
      -webkit-box-orient: vertical;
    }

    .crop-text-title {
      -webkit-line-clamp: 1;
      overflow : hidden;
      text-overflow: ellipsis;
      display: -webkit-box;
      -webkit-box-orient: vertical;
    }
    </style>
  </head>
  <body>
    <!-- Image and text -->
    <nav
      class="navbar navbar-expand-lg navbar-light shadow-sm fixed-top bg-white"
    >
      <div class="container">
        <a class="navbar-brand" href="index.jsp"
          ><img
            src="img/logo-besar.png"
            height="30"
            class="d-inline-block align-top"
            alt=""
        /></a>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarNavAltMarkup"
          aria-controls="navbarNavAltMarkup"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <% String current = request.getParameter("current"); %>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav ml-auto font-weight-bold">
            <a class="nav-item nav-link <% if(current.equals("HOME")) out.println("active"); %>" href="index.jsp">Home </a>
            <a class="nav-item nav-link <% if(current.equals("QUIZ")) out.println("active"); %>" href="quiz.jsp">Quiz</a>
            <a class="nav-item nav-link <% if(current.equals("ABOUT")) out.println("active"); %>" href="about.jsp">About</a>
            <% if(session.getAttribute("status_login") == "TRUE") { %>
              <a class="nav-item nav-link text-muted <% if(current.equals("DASHBOARD")) out.println("active"); %>" href="dashboard.jsp"><i class="fas fa-fw fa-home"></i></a>
            <% } else { %>
              <a class="nav-item nav-link text-muted <% if(current.equals("LOGIN")) out.println("active"); %>" href="login.jsp"><i class="fas fa-fw fa-sign-in-alt"></i></a>
            <% } %>
          </div>
          <style>
            .nav-link {
              margin: 0 10px 0 10px;
            }

            .navbar-nav .active {
              border-bottom: 2px solid #2d6cca;
            }
          </style>
        </div>
      </div>
    </nav>
