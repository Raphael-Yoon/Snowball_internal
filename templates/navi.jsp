<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>snowball</title>
    <style>
        .top-links {
            display: flex;
            justify-content: space-between;
            background-color: #f0f0f0;
            padding: 10px;
        }
        .top-link {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <a href="/"><img src="{{ url_for('static', filename='img/logo.jpg')}}" width="200" alt="None"></a>
    <ul class="nav nav-pills">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">ITGC</a>
            <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/link1_1">PBC</a></li>
            <li><a class="dropdown-item" href="/link1_2">설계평가</a></li>
            <li><a class="dropdown-item" href="/link1_3">운영평가</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">IT Dependency</a>
            <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/link2_1">프로그램 Souurce 분석</a></li>
            <li><a class="dropdown-item" href="/link9">추가기능 1</a></li>
            <li><a class="dropdown-item" href="/link9">추가기능 2</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/link0">교육자료</a>
        </li>
      </ul>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>