<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
</head>
<body>
    <h1> Admin Dashboard</h1>
    <p>Choose your favorite Web language:</p>

<form>
    <p>radio</p>
  <input type="radio" id="html" name="fav_language" value="HTML">
  <label for="html">HTML</label><br>
  <input type="radio" id="css" name="fav_language" value="CSS">
  <label for="css">CSS</label><br>
  <input type="radio" id="javascript" name="fav_language" value="JavaScript">
  <label for="javascript">JavaScript</label> <br>

  <p>checkbox</p>
  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
  <label for="vehicle1"> I have a bike</label><br>
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
  <label for="vehicle2"> I have a car</label><br>
  <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
  <label for="vehicle3"> I have a boat</label><br>

  <p>textarea</p>
<textarea name="" id="" cols="30" rows="10">
    dummy data
</textarea> <br>

<input type="button" onclick="alert('Hello World!')" value="Click Me!">
</form>
</body>
</html> -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .animated-icon {
            position: fixed;
            top: 50px;
            left: 20%;
            transform: translateX(100%);
            transition: top 1s;
            z-index: 999;
        }

        /* Additional styles for the icon */
        .fa-arrow-down {
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <!-- Your page content here -->
        <h1>Welcome to admin dashboard</h1>
        <p>Scroll down to see the animated icon</p>
        <div style="height: 2000px;"></div>
    </div>

    <div class="animated-icon" id="animatedIcon">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-square-fill" viewBox="0 0 16 16">
            <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v5.793l2.146-2.147a.5.5 0 0 1 .708.708l-3 3a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L7.5 10.293V4.5a.5.5 0 0 1 1 0z"/>
        </svg>
    </div>

    <script src="https://kit.fontawesome.com/a076d05399.js"></script> <!-- Font Awesome CDN for icons -->
    <script>
        window.onscroll = function() { scrollFunction() };

        function scrollFunction() {
            const icon = document.getElementById('animatedIcon');
            const scrollPosition = window.pageYOffset;

            icon.style.top = 200 + scrollPosition * 1 + 'px'; /* Adjust the multiplier for different speeds */
        }
    </script>
</body>
</html>
