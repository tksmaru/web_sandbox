<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <body>
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span2">
        <!--Sidebar content-->
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">MENU</li>
              <li><a href="../">TOP</a></li>
              <li class="active"><a href="#">Worker Thread</a></li>
              <li><a href="#">Coming soon</a></li>
              <li><a href="#">Coming soon</a></li>
            </ul>
          </div><!--/.well -->
        </div>
        <div class="span10">
          <!--Body content-->
          <div class="body">
            <div class="page-header">
              <h1>Worker Thread Test</h1>
            </div>
            <form class="well" method="POST" action="./invoke">
              <label>Thread stopping seconds</label>
              <input type="text" class="span3" name="time" placeholder="Type seconds…">
              <button type="submit" class="btn">Submit</button>
            </form>
          </div>
        </div>
      </div>
  </body>
</html>