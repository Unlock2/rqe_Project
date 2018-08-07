package first.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import first.sample.service.SampleService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SampleController {
	
	private static final Logger logger = LoggerFactory.getLogger(SampleController.class);

	@Resource(name="sampleService")
	private SampleService sampleService;
	
	 @RequestMapping(value="/sample/dataSheetList.do")
	    public ModelAndView dataSheetList() throws Exception{
		 System.out.println("Operating :: dataSheetList.do");
		 System.out.println();

		 System.out.println("=================dataSheetList.do=============================================");
	     
		 	ModelAndView mv = new ModelAndView("/sample/dataSheetList");
			
	        List resultData = sampleService.dataSheetList();
	        
	        mv.addObject("list", resultData);
	        return mv;
	 }
	 
	 @RequestMapping(value="/sample/home.do")
	 public ModelAndView home()throws Exception{
		System.out.println("Operating :: home.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/home");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/bmtListRegistration_1.do")
	 public ModelAndView bmtListRegistration_1()throws Exception{
		System.out.println("Operating :: bmtListRegistration_1.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/bmtListRegistration_1");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/bmtListRegistration_2.do")
	 public ModelAndView bmtListRegistration_2()throws Exception{
		System.out.println("Operating :: bmtListRegistration_2.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/bmtListRegistration_2");
		 return mv;
		 
	 }
	
	 @RequestMapping(value="/sample/bmtListRegistration_3.do")
	 public ModelAndView bmtListRegistration_3()throws Exception{
		System.out.println("Operating :: bmtListRegistration_3.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/bmtListRegistration_3");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/detailsData_1.do")
	 public ModelAndView detailsData_1()throws Exception{
		System.out.println("Operating :: detailsData_1.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/detailsData_1");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/detailsData_2.do")
	 public ModelAndView detailsData_2()throws Exception{
		System.out.println("Operating :: detailsData_2.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/detailsData_2");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/detailsData_3.do")
	 public ModelAndView detailsData_3()throws Exception{
		System.out.println("Operating :: detailsData_3.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/detailsData_3");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/detailsData_4.do")
	 public ModelAndView detailsData_4()throws Exception{
		System.out.println("Operating :: detailsData_4.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/detailsData_4");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/detailsData_5.do")
	 public ModelAndView detailsData_5()throws Exception{
		 System.out.println("Operating :: detailsData_5.do");
		 System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/detailsData_5");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/detailsData_6.do")
	 public ModelAndView detailsData_6()throws Exception{
		System.out.println("Operating :: detailsData_6.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/detailsData_6");
		 return mv;
		 
	 }
	 
	 
	 @RequestMapping(value="/sample/synthesisData_1.do")
	 public ModelAndView synthesisData_1()throws Exception{
		System.out.println("Operating :: synthesisData_1.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/synthesisData_1");
		 List resultData = sampleService.dataSheetList();
		 System.out.println(resultData);
	        
	        mv.addObject("list", resultData);
	        return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/synthesisData_2.do")
	 public ModelAndView synthesisData_2()throws Exception{
		System.out.println("Operating :: synthesisData_2.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/synthesisData_2");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/synthesisData_3.do")
	 public ModelAndView synthesisData_3()throws Exception{
		System.out.println("Operating :: synthesisData_3.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/synthesisData_3");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/synthesisData_4.do")
	 public ModelAndView synthesisData_4()throws Exception{
		System.out.println("Operating :: synthesisData_4.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/synthesisData_4");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/system_1.do")
	 public ModelAndView system_1()throws Exception{
		System.out.println("Operating :: system_1.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/system_1");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/system_2.do")
	 public ModelAndView system_2()throws Exception{
		System.out.println("Operating :: system_2.do");
		System.out.println();
		 ModelAndView mv = new ModelAndView("/sample/system_2");
		 return mv;
		 
	 }
}
