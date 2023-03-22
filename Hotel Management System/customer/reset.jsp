<html>
<head><style>
* {
  margin: 0px;
  padding: 0px;
}

body {
  background-image: url(bgimage.webp);
  background-repeat: no-repeat;
  background-size: cover;
  backface-visibility: visible;
}

#wrapper {
  width: 500px;
  height: 60%;
  overflow: hidden;
  border: 0px solid #000;
  margin: 50px auto;
  padding: 10px;
}

.main-content {
  width: 250px;
  height: 50%;
  margin: 10px auto;
  background-color: #fff;
  border: 2px solid #e6e6e6;
  padding: 40px 50px;
}

.header {
  border: 0px solid #000;
  margin-bottom: 15px;
}

.caption{
    margin-top: 5px;
}

.input-1,
.input-2 {
  width: 100%;
  margin-bottom: 5px;
  padding: 8px 12px;
  border: 1px solid #dbdbdb;
  box-sizing: border-box;
  border-radius: 3px;
}

.btn {
  width: 100%;
  background-color: #3897f0;
  border: 1px solid #3897f0;
  margin-top: 7px;
  padding: 7px 12px;
  color: #fff;
  font-weight: bold;
  cursor: pointer;
  border-radius: 3px;
}

input:focus {
    background-color: yellow;
}

</style>
</head>
<body>
    <%
		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
		String usr =  (String)session.getAttribute("usr");
		if(session.getAttribute("usr") == null)
			response.sendRedirect("customer.html");
    %>

<div id="wrapper">
  <div class="main-content">
    <div class="header">
      <h2 style="color: aqua; font-family: Snell Roundhand, cursive; text-align: center;">Hotel Newbie</h2>
      <div class="caption">
        <p style="color: darkgray ;font-family: 'Times New Roman', Times, serif; font-size: large;text-align: center;">Join us today and get flat <br> 15% off</p>
      </div>
    </div>
    <div class="l-part">
     <form action="update_password.jsp" id="myform" method="post">
      <input type="text" name="np1" class="input-1" placeholder="NEW PASSWORD" required>
      <input type="text" name="np2" class="input-2" placeholder="CONFIRM NEW PASSWORD" required>
      <input type="submit" value="submit" class="btn" />
</form>
    </div>
  </div>
</div>
</body>
</html>