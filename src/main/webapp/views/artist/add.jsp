<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}artist/add" method="post">
	<div class="form-group">
		<label>Artist Name</label>
		<input type="text" name="name" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Birth Year</label>
		<input type="number" name="birthYear" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Picture</label>
		<input type="text" name="picture" class="form-control">
	</div>
	
	<button type="submit" class="btn btn-primary">Submit</button>
</form>