<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../shared/_layout.jsp" />

<table>
	<tr>
		<th>Song Title</th>
		<th>Duration</th>
		<th>Action</th>
	</tr>
	<tr>
		<c:forEach items="${songs}" var="song">
			<td>
				<a href="${appName}song/detail?id=${song.id}">${song.title}</a>
			</td>
			<td>${song.length}</td>
			<td>
				<a href="${appName}song/edit?id=${song.id}">Edit</a> |
				<a href="${appName}song/delete?id=${song.id}">Delete</a>
			</td>
		</c:forEach>
	</tr>
</table>