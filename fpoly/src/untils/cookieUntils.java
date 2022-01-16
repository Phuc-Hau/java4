package untils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class cookieUntils{
       
    public static Cookie add(String name, String value,int hours, HttpServletResponse response) {
    	Cookie cookies = new Cookie(name,value);
    	cookies.setMaxAge(hours*60*60);
    	cookies.setPath("/");
    	response.addCookie(cookies);
    	return cookies;
    }

    public static String get(String name,HttpServletRequest request) {
    	Cookie[] cookies = request.getCookies();
    	if(cookies != null) {
    		for (Cookie cookie : cookies) {
				if(cookie.getName().equalsIgnoreCase(name)) {
					return cookie.getValue();
				}
			}
    	}
    	return "";
    }
}
