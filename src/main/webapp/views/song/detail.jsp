<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../shared/_layout.jsp" />

<table>
	<tr>
		<td>Song Title</td>
		<td>Duration</td>
		<td>Artist</td>
	</tr>
	<tr>
		<td>${song.title}</td>
		<td>${song.length}</td>
		<td>
			<c:forEach items="${song.getArtists()}" var="artist">
				- ${artist.name}<br>
			</c:forEach>
		</td>

	</tr>

</table>