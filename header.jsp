<jsp:useBean class="DataBase.ConnnectionClass"id="con"></jsp:useBean>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Matrix Automotive </title>
    <link href="img/lamboicon.jpeg" rel="icon">
    <link href="headercss/style.css"rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>
    <header class="bg-dark"id="myHeader">
        <div class="row text-white">
            <div class="col-md-6 col-9 p-3 pl-5">
                <h2 class="h">Matrix Automotive</h2>
            </div>
            <div class="col-md-6 col-3 my-auto">
                <nav class="navbar navbar-expand-lg navbar-light ">
                    <div class="container-fluid">
                      <button class="navbar-toggler ml-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon "></span>
                      </button>
                      <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ml-auto">
                          <li class="nav-item">
                            <a class="nav-link active text-muted" aria-current="page" href="index.html">Home</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link active text-muted" aria-current="page" href="about.html">About</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link active text-muted" aria-current="page" href="login.html">Cars</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link active text-muted" aria-current="page" href="login.html">Test Drive</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link active text-muted" aria-current="page" href="login.html">Login</a>
                          </li>

                        </ul>
                        <form class="d-flex">
                          <input class="form-control me-2" type="search" placeholder="Search cars" aria-label="Search">
                          <button class="btn bg-secondary" type="submit">Search</button>
                        </form>
                      </div>
                    </div>
                  </nav>
                  <!--End nav-->
            </div>
        </div>
    </header>
    <section>
      <div class="container">
        <div class="row">
          
        </div>
      </div>
    </section>
    <!-- js-->
 <script>
  window.onscroll = function() {myFunction()};
  
  var header = document.getElementById("myHeader");
  var sticky = header.offsetTop;
  
  function myFunction() {
    if (window.pageYOffset > sticky) {
      header.classList.add("sticky");
    } else {
      header.classList.remove("sticky");
    }
  }
  </script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
</body>
</html>