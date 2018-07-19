package first.sample.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

@Service("sampleService")
public class SampleServiceImpl implements SampleService {

	@Override
	public List dataSheetList() throws Exception {	//ParseException, org.json.simple.parser.ParseException
        URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String rqcode = URLEncoder.encode("datasheet", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date 
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/datasheet?" + param);
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            
            JSONParser jsonParser = new JSONParser();
            
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            
            //JSONObject rscode = (JSONObject)jsonObject.get("rscode");
            //String success = (String)rscode.get("success");

            JSONArray datasheet = (JSONArray)jsonObject.get("datasheet");
            
//            List list = new ArrayList();
//            Map map = new HashMap();
//            
//            for(int i =0; i<datasheet.size(); i++) {
//            	JSONObject data = (JSONObject)datasheet.get(i);
//            	
//            	
//            	
//            }
            System.out.println(datasheet);
            
            
           // System.out.println("list : "+ list.toString());
            
//            jsonObject = (JSONObject)parser.parse(responseBody);
           // resData = (JSONArray)jsonObject.get("datasheet");  
            
        
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}
	

}
