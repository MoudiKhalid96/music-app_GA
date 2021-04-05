<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../shared/_layout.jsp" />

<table>
	<tr>
		<th>Name</th>
		<th>Picture</th>
		<th>Action</th>
	</tr>
	<c:forEach items="${artists}" var="artist">
		<tr>
	
			<td>
				<a href="${appName}artist/detail?id=${artist.id}">${artist.name}</a>
			</td>
			<td>
				<img alt="artist pictuer" src="${artist.picture}" width="100px" height="100px">
			</td>
			<td>
				<a href="${appName}artist/edit?id=${artist.id}">Edit</a> | 
				<a href="${appName}artist/delete?id=${artist.id}">Delete</a>
			</td>
		</tr>
	</c:forEach>
</table>