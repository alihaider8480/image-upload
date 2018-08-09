<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <link rel="stylesheet" type="text/css" th:href="@{/css/style.css}">
</head>
<body>
<main>
<h1>Spring boot images upload</h1>
<p>This is a working example of saving images to the disk and displaying them through thymeleaf and Spring Boot.</p>
<form method="POST" action="/imageu/upload" enctype="multipart/form-data">
    <input type="file" name="file" />
    <input type="submit" value="Submit" />
</form>
<a href="/imageu/ima">show image</a>
</main>
</body>
</html>