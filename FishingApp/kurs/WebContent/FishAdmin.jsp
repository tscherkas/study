<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>Available fish</h2>
		<table id="tableId">
			<tr>
				<th>name</th>
				<th>description</th>
				<th>price</th>

			</tr>

			<s:iterator value="fishsList">
				<tr>
					<td style="display:none;"><s:property value="id" /></td>
					<td><s:property value="name" /></td>
					<td><s:property value="description" /></td>
					<td><s:property value="price" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
	<div>
		<h3>Add new fish</h3>
		<s:form action="AddFish">
			<s:textfield name="fishBean.name" label="NAME"></s:textfield>
			<s:textfield name="fishBean.description" label="DESCRIPTION"></s:textfield>
			<s:textfield name="fishBean.price" label="PRICE"></s:textfield>
			<s:submit></s:submit>
		</s:form>
	</div>
	<div>
		<h3>Update fish info</h3>
		<s:form action="UpdateFish">
			<s:hidden id="updateId" name="fishBean.id"></s:hidden>
			<s:textfield id="updateName" name="fishBean.name" label="NAME"></s:textfield>
			<s:textfield id="updateDescription" name="fishBean.description" label="DESCRIPTION"></s:textfield>
			<s:textfield id="updatePrice" name="fishBean.price" label="PRICE"></s:textfield>
			<s:submit></s:submit>
		</s:form>
	</div>
	
<script type="text/javascript">
var table = document.getElementById("tableId");
if (table != null) {
    for (var i = 0; i < table.rows.length; i++) {
        table.rows[i].onclick = function () {
            tableText(this);
        };
    }
}

function tableText(tablerow) {
    //var tablerow = tableCell.parentElement;
    var id = tablerow.cells[0].innerHTML;
    var name = tablerow.cells[1].innerHTML;
    var description = tablerow.cells[2].innerHTML;
    var price = tablerow.cells[3].innerHTML;
    

    document.getElementById("updateId").value = id;
    document.getElementById("updateName").value = name;
    document.getElementById("updateDescription").value = description;
    document.getElementById("updatePrice").value = price;
}
</script>
</body>
</html>