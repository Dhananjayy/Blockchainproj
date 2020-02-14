<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BlockChain-My details</title>

   
     <meta name='description' content=''>
    <meta name='viewport' content='width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no'>
      
    <!--Css files-->
    <link rel="Stylesheet" href="css/style.css"/> 
    <link rel="Stylesheet" href="css/HCo_fonts.css" /> 
    <link rel="Stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
    <jsp:include page="menu.jsp"></jsp:include>
	
    <div class="container" > 
        <div class="bodyContainer">
        <div class="panel panel-default mtop20">
		<div class="panel-heading">
          <h3 class="panel-title">My Details</h3>
        </div>
         <div class="panel-body">
         <div class="row" style="margin-top: 50px;margin-bottom: 20px;">
           <div class="col-sm-6">
           
			   patient Name : <label>${patientMaster.first_name}&nbsp;&nbsp;&nbsp;${patientMaster.last_name}</label><br>
			   Address : <label>${patientMaster.city}&nbsp;&nbsp;&nbsp;${patientMaster.state}</label><br>
			   contact no : <label>${patientMaster.contact_no}&nbsp;&nbsp;&nbsp;</label><br>
			   email : <label>${patientMaster.email}&nbsp;&nbsp;&nbsp;</label><br>
           	   Age : <label>${patientMaster.age}</label><br>
           	   Weight : <label>${patientMaster.weight}&nbsp;kg</label><br>
           	   Height : <label>${patientMaster.height}</label><br>
           	   blood group : <label>${patientMaster.blood_group}</label><br>
           </div>
           <div class="col-sm-6">
				<table class="table table-bordered">
				 <thead>
				   <tr>
				     <th>Prescribed Date</th>
				     <th>Symptoms</th>
				     <th>Prescription</th>
				     <th>prescribed By</th>
				   </tr>
				 </thead>
				<tbody>
			   		<c:forEach var="patientHistory" items="${patientHistories}">
			         <tr>
			          <td> <fmt:formatDate pattern = "dd-MM-yyyy" 
         					value = "${patientHistory.prescribedDate}" /></td>
			          <td>${patientHistory.symptoms}</td>
			          <td>${patientHistory.prescription}</td>
			          <td>Dr.&nbsp;${patientHistory.prescribedByName}</td>
			         </tr>
			   		</c:forEach>
			   </tbody>
			   </table>
           </div>
           </div>
           
           
           
         </div>
         </div>
        </div>
       </div>
       
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>