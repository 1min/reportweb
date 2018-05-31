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

<!--<select class="form-control">
  <option>hahahaha</option>
</select> -->



${number}
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
<c:if test="${not empty sessionScope.id}">
	<form class="form-inline" id="mylist" action="mylist">
        <button id="mylistbtn" class="btn btn-outline-success my-2 my-sm-0" form="mylist" type="submit">mylist</button>
      </form></c:if>
<c:if test="${not empty sessionScope.id}">
      <form class="form-inline" id="form1" action="lease">
        <button class="btn btn-outline-success my-2 my-sm-0" form="form1" type="submit">Order</button>
      </form></c:if>

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

    <section id="Intro-Company">
      <div class="Company">
        <ul class="nav company_index">
          <li class="nav-item company_index_1">
            <a class="nav-link active" href="#">Our Company</a>
          </li>
          <li class="nav-item company_index_2">
            <a class="nav-link" href="#">SustainAbility</a>
          </li>
        </ul>
      </div>
      <div class="article_company">
        <div class="company_index_1_contents">
          WE ARE TM Containers Started in 2018 TM Container is today one of the largest privately owned companies supplying containers for a multitude of applications. TM Containerâs initial goal was to pass on the advantages of high volume with providing users
          with top quality services and competitive pricing. we maintain the same targets, operate 5 brands and are able to offer worldwide services with a network that is second to none. Whilst our core business remains standard ISO container rental
          and sales, we have expanded our business activities to include worldwide deliveries of; DNV containers to the offshore industry, extremely user friendly, power efficient and affordable temperature controlled storage solutions, locally cost effective
          self-storage solutions and finally transport and crane services. Our ever increasing number of regional offices coordinate our worldwide container activities with more than 200 depot locations worldwide. We ensure that containers are as close
          as possible to where they are required. We have a well-established network of partners with the local knowledge and expertise required to ensure a high level of service and to meet our customerâs needs.
        </div>

        <div class="company_index_2_contents">
          TM Container believes in protecting the environment whenever economically possible and technically feasible. For several years we have reduced our use of non-sustainable rain forests for container floors. Almost all our new rental containers over the past 3
          years have been built using Bamboo flooring and where possible we ask for the same floor material in new sales containers. Unfortunately many customers still insist on hardwood plywood floors but we are making progress. We are in close contact
          with paint manufacturers and have already commenced using water based paint systems where we realistically can. The continued use of older containers, those considered no longer suitable by shipping lines and international leasing companies,
          for storage and export shipping after repair saves the environment from massive CO2 emissions, demands on energy and natural resource reserves. TM Container started replacing R12 with CFC free refrigerants in 1994 and since 2005 we have introduced
          new technology refrigerated machinery which have the added advantage of greatly reduced power consumption. Tests completed in 2008 show a power saving of up to 80% with new technology containers and machines when compared to typical used reefer
          containers. We expect all "old technology" machines to be withdrawn from service in 2008. We believe in the shortest possible transport of empty containers by offering many depot locations. This offers financial benefit to our customers together
          with environmental savings. Thinking "green" with TM Container helps the environment and saves you money!
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
  <script src="/spring_mybatis3/resources/js/bootstrap.js"></script>
  <script src="/spring_mybatis3/resources/js/index.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

<!-- 차트용도 -->
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<script>
window.onload = function () {

//Better to construct options first and then pass it as a parameter
var options = {
	animationEnabled: true,
	exportEnabled: true,
	title: {
		text: "Employees Salary in a Company"
	},
	axisX: {
		title: "Departments"
	},
	axisY: {
		includeZero: false,
		title: "Salary in USD",
		interval: 10,
		suffix: "k",
		prefix: "$"
	}, 
	data: [{
		type: "rangeBar",
		showInLegend: true,
		yValueFormatString: "$#0.#K",
		indexLabel: "{y[#index]}",
		legendText: "Department wise Min and Max Salary",
		toolTipContent: "<b>{label}</b>: {y[0]} to {y[1]}",
		dataPoints: [
			{ x: 10, y:[140, 180], label: "Data Scientist" },
			{ x: 20, y:[95, 146], label: "Product Manager" },
			{ x: 30, y:[87, 115], label: "Web Developer" },
			{ x: 40, y:[90, 130], label: "Software Engineer" },
			{ x: 50, y:[100,152], label: "Quality Assurance" }
		]
	}]
};

$("#chartContainer").CanvasJSChart(options);
}
</script>

<div id="chartContainer" style="height: 300px; width: 100%;"></div>
</body>
</html>