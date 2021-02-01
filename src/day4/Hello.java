package day4;

import java.util.HashMap;
import java.util.Map;

public class Hello {
	
	public static void main(String[] args) {
		
		// HashMap<String, String> map = new HashMap<>();
		
		// Inheritance And Polymorphism
		Map<String, String> map = new HashMap<>();
		map.put("city", "mumbai");
		// map.put("id", 100);
		map.put("id", "100");
		
		String o1 = map.get("city");
		
		
		// Problems with this approach :: Have to TypeCast 
		//  Need to be little careful while Typecasting
		Map<String, Object> map1 = new HashMap<>();
		map1.put("city", "mumbai");
		map1.put("id", 100);
		
		//String o2 = (String)map1.get("city");
		int o2 = (Integer)map1.get("idd");
		
		System.out.println(o1 + " " + o2);
	
	}
}
