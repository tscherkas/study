<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/FishingApplication/css/style_fish.css"
	type="text/css">
</head>

<body>
	<table>
		<tr>
			<th>name</th>
			<th>description</th>
			<th>price</th>

		</tr>

		<s:iterator value="fishsList" >
			<tr>
				<td><s:property value="name" /></td>
				<td><s:property value="description" /></td>
				<td><s:property value="price" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>