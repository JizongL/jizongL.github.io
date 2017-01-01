<!DOCTYPE html>
<html>
<head>
  <title>getElementById example</title>
  <script>
  function changeColor(newColor) {
    var elem = document.getElementById("para1");
    elem.style.color = newColor;
  }

function changeFont(newFont){
	var elem2 = document.getElementById("dar");
	elem2.style.fontsize = newFont;
}

  </script>
</head>
<body>
  <p id="para1">Some text here</p>
  <button onclick="changeColor('blue');">blue</button>
  <button onclick="changeColor('red');">red</button>

<p id = "dar">some more text here</p>
  <button onclick="changeFont('10');">10</button>
  <button onclick="changeFont('5');">5</button>
</body>
</html>