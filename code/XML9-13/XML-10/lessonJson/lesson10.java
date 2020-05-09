package lessonJson;
import java.io.*;
import java.util.*;
import org.json.*;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class lesson10 {
 public static void main(String[] args) {
	JSONParser parser = new JSONParser();
	try {
		Object obj = parser.parse(new FileReader("./src/course.json"));
		
		JSONObject jsonObject =(JSONObject)obj;
		String name = (String)jsonObject.get("Name");
		String course = (String)jsonObject.get("Course");
		JSONArray subjects = (JSONArray)jsonObject.get("Subjects");
		
		System.out.println("Name: "+name);
		System.out.println("Course: "+course);
		System.out.println("Subjects: ");
		
		Iterator interator = subjects.iterator();
		while(interator.hasNext()) {
			System.out.println(interator.next());
		}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
}
}
