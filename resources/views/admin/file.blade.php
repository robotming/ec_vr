<html>
<head>
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body>
<form action="{{url('file')}}" enctype="multipart/form-data" method="post">
    <input type="file" name="file" />
    <input type="submit" />
</form>
</body>
</html>