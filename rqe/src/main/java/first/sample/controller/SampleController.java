package first.sample.controller;

import java.util.List;

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
		 System.out.println("start controller");
		 System.out.println();

		 System.out.println("=================dataSheetList.do===================");
	     
		 	ModelAndView mv = new ModelAndView("/sample/dataSheetList");
			
	        List resultData = sampleService.dataSheetList();
	        
	        mv.addObject("list", resultData);
	        return mv;
	 }
	 
	
}
