<!DOCTYPE html>  
<html>
<head>
</head>
<body>

   <script>
     function clickhere(){
              var main = document.myform.name.value;
              document.getElementById('demo').innerHTML = main;

              var genderlen = document.myform.gender.length;
              for(i=0; i<genderlen; i++){
                   var check =  document.myform.gender[i].checked;
                   if(check){
                    genvalu = document.myform.gender[i].value; 
                   }
              } 
             document.getElementById('gendershow').innerHTML = genvalu; 

              var department = document.myform.dep.length;
              for(i=0; i<department; i++){
                   var dpcheck =  document.myform.dep[i].checked;
                   if(dpcheck){
                    depvalue = document.myform.dep[i].value; 
                   }
              } 
             document.getElementById('depshow').innerHTML = depvalue; 

             var index = document.myform.coder.selectedIndex;
             var codervalue = document.myform.coder[index].value;
             document.getElementById('codershow').innnerHTML = codervalue;

      } 
     
   </script> 
   <table class="tblone">
     <tr>
       <td colspan="2" align="center">Output</td>
     </tr>
     <tr>
       <td>Name</td>
       <td><span id="demo"></span></td>
     </tr>
     <tr>
       <td>Gender</td>
       <td><span id="gendershow"></span></td>
     </tr>
  
   <tr>
       <td>Department</td>
       <td><span id="depshow"></span></td>
     </tr>
     <tr>
       <td>Coder</td>
       <td><span id="codershow"></span></td>
     </tr>
</table>
  
  <form action="" method="POST" name="myform" id="myform" onsubmit="clickhere(); return false;">
    <table>
          <tr>
            <td>Name :</td>
            <td><input type="text" name="name" required="1"></td>
          </tr>
          <tr>
            <td>Gender :</td>
            <td>
              <input type="radio" name="gender" value="male">Male
              <input type="radio" name="gender" value="Female">Female
            </td>
          </tr>
          <tr>
            <td>Department :</td>
            <td>
              <input type="checkbox" name="dep" value="CSE">CSE
              <input type="checkbox" name="dep" value="Physics">Physics
              <input type="checkbox" name="dep" value="Maths">Maths
            </td>
          </tr>
          <tr>
            <td>Coder :</td>
            <td>
              <select name="coder" required="1">
                <option value="">select One</option>
                <option value="php">php</option>
                <option value="java">java</option>
                <option value="c#">C#</option>
              </select>
            </td>
          </tr>
          <tr>
          
            <td>
              <input type="submit" name="submit" value="submit">
              <input type="reset" value="clear">
          </td>
          </tr>
    </table>
  </form>

</body>
</html>