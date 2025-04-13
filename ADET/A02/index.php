<?php
$page = "chessOpening";

if (isset($_GET['page'])) {
  $page = $_GET['page'];
  switch ($page) {
    case "chessOpening":
      $page = "chessOpening";
      break;
    case "play":
      $page = "play";
      break;
    case "ranking":
      $page = "ranking";
      break;
    default:
      header("Location: ?page=play");
      break;
  }
} else {
  header("Location: ?page=play");
}


?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>MVC</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

  <style>
    body {
      background-color: #343633;
    }

    .navbar {
      background-color: #000;
    }

    .navbar-brand {
      font-weight: bold;
      font-size: 24px;
    }

    .profilepic {
      width: 300px;
      height: 300px;
      border-radius: 200px;
      background-color: grey;
    }


    .scrollable-content::-webkit-scrollbar {
      width: 10px;
    }

    .scrollable-content::-webkit-scrollbar-track {
      background: #4c5b43;
      border-radius: 10px;
    }

    .scrollable-content::-webkit-scrollbar-thumb {
      background-color: #3c4c30;
      border-radius: 10px;
      border: 2px solid #4c5b43;
    }

    .scrollable-content::-webkit-scrollbar-button {
      display: none;
      height: 0;
      width: 0;
    }
  </style>

  <link rel="icon" href="../../resources/plogo.png">

</head>

<div>
  <!-- NAVIGATION -->
  <nav class="navbar navbar-dark px-4 py-3 shadow-sm">
    <div class="container-fluid">
      <a class="navbar-brand text-white">ChessArea</a>
    </div>
  </nav>

  <!-- CONTENT -->
  <div class="container-fluid mt-3 ">
    <div class="row">
      <div class="col-md-8 order-2 order-md-1">
        <div class="card shadow rounded-5" style="height: 83vh; background-color: #4c5b43; overflow: hidden;">
          <div class="scrollable-content" style="height: 100%; overflow-y: auto; padding: 24px; box-sizing: border-box;">
            <?php include("shared/" . $page . ".php"); ?>
          </div>
        </div>
      </div>

      <!-- BANNER -->
      <div class="col-md-4 d-flex flex-column gap-3 py-3 order-1 order-md-2">
        <div class="card shadow p-4 flex-grow-1 d-flex flex-column justify-content-center" style="background: url('images/chessLogo.png') no-repeat center center;  background-size: contain; height: 200px; background-color: #384d2f;">
        </div>

        <!-- BUTTON -->
        <div class="card shadow p-4 flex-grow-1 d-flex flex-column justify-content-center mb-2" style="background-color: #384d2f;">
          <a href="?page=puzzle" class="btn  text-white d-flex justify-content-center align-items-center my-2" style=" font-size: 24px;;">
            <strong>PLAY GAME</strong>
          </a>
          <a href="?page=chessOpening" class="btn text-white d-flex justify-content-center align-items-center my-2" style="font-size: 24px;;">
            <strong>CHESS OPENING</strong>
          </a>
          <a href="?page=ranking" class="btn  text-white d-flex justify-content-center align-items-center my-2" style="font-size: 24px;;">
            <strong>TOP PLAYERS</strong>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
</body>

</html>