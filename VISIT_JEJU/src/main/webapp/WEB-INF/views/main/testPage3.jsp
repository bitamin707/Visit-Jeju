<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
</script>
</head>
<body>



<c:forEach items="${listTest }" var="boardDtoTest">
		${boardDtoTest.spring }
		${boardDtoTest.summer }
		${boardDtoTest.autumn }
		${boardDtoTest.winter }
		${boardDtoTest.male }
		${boardDtoTest.female }
</c:forEach>
</body>
</html>