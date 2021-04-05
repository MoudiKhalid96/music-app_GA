<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}song/add" method="post">
	<div class="form-group">
		<label>Song Title</label>
		<input type="text" name="title" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Duration</label>
		<input type="number" step="0.01" name="length" class="form-control">
	</div>
	
	<div class="form-group">
		<div class="form-group">
		<label>Artists</label>
		<select name="artists" class="form-control" multiple="multiple">
			<c:forEach items="${artists}" var="artist">
				<option value="${artist.id}"> ${artist.name} </option>
			</c:forEach>	
		</select>
	</div>
	</div>
	<button type="submit" class="btn btn-primary">Submit</button>
</form>