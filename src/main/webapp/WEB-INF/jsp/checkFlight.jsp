<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Flight Details</title>
<style>
    /* Your existing CSS styles */
    body {
        font-family: Arial, sans-serif;
        background: url('https://cdn.pixabay.com/photo/2017/06/05/11/01/airport-2373727_1280.jpg') no-repeat center center fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        color: rgb(25, 40, 89);
    }
    .container {
        width: 70%;
        margin: 50px auto;
        border-radius: 10px;
        background-color: rgba(255, 255, 255, 0.6);
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        color: rgb(25, 40, 89);
    }
    h2 {
        color: rgb(25, 40, 89);
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
        color: rgb(25, 40, 89);
        font-size: 20px;
    }
    .form-group input {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
    }
    .form-group .input-group {
        display: flex;
    }
    .form-group .input-group input[type="date"] {
        flex: 1;
    }
    .form-group .input-group button {
        padding: 10px;
        background-color: rgb(224 25 51);
        color: white;
        border: none;
        cursor: pointer;
        margin-left: 5px;
        border-radius: 5px;
    }
    .form-group .input-group button:hover {
        background-color: #c9302c;
    }
    .available-flights {
        margin-top: 30px;
    }
    .flight {
        border: 1px solid #ddd;
        padding: 15px;
        margin-bottom: 10px;
        background-color: #f9f9f9;
    }
    .flight button {
        padding: 10px;
        background-color: rgb(224 25 51);
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .flight button:hover {
        background-color: #c9302c;
    }
    a {
        color: #007bff;
    	text-decoration: none;
        display: block;
        text-align: center;
        margin-top: 10px;
     }
	 a:hover {
        text-decoration: underline;
	 }
</style>
</head>
<body>

<div class="container">
    <h1>Check Flight Details</h1>
    <form action="/checkFlights" method="post">
        <div class="form-group">
            <label for="routeId">Enter Route Id:</label>
            <input type="text" id="routeId" name="routeId" required>
        </div>
        <div class="form-group">
            <label for="timeOfFlight">Time of Departure:</label>
            <div class="input-group">
                <input type="time" id="timeOfFlight" name="timeOfFlight" required>
                <button type="submit">Search Flights</button>
            </div>
        </div>
    </form>
    <div class="available-flights">
        <h2>Available Flights</h2>
        <c:forEach var="flight" items="${flights}">
            <div class="flight">
                <p><strong>Flight ID:</strong> ${flight.flightNo}</p>
                <p><strong>Flight Name:</strong> ${flight.carrierName}</p>
                <p><strong>Arrival Time:</strong> ${flight.arrival}</p>
                <p><strong>Departure Time:</strong> ${flight.departure}</p>
                <p><strong>Route ID:</strong> ${flight.routeId}</p>
                <p><strong>Capacity:</strong> ${flight.seatCapacity}</p>
                <button type="button">Book</button>
            </div>
        </c:forEach>
        <a href="/index">Back to home</a>
    </div>
</div>

</body>
</html>
