package com.training.resources;

import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.owlike.genson.Genson;
import com.training.domain.Employee;

@Path("/simple")
public class SimpleResource {

	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String getMessage() {

		return "You Have Configures REST Successfully";
	}

	@Path("/name")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String getEmployee() {

		String empRep;
		Employee emp = new Employee(101, "Gaurav");
		Genson serializer = new Genson();
		empRep = serializer.serialize(emp);

		return empRep;
	}

	@POST
	@Path("/add")
	public String addEmployee(@FormParam("id") long empId, @FormParam("name") String empName) {

		String message = null;
		Employee emp = new Employee(empId, empName);

		message = emp.toString();

		return "One Employee with " + message + " Added";
	}

	@DELETE
	@Path("/delete/{empId}")
	public String deleteEmployee(@PathParam("id") long empId) {

		
		return "One Employee with id " + empId + " Deleted";
	}
}
