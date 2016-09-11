<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    <%@include file='checkbox.css' %>
</style>
<html>
<head>

    <title>Image list</title>
</head>
<body>
<div align="center">
    <form action="/deletePhotos" method="POST">
        <label style="display:none;">"${id=0}"</label>
        <c:forEach items="${photosList}" var="photo">
            </br><input type="checkbox" class="checkbox" id="checkbox+${id}" name="checkbox" value="${photo.key}">
            <label for="checkbox+${id}"><img src="/photo/${photo.key}" width="100" height="100"/></label>
            ${photo.key}
            <label style="display:none;">"${id=id+1}"</label>
        </c:forEach>
        </br> </br><input type="submit" value="delete photos"/>
    </form>
    </br><input type="submit" value="Back" onclick="window.location='/';"/>
</div>
</body>
</html>
