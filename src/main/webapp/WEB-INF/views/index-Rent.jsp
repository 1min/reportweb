<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="/spring_mybatis3/resources/css/bootstrap.min.css">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="/spring_mybatis3/resources/style.css">
  <link rel="stylesheet" href="/spring_mybatis3/resources/css/index.css">
  <title>TM Container</title>
</head>

<body>
  <div id="wrap">
    <nav class="navbar navbar-expand-lg navbar-light bg-light flex-sm" id="navbar-main">
      <a class="navbar-brand" href="#">TM <br> Container</a>
      <button class="navbar-toggler justify-content-start" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active1">
            <a class="nav-link" href="index"> About our Company <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="index-Brand"> TM Container BRAND </a>
          </li>
          <!-- <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li> -->
          <li class="nav-item">
            <a class="nav-link" href="index-Rent">Rent Container</a>
          </li>
        </ul>
      </div>

      <form class="form-inline" id="form1" action="lease">
        <button class="btn btn-outline-success my-2 my-sm-0" form="form1" type="submit">Order</button>
      </form>

      <div class="navbar-collaps">
        <ul class="navbar-nav mr-auto navbar-expand-lg">
          <li class="nav-item">
           <c:if test="${not empty sessionScope.id}"><a href="logout" class="nav-link"> Log-out </a></c:if>
           <c:if test="${empty sessionScope.id}"><a href="login" class="nav-link"> Log-in </a></c:if>
          </li>
          <li class="nav-item">
            <a href="join" class="nav-link"> Sign-Up </a>
          </li>
        </ul>
      </div>
    </nav>

    <section id="Rent-Container">
      <div class="Rent">
        <ul class="nav Rent_index">
          <li class="nav-item Rent_index_1">
            <a class="nav-link active" href="#">General Container</a>
          </li>
          <li class="nav-item Rent_index_2">
            <a class="nav-link" href="#">Foldable Container</a>
          </li>
          <li class="nav-item Rent_index_3">
            <a class="nav-link" href="#">reefer Container</a>
          </li>
          <li class="nav-item Rent_index_4">
            <a class="nav-link" href="#">tank Container</a>
          </li>
        </ul>
      </div>
      <div class="article_company">
        <div class="Rent_index_1_contents">
          General Container is ...
          <img src="/spring_mybatis3/resources/img/con1.jpg" alt="이미지없음" class="img-fluid">
        </div>

        <div class="Rent_index_2_contents">
          Foldable Container is ...
          <img src="/spring_mybatis3/resources/img/con2.jpg" alt="이미지없음" class="img-fluid">
        </div>

        <div class="Rent_index_3_contents" >
          reefer Container is ...
          <img src="/spring_mybatis3/resources/img/con4.jpg" alt="이미지없음" class="img-fluid">
        </div>

        <div class="Rent_index_4_contents">
          tank Container is ...
          <img src="/spring_mybatis3/resources/img/con3.jpg" alt="이미지없음" class="img-fluid">
        </div>
      </div>

    </section>

  </div>

  <footer id="footer-main">
    <div class="container">
      <div class="row">
        <div class="col-sm-3">
          <p>TM CONTAINERS A/S</p>
          <p>부산 남구 신선로 428 <a href="htt://branhussey.ca/"></a></p>
          <p>phone: 051-628-XXXX </p>
        </div>
        <div class="col-sm-3">
          <ul class="list-unstyled">
            <li><a href=""></a></li>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
          </ul>
        </div>
        <div class="col-sm-3">
          <ul class="list-unstyled">
            <li><a href=""></a></li>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
          </ul>
        </div>
        <div class="col-sm-3"></div>
      </div>
    </div>
  </footer>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="/spring_mybatis3/resources/js/bootstrap.min.js"></script>
  <script src="/spring_mybatis3/resources/js/index.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>