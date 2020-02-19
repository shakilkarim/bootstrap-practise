<!DOCTYPE html>  
<html>
<head>
</head>
<body>
  <script>
    function form(){
        var name = document.myform.Username.value;
        var showData = "Username"+name;
        document.getElementById('output').innerHTML = showData;
    }
  </script>
  <div id="output"></div>
  <form action="" method="POST" name="myform" id="myform" onsubmit="form(); return false;">
    <table>
          <tr>
            <td>Username:</td>
            <td><input type="text" name="Username" required="1"></td>
          </tr>
           <tr>
            <td>Email:</td>
            <td><input type="text" name="email" required="1"></td>
          </tr>
          <tr>
            <td></td>
            <td><input type="submit" value="submit">
            <input type="reset" value="clear">
          </td>
          </tr>
    </table>
  </form>
</body>
</html>