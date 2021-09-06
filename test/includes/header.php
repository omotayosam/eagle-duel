<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="..//test/assets/css/full.css">
  <link rel="stylesheet" href="..//test/assets/css/vid.css">
  <link rel="stylesheet" href="..//test/assets/css/stats.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

  <script>
    function addLoadEvent(func) {
      var oldonload = window.onload;
      if (typeof window.onload != 'function') {
        window.onload = func;
      } else {
        window.onload = function() {
          if (oldonload) {
            oldonload();
          }
          func();
        }
      }
    }
  </script>
  <script>
    document.getElementsByTagName("html")[0].className = document.getElementsByTagName("html")[0].className.replace("no-js", "js");
  </script>
</head>

<body>
