<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title><s:text name="title" /></title>
		<link rel="shortcut icon" href='<s:url value="/favicon.ico"/>' />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">      
		
		<style type="text/css">
		.footer {
  			position: absolute;
  			bottom: 0;
  			width: 100%;  
  			height: 90px;
  			}
  			html {
  				position: relative;
  				min-height: 100%;
				}
		body {  
  			margin-bottom: 90px;
			}
		</style>   
	</head>       
	
	<body>	
	
		<div class="container">
			<div class="col-lg-6">
			 <h3><s:text name="title"/></h3>
			 	<s:if test="hasFieldErrors()">
				 	<div class="alert alert-danger" role="alert">
	  					<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
	  					<span class="sr-only">Error:</span>
	  						<s:text name="errors"/> 
					</div>
				</s:if>
				<s:form action="submitForm" theme="simple" method="POST">
			  		
			  		<div class="form-group <s:if test='hasFieldErrors().containsKey(name)'>has-error</s:if>">			  		
			    		<label for="name"><s:text name="field.name"/></label>
			   			 <s:textfield name="name" cssClass="form-control" />  
			   			 <s:fielderror fieldName="name" cssClass="help-block" cssStyle="color:red"/>			   			 
			  		</div>	 
			  		<div class="form-group <s:if test='hasFieldErrors().containsKey(email)'>has-error</s:if>">			  		
			    		<label for="email"><s:text name="field.email"/></label>
			   			 <s:textfield name="email" cssClass="form-control" />  
			   			 <s:fielderror fieldName="email" cssClass="help-block" cssStyle="color:red"/>			   			 
			  		</div>	 
			 
			  		<button type="submit" class="btn btn-primary"><s:text name="button.submit"/></button>
			 
				</s:form>
			</div>
		</div>
		

		<footer class="footer">
	      <div class="container">
	        <hr>
	      	<span style="float:left"><a href="http://danielme.com/tips-struts2/" target="_blank">Tips Struts2</a></span> 
			<span style="float:right"><a href="http://struts.apache.org/development/2.x/" target="_blank"><img src="<s:url value="images/struts2.png"/>" border=0/></a></span>
	      </div>
	    </footer>
		
	</body>
	
</html>