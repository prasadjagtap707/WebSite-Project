<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="WebSite_Project.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<script>

    </script>
    <style type="text/css">
        .auto-style1 {
            width: 201px;
        }
    </style>
</head>
<body>
   <center>
	   <h1>Employee Details</h1>
		<table border="6">
			<thead>
				<tr>
					<th>First Name</th>
					<td class="auto-style1"><input type="text" name="fname" id="fname"></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>Last Name</th>
					<td class="auto-style1"><input type="text" name="lname" id="lname"></td>
				</tr>
				<tr>
					<th>Email</th>
					<td class="auto-style1"><input type="text" name="email" id="email"></td>
				</tr>
				<tr>
					<th>Department</th>
					<td class="auto-style1"><input type="text" name="Dname" id="Dname"></td>
				</tr>
				<tr>
					<th>Salary</th>
					<td class="auto-style1"><input type="text" name="salary" id="salary"></td>
				</tr>
				<tr>
					<th>Age</th>
					<td class="auto-style1"><input type="text" name="age" id="age"></td>
				</tr>
				<tr id="btna">
					<td colspan="2">&nbsp;</td>
				</tr>
			</tbody>
		</table>
	   <input type="button" name="button" id="btn" value="Add" onclick="AddRow()"></br>
	   	   </br>

		<table border="6" id="show">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Department</th>
					<th>Salary</th>
					<th>Age</th>
				</tr>
			</thead>
		</table>
	</center>
	
	<script>
		
		var list1 = [];
		var list2 = [];
		var list3 = [];
		var list4 = [];
		var list5 = [];
        var list6 = [];


		var n = 1;
		var x = 0;

		function AddRow(){

			var AddRown = document.getElementById('show');
			var NewRow = AddRown.insertRow(n);

			list1[x] = document.getElementById("fname").value;
			list2[x] = document.getElementById("lname").value;
			list3[x] = document.getElementById("email").value;
            list4[x] = document.getElementById("Dname").value;
            list5[x] = document.getElementById("salary").value;

			list6[x] = document.getElementById("age").value;

			var cel1 = NewRow.insertCell(0);
			var cel2 = NewRow.insertCell(1);
			var cel3 = NewRow.insertCell(2);
			var cel4 = NewRow.insertCell(3);
			var cel5 = NewRow.insertCell(4);
            var cel6 = NewRow.insertCell(5);

			cel1.innerHTML = list1[x];
			cel2.innerHTML = list2[x];
			cel3.innerHTML = list3[x];
			cel4.innerHTML = list4[x];
			cel5.innerHTML = list5[x];
            cel6.innerHTML = list6[x];



			n++;
			x++;
		}

    </script>
</body>
</html>
