<jsp:include page="../shared/_layout.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form action="${appName}artist/add" method="post" >
	<div class="form-group">
		<label>Name</label>
		<input type="text" name="name" value="${artist.name}" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Birth Year</label>
		<input type="number" name="birthYear" value="${artist.birthYear}" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Picture</label>
		<input type="text" name="picture" value="${artist.picture}" class="form-control">
	</div>
	
	<input type="hidden" name="id" value="${artist.id}">
	<button type="submit" class="btn btn-primary">Submit</button>
</form>