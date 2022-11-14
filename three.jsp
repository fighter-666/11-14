<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算器题</title>
    <script>
        function operater(){
            var num1=document.form1.num1.value;
            var num2=document.form1.num2.value;
            if(num1==""||num2==""){
                alert("参与计算的操作数的数值不能为空");
                return false;
            }
            if(isNaN(num1)){
                alert("第一个数不是数值型数据，请确认！")
                return false;
            }
            if (isNaN(num2)){
                alert("第二个数不是数值型数据，请确认！")
                return false;
            }
            var operValue=document.form1.oper.value;
            var resultValue =0;
            if(operValue=="0"){
                resultValue =parseFloat(num1)+parseFloat(num2);
            }
            if(operValue=="1"){
                resultValue =parseFloat(num1)-parseFloat(num2);
            }
            if(operValue=="2"){
                resultValue =parseFloat(num1)*parseFloat(num2);
            }
            if(operValue=="3"){
                if(num2==0){
                    alert("除数不能为0，请确认！");
                }
                resultValue = porseFloat(num1)/porseFloat(num2);
            }
            document.form1.result.value=resultValue;
        }
    </script>
</head>
<body bgcolor="pink">
<div>
  			<span style="float:left">
  			 <a href="one.jsp">第一题 </a>
  			</span>
  			<span style="margin-left:600px">
  			 <a href="two.jsp">第二题 </a>
  			</span>
  			<span style="float:right">
  			 <a href="three.jsp">第三题 </a>
  			</span>
  		</div><br>
<h3 >
    <form  name="form1" action="">
    <hr size="2"/>
    <p>请输入第一个数:<input type="text" name="num1"></p>
    <p>请选择运算方式：
        <select name="oper">
            <option value="0">+</option>
            <option value="1">-</option>
            <option value="2">*</option>
            <option value="3">/</option>
        </select>
    </p>
    <p>请输入第二个数：<input type="text" name="num2"></p>
    <p><input type="button" value="计算" onclick="operater()">
        <input type="reset" value="归零" ></p>
    <p>计算结果为:<input type="text" name="result" disabled></p>
</form>
</h3>
</body>
</html>