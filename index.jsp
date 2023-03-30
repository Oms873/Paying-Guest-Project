<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paying Guest</title>

    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <style>
        .header {

            min-height: 100vh;
            width: 100%;
            background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url(img/pgimage.jpg);
            background-position: center;
            background-size: cover;
            position: relative;


        }
    </style>

</head>

<body>

    <section class="header">
 
        <%@ include file="navbar.jsp" %>

       
<div class="search-container">
    <form action="" class="search-bar">

        <input type="text" placeholder="search city" name="search">
        <button type="submit"><img src="images/search.png" alt=""></button>

    </form>
</div>

<div class="text-box">

    <h1> Paying Guest </h1>
    <p>We, at Book My PG, are India's fastest-growing network of managed Paying Guest (PG) rentals.<br> We hope to
        provide you with the best renting solutions with the help of our designs and technology.</p>

</div>


    </section>


    <!-- campus -->
    
    <section class="campus">

          <h1>PG We Offered</h1>

          <div class="row"> <!-- 888888888888888888-->
            <div class="col">
                <c:forEach var="bus" items="${buses}">
                    <div class="card mb-3 d-inline-block" style="max-width: 540px;">
                        <div class="row no-gutters">
                          <div class="col-md-4">
                            <img src="static/images/demo_bus.jpeg" alt="...">
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                              <h5 class="card-title">${bus.busNumber} pgname</h5>
                              <p class="card-text">(address)This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                              <p class="card-text"><small class="text-muted">(image)Last updated 3 mins ago</small></p>
                              <!-- <a href="bus_info.jsp?bus_number=${bus.busNumber}&seating_type=${bus.seatingType.seatingTypeId}&seat_count=${bus.seatCount}" class="btn btn-primary btn-sm">Edit</a>   -->
                            </div>
                          </div>
                        </div>
                      </div>
                </c:forEach>
            </div>
        </div>  
    </section>


    <script src="JS/script.js">

         
        
    </script>
    
</body>

</html>