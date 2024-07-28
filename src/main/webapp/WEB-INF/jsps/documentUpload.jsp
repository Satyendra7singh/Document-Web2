<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!-- Bootstrap -->

<title>Document Upload User Interface</title>

<head>
            <meta charset="ISO-8859-1">
            <!-- Bootstrap -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
            <!-- Bootstrap -->
                   <title>Document Upload User Interface</title>
                      <!--CSS Stylesheet-->
            
<style>
html,body {
  background-color:rgb(0,0,36);
}
/* button */
.btn {
  margin: 75px;
  padding: 15px 40px;
  border: none;
  outline: none;
  color: #FFF;
  cursor: pointer;
  position: relative;
  z-index: 0;
  border-radius: 12px;
  left:250px;
}
.btn::after {
  content: "";
  z-index: -1;
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: #333;
  left: 0;
  top: 0;
  border-radius: 10px;
}
/* glow */
.btn::before {
  content: "";
  background: linear-gradient(
    45deg,
    #FF0000, #FF7300, #FFFB00, #48FF00,
    #00FFD5, #002BFF, #FF00C8, #FF0000
  );
  position: absolute;
  top: -2px;
  left: -2px;
  background-size: 600%;
  z-index: -1;
  width: calc(100% + 4px);
  height:  calc(100% + 4px);
  filter: blur(8px);
  animation: glowing 20s linear infinite;
  transition: opacity .3s ease-in-out;
  border-radius: 10px;
  opacity: 0;
}

@keyframes glowing {
  0% {background-position: 0 0;}
  50% {background-position: 400% 0;}
  100% {background-position: 0 0;}
}

/* hover */
.btn:hover::before {
  opacity: 1;
}

.btn:active:after {
  background: transparent;
}

.btn:active {
  color: #000;
  font-weight: bold;
}
</style>            

</head>


<body>

<!--header-->	
<div class="container-fluid bg-dark text-light py-3">
        <header class="text-center">
            <h1>Please upload your document to get started</h1>
        </header>
</div>


<!--FORM-->
<div class="container">
           <form action="upload" method="post" enctype="multipart/form-data">
                 <pre>
                     <input type="text" class="form-control" name="id" placeholder="Enter the document ID"/>
                     <input type ="file"class="form-control " name="document"/>
                     <button type="submit" class="btn btn-lg btn-block" value="Upload">Submit</button>
                 </pre>
           </form>
</div>
<!--FORM-->

<div class="container">
         <table class="table table-dark table-hover table-bordered rounded-pill" >
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">NAME</th>
                    <th scope="col">LINK</th>
                </tr>

                  <c:forEach items="${documents}" var="document">
                      <tr>
                          <td>${document.id}</td>
                          <td>${document.name}</td>
                          <td><a href="download?id=${document.id}">download</a></td>
                      </tr>
                  </c:forEach>
         </table>
</div>
</body>

</html>