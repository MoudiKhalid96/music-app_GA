<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../shared/_layout.jsp" />

<table>
	<tr>
		<th>Name</th>
		<th>Birth Year</th>
		<th>Picture</th>
		<th>Songs</th>
	</tr>
	<tr>
		<td>${artist.name}</td>
		<td>${artist.birthYear}</td>
		<td>
			<img src="${artist.picture}" alt="artist picture" width="100px" height="100px">
		</td>
		<td>
			<c:forEach items="${artist.getSongs()}" var="song">
				- ${song.title}<br>
			</c:forEach>
		</td>

	</tr>

</table>