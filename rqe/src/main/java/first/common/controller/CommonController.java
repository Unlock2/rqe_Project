package first.common.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import first.common.service.CommonService;

@Controller
public class CommonController {
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	@Resource(name="commonService")
	private CommonService commonService;
	
	@RequestMapping(value="/sample/dataSheetListDetail.do")
 	public ModelAndView dataSheetListDetail() throws Exception{
	
	 System.out.println("start controller");
	 System.out.println();

	 System.out.println("=================dataSheetListDetail.do===================");
     
	 	ModelAndView mv = new ModelAndView("/sample/dataSheetListDetail");
	 
	 	Map resultData = commonService.dataSheetListDetail();
	 	List list = new ArrayList();
	 	list.add(resultData);
	 	
	 	mv.addObject("detail", list);
	 	System.out.println(mv);
	 return mv;
	 
	}
	
	 @RequestMapping(value="/sample/comprehensive.do")
	 	public ModelAndView comprehensive() throws Exception{
		
		 System.out.println("start controller");
		 System.out.println();

		 System.out.println("=================Comprehensive.do===================");
	     
		 	ModelAndView mv = new ModelAndView("/sample/comprehensive");
		 
		 	List resultData = commonService.Comprehensive();
		 	
		 	mv.addObject("comprehensive", resultData);
		 return mv;
		 
	 }
}
