<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
        .calculator {
            width: 220px;
            margin: 50px auto;
            border: 2px solid #ccc;
            border-radius: 5px;
            padding: 10px;
        }
        h1 {
        	text-align: center;
        }

        #display {
            grid-column: span 4;
            width: 95%;
            margin-bottom: 10px;
            padding: 5px;
        }

        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 5px;
        }

        input {
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
            background-color: #f0f0f0;
            border: none;
            border-radius: 5px;
        }

        input:hover {
            background-color: #e0e0e0;
        }
    </style>
    </head>
<body>
	<div class="calculator">
        <form class="buttons" action="calculate" method="post">
       
        	<input type="text" id="display" name="display">
            <input type="button" value="C" onclick="clearDisplay()">
            <input type="button" value="%" onclick="appendToDisplay('%')">
            <input type="button" value="." onclick="appendToDisplay('.')">
            <input type="button" value="/" onclick="appendToDisplay('/')">
            <input type="button" value="7" onclick="appendToDisplay('7')">
            <input type="button" value="8" onclick="appendToDisplay('8')">
            <input type="button" value="9" onclick="appendToDisplay('9')">
            <input type="button" value="*" onclick="appendToDisplay('*')">
            <input type="button" value="4" onclick="appendToDisplay('4')">
            <input type="button" value="5" onclick="appendToDisplay('5')">
            <input type="button" value="6" onclick="appendToDisplay('6')">
            <input type="button" value="-" onclick="appendToDisplay('-')">
            <input type="button" value="1" onclick="appendToDisplay('1')">
            <input type="button" value="2" onclick="appendToDisplay('2')">
            <input type="button" value="3" onclick="appendToDisplay('3')">
            <input type="button" value="+" onclick="appendToDisplay('+')">
            <input type="button" value="0" onclick="appendToDisplay('0')">
            <input type="submit" value="=">
        </form>
    </div>
   
    <script>
        function appendToDisplay(value) {
            document.getElementById('display').value += value;
        }

        function clearDisplay() {
            document.getElementById('display').value = '';
        }
    </script>
</body>

</html>