<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<link rel="icon" href="https://static.thenounproject.com/png/3408269-200.png">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="css/style.css">
<title>Music App</title>
</head>
<body>
<h1 id="container">${Welcome}</h1>
<div class="links">
	<a href="${appName}">Home</a>
	<a href="${appName}artist/index">Artists</a>
	<a href="${appName}song/index">Songs</a>
	<a href="${appName}artist/add">Add Artist</a>
	<a href="${appName}song/add">Add Song</a>
</div>
<hr>
</body>
</html>