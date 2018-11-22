<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="@|description|">
    <meta name="keywords" content="@|keywords|">
    <meta name="author" content="@|author|">

    <title>@|title|</title>

    <!-- Bootstrap core CSS -->
    <link href="@|uri-root|vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="@|uri-root|css/heroic-features.css" rel="stylesheet">
    <link href="@|uri-root|css/custom.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav id="nav" class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="@|uri-root|index.html">TFP 2019</a>
        <a href="#nav" class="navbar-display navbar-toggler" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </a>
        <a href="#" class="navbar-hide navbar-toggler" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </a>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            @(define (if-this-uri uri val else)
              (if (string-ci=? uri uri-path) val else))
            @(define (when-this-uri uri val)
              (if-this-uri uri val (void)))
            @(define (ni uri label [a-attribs ""])
              (when (file-exists? (string-replace (string-append uri) ".html" ".scrbl"))
                @list{
                  <li class="nav-item @(when-this-uri uri "active")">
                    <a class="nav-link" href="@(if-this-uri uri "#" (string-append uri-root uri))" @|a-attribs|>@|label|
                    @(when-this-uri uri
                      @list{<span class="sr-only">(current)</span>})
                    </a>
                  </li>}))
            @ni["index.html" "Home"]
            @ni["call-for-papers.html" "Call for Papers"]
            @ni["program.html" "Program"]
            @ni["registration.html" "Registration"]
            @ni["local.html" "Local Information"]
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      @|page-contents|

    <!-- /.container -->
    </div>

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; TFP 2019</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <!-- <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

  </body>

</html>
