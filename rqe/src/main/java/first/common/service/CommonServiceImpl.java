package first.common.service;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

@Service("commonService")
public class CommonServiceImpl implements CommonService {

	@Override
	public Map dataSheetListDetail() throws Exception {
        URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
        
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String bmtid = URLEncoder.encode("171221-07", "UTF-8");
        	String rqcode = URLEncoder.encode("detail", "UTF-8");
        	String cp = URLEncoder.encode("Bluelink 최소", "UTF-8");
        	
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&bmtid=" + bmtid
        			+ "&rqcode=" + rqcode
        			+ "&cp=" + cp;        			 
        	
//            url = new URL("http://uw.iptime.org:4321/web/datasheet/detail?" + param);		// 운영서버
            url = new URL("http://192.168.0.20:8080//web/datasheet/detail?" + param);		// 테스트서버 (김옥겸차장PC)
            
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            
            JSONParser jsonParser = new JSONParser();
            JSONObject jsonObject = (JSONObject) jsonParser.parse(str);
            JSONObject datasheet = (JSONObject) jsonObject.get("detail");
            
            System.out.println(datasheet);

            //내용을 읽어서 화면에 출력한다..
 
     
       System.out.println("==============================================================================\n");
       return datasheet;
	}
	
	
	@Override
	public List Comprehensive_pathCostStatus()throws Exception {
		URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String rqcode = URLEncoder.encode("comprehensive", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date 
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/Comprehensive?" + param);		// 운영서버
//            url = new URL("http://192.168.0.20:8080/web/Comprehensive?" + param);		// 테스트서버 (김옥겸차장PC)
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            JSONParser jsonParser = new JSONParser();
            
        //  JSONArray datasheet = (JSONArray) jsonParser.parse(str);
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            JSONArray datasheet = (JSONArray) jsonObject.get("pathCostStatus");
            
            System.out.println(datasheet);
            
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}
	
	@Override
	public List Comprehensive_evaluationSectionStatus()throws Exception {
		URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String rqcode = URLEncoder.encode("comprehensive", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date 
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/Comprehensive?" + param);		// 운영서버
//            url = new URL("http://192.168.0.20:8080/web/Comprehensive?" + param);		// 테스트서버 (김옥겸차장PC)
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            JSONParser jsonParser = new JSONParser();
            
        //  JSONArray datasheet = (JSONArray) jsonParser.parse(str);
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            JSONArray datasheet = (JSONArray) jsonObject.get("evaluationSectionStatus");
            
            System.out.println(datasheet);
            
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}


	@Override
	public List Comprehensive_distanceGraph() throws Exception {
		URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String rqcode = URLEncoder.encode("comprehensive", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date 
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/Comprehensive?" + param);		// 운영서버
//            url = new URL("http://192.168.0.20:8080/web/Comprehensive?" + param);		// 테스트서버 (김옥겸차장PC)
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            JSONParser jsonParser = new JSONParser();
            
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            JSONArray datasheet = (JSONArray) jsonObject.get("distanceGraph");
            
            System.out.println(datasheet);
            
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}


	@Override
	public List Comprehensive_timeGraph() throws Exception {
		URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String rqcode = URLEncoder.encode("comprehensive", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date 
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/Comprehensive?" + param);		// 운영서버
//            url = new URL("http://192.168.0.20:8080/web/Comprehensive?" + param);		// 테스트서버 (김옥겸차장PC)
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            JSONParser jsonParser = new JSONParser();
            
        //  JSONArray datasheet = (JSONArray) jsonParser.parse(str);
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            JSONArray datasheet = (JSONArray) jsonObject.get("timeGraph");
            
            System.out.println(datasheet);
            
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}


	@Override
	public List Comprehensive_chargeGraph() throws Exception {
		URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String rqcode = URLEncoder.encode("comprehensive", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date 
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/Comprehensive?" + param);		// 운영서버
//            url = new URL("http://192.168.0.20:8080/web/Comprehensive?" + param);		// 테스트서버 (김옥겸차장PC)
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            JSONParser jsonParser = new JSONParser();
            
        //  JSONArray datasheet = (JSONArray) jsonParser.parse(str);
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            JSONArray datasheet = (JSONArray) jsonObject.get("chargeGraph");
            
            System.out.println(datasheet);
            
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}

	// 평가구간 현황(요일, 시간) 집계 API --> DB 접속시 API키값 가져오지 못해 미구현 (18.07.31 13:52 기준)
	@Override
	public List Section() throws Exception {
		URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String rqcode = URLEncoder.encode("section", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date 
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/evaluation/section?" + param);		// 운영서버
//            url = new URL("http://192.168.0.20:8080/web/evaluation/section?" + param);		// 테스트서버 (김옥겸차장PC)
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            JSONParser jsonParser = new JSONParser();
            
        //  JSONArray datasheet = (JSONArray) jsonParser.parse(str);
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            System.out.println(jsonObject);
            JSONArray datasheet = (JSONArray) jsonObject.get("section");
            
            System.out.println(datasheet);
            
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}
	
	//평가 구간 선/후착 집계 API  --> DB 접속시 API키값 가져오지 못해 미구현 (18.07.31 13:52 기준)
	@Override
	public List arrival_order() throws Exception {
		URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String rqcode = URLEncoder.encode("arrival_order", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date 
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/evaluation/arrival_order?" + param);		// 운영서버
//            url = new URL("http://192.168.0.20:8080/web/evaluation/section?" + param);		// 테스트서버 (김옥겸차장PC)
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            JSONParser jsonParser = new JSONParser();
            
        //  JSONArray datasheet = (JSONArray) jsonParser.parse(str);
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            System.out.println(jsonObject);
            JSONArray datasheet = (JSONArray) jsonObject.get("arrival_order");
            
            System.out.println(datasheet);
            
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}

	// 선착 대비 도착 지연 시간 집계 API  --> DB 접속시 API키값 가져오지 못해 미구현 (18.07.31 14:17 기준)
	@Override
	public List delay_tm() throws Exception {
		URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String rqcode = URLEncoder.encode("delay_tm", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date 
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/evaluation/delay_tm?" + param);		// 운영서버
//            url = new URL("http://192.168.0.20:8080/web/evaluation/delay_tm?" + param);		// 테스트서버 (김옥겸차장PC)
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            JSONParser jsonParser = new JSONParser();
            
        //  JSONArray datasheet = (JSONArray) jsonParser.parse(str);
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            System.out.println(jsonObject);
            JSONArray datasheet = (JSONArray) jsonObject.get("delay_tm");
            
            System.out.println(datasheet);
            
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}


	@Override
	public List score_delay() throws Exception {
		URL url;	//URL 주소 객체
        URLConnection connection;	//URL접속을 가지는 객체
        InputStream is = null;	//URL접속에서 내용을 읽기위한 Stream
        OutputStream os = null;		//
        InputStreamReader isr = null;
        BufferedReader br = null;
               	
        	String userid = URLEncoder.encode("user01", "UTF-8");
        	String start_date = URLEncoder.encode("2017-12-21", "UTF-8");
        	String end_date = URLEncoder.encode("2017-12-22", "UTF-8");
        	String week_zone = URLEncoder.encode("all", "UTF-8");
        	String time_zone = URLEncoder.encode("am_peak,pm_peak,weekend_all", "UTF-8");
        	String distance_zone = URLEncoder.encode("medium_distance,long_distance,longest_distance", "UTF-8");
        	String rqcode = URLEncoder.encode("score_delay", "UTF-8");
        	
            //URL객체를 생성하고 해당 URL로 접속한다..
        	String param = "userid=" + userid 
        			+ "&start_date=" + start_date 
        			+ "&end_date=" + end_date
        			+ "&week_zone=" + week_zone
        			+ "&time_zone=" + time_zone
        			+ "&distance_zone=" + distance_zone
        			+ "&rqcode=" + rqcode;
        	
            url = new URL("http://uw.iptime.org:4321/web/detail_data/score_delay?" + param);		// 운영서버
//            url = new URL("http://192.168.0.20:8080/web/evaluation/delay_tm?" + param);		// 테스트서버 (김옥겸차장PC)
            connection = url.openConnection();

            //내용을 읽어오기위한 InputStream객체를 생성한다..
            is = connection.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            
            String str = br.readLine();
            JSONParser jsonParser = new JSONParser();
            
        //  JSONArray datasheet = (JSONArray) jsonParser.parse(str);
            JSONObject jsonObject = (JSONObject)jsonParser.parse(str);
            System.out.println(jsonObject);
            JSONArray datasheet = (JSONArray) jsonObject.get("score_delay");
            
            System.out.println(datasheet);
            
       System.out.println("==============================================================================\n");
       
       return datasheet;
	}
	
	}