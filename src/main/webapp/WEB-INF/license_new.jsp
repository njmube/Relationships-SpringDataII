<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1>New License</h1>
<ul><li><a href="/">Home</a></li></ul>

		 <form:form method="POST" action="/licenses/new" modelAttribute="license">
		 	<form:hidden path="id"/>
		 	
		    <%-- hidden field value="Hello JavaInterviewPoint" --%> 
		    <form:label path="number">
		    <form:hidden  path="number"  /></form:label>
		    <span style="color:red"><form:errors path="number"/></span>
		    <%-- HIDDEN FIELD --%>
		 	
		    <form:label path="person">Person: 
		    <form:select path="person"  >
		    
			<%-- itemValue="firstName" --%>
			
		        <form:options items="${allpersons}" itemValue="id"  itemLabel="firstName" />
			</form:select>
		    </form:label>
		    <span style="color:red"><form:errors path="person"/></span>
		    <br/>
		    
		    <form:label path="state">State:
	 <select>
	<option value="AL">Alabama</option>
	<option value="AK">Alaska</option>
	<option value="AZ">Arizona</option>
	<option value="AR">Arkansas</option>
	<option value="CA">California</option>
	<option value="CO">Colorado</option>
	<option value="CT">Connecticut</option>
	<option value="DE">Delaware</option>
	<option value="DC">District Of Columbia</option>
	<option value="FL">Florida</option>
	<option value="GA">Georgia</option>
	<option value="HI">Hawaii</option>
	<option value="ID">Idaho</option>
	<option value="IL">Illinois</option>
	<option value="IN">Indiana</option>
	<option value="IA">Iowa</option>
	<option value="KS">Kansas</option>
	<option value="KY">Kentucky</option>
	<option value="LA">Louisiana</option>
	<option value="ME">Maine</option>
	<option value="MD">Maryland</option>
	<option value="MA">Massachusetts</option>
	<option value="MI">Michigan</option>
	<option value="MN">Minnesota</option>
	<option value="MS">Mississippi</option>
	<option value="MO">Missouri</option>
	<option value="MT">Montana</option>
	<option value="NE">Nebraska</option>
	<option value="NV">Nevada</option>
	<option value="NH">New Hampshire</option>
	<option value="NJ">New Jersey</option>
	<option value="NM">New Mexico</option>
	<option value="NY">New York</option>
	<option value="NC">North Carolina</option>
	<option value="ND">North Dakota</option>
	<option value="OH">Ohio</option>
	<option value="OK">Oklahoma</option>
	<option value="OR">Oregon</option>
	<option value="PA">Pennsylvania</option>
	<option value="RI">Rhode Island</option>
	<option value="SC">South Carolina</option>
	<option value="SD">South Dakota</option>
	<option value="TN">Tennessee</option>
	<option value="TX">Texas</option>
	<option value="UT">Utah</option>
	<option value="VT">Vermont</option>
	<option value="VA">Virginia</option>
	<option value="WA">Washington</option>
	<option value="WV">West Virginia</option>
	<option value="WI">Wisconsin</option>
	<option value="WY">Wyoming</option>
</select>				
		    <form:input path="state"/></form:label>
		    <span style="color:red"><form:errors path="state"/></span>
		    <br/>
		    
		    Expiration date: <%-- <form:label path="expiration_date">  
		    <form:input path="expiration_date" type="date"/></form:label> --%>
		    <input type="date" name="myDate" />
		    <span style="color:red"><form:errors path="expiration_date"/></span>
		    <br/>
		    
		    
		    <input type="submit" value="Submit"/>
		</form:form>