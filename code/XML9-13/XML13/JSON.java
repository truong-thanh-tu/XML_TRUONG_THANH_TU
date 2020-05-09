package XML13;

import java.io.FileWriter;
import java.io.IOException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class JSON {
	private static final Object employee0bject2 = null;

	@SuppressWarnings("unchecked")
			public static void main( String[] args )
			{
			//First Employee
			JSONObject employeeDetails = new JSONObject();
			employeeDetails.put("firstName", "Dang");
			employeeDetails.put("lastName", "Kim Thi");
			employeeDetails.put("website", "gpgelgag.vn");
			JSONObject employeeObject = new JSONObject();
			employeeObject.put("employee", employeeDetails);
			//Second Employee
			JSONObject employeeDetailsZ = new JSONObject();
			employeeDetailsZ.put("firstName", "Code");
			employeeDetailsZ.put("lastName", "Lean");
			employeeDetailsZ.put("website", "cgdglgag.com");
			JSONObject employeeObjet = new JSONObject();
			employeeObjet.put("employee", employeeDetailsZ);
			//Add employees to list
			JSONArray employeeList = new JSONArray();
			employeeList.add(employeeObject);
			employeeList.add(employee0bject2);
			//Write JSON file
			try (FileWriter file = new FileWriter( "./src/employees.json")) {
			file.write(employeeList.toJSONString());
			file.flush();
			} catch (IOException e) {
			e.printStackTrace();
			}
			}
}
