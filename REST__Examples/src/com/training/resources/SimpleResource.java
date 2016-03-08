package com.training.resources;

import java.util.HashMap;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

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
	public String deleteEmployee(@PathParam("empId") long empId) {

		return "One Employee with id " + empId + " Deleted";
	}

	@GET
	@Path("/findAll")
	@Produces(MediaType.APPLICATION_JSON)
	public Response findAllEmployees(@QueryParam("dept") String department) {

		HashMap<String, Employee> list = new HashMap<String, Employee>();

		list.put("HR", new Employee(101, "Ramesh"));
		list.put("IT", new Employee(102, "Gamesh"));
		list.put("AD", new Employee(103, "Suresh"));

		Employee found = list.get(department);
		return Response.status(200).entity(found).build();
	}
}
