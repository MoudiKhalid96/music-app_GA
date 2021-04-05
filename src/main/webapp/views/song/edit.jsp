<jsp:include page="../shared/_layout.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form action="${appName}song/add" method="post" >
	<div class="form-group">
		<label>Song Title</label>
		<input type="text" name="title" value="${song.title}" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Duration</label>
		<input type="number" step="0.01" name="length" value="${song.length}" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Artists</label>
		<select name="artists" class="form-control" multiple="multiple">
			<c:forEach items="${artists}" var="artist">
				<option value="${artist.id}"> ${artist.name} </option>
			</c:forEach>	
		</select>
	</div>
	
	<input type="hidden" name="id" value="${artist.id}">
	<button type="submit" class="btn btn-primary">Submit</button>
</form>