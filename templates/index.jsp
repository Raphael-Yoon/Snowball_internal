<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SnowBall</title>
</head>
<body>
    {% include 'navi.jsp' %}
    <div style="text-align: center;">
        <img src="{{ url_for('static', filename='img/snowball.jpg')}}" width="500" alt="None">
    </div>
</body>
</html>