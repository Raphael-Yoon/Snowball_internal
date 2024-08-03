<!DOCTYPE html>
<html>
	<head>
		<link href="{{ url_for('static', filename='css/style.css')}}" rel="stylesheet" />
		<title>SnowBall</title>
	</head>
	<body>
		{% include 'navi.jsp' %}
		<form class = "grid" action = "/design_generate" method = "POST" enctype="multipart/form-data">
			<table>
				<tr>
					<td><input type="file" id="param3" name="param3"></td>
					<td><input type="Submit" value="Analysis" formaction="/source_analysis"></td>
				</tr>
			</table>
		</form>
	</body>
</html>