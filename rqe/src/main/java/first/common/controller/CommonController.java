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

	 System.out.println("=================dataSheetListDetail.do=============================================");
     
	 	ModelAndView mv = new ModelAndView("/sample/dataSheetListDetail");
	 
	 	Map resultData = commonService.dataSheetListDetail();
	 	
//	 	String yugoInfo = (String) resultData.get("yugoinfo");
//	 	System.out.println("yugoInfo :: " + yugoInfo);
//	 	List list = new ArrayList();
//	 	list.add(resultData);
//	 	
//	 	mv.addObject("detail", list);
	 	mv.addObject("detail", resultData);
	 return mv;
	 
	}
	
	 @RequestMapping(value="/sample/comprehensive.do")
	 	public ModelAndView comprehensive() throws Exception{
		
		 System.out.println("start controller");
		 System.out.println();

		 System.out.println("=================Comprehensive.do=============================================");
	     
		 	ModelAndView mv = new ModelAndView("/sample/comprehensive");
		 
		 	List pathCostStatus = commonService.Comprehensive_pathCostStatus();
		 	mv.addObject("Comprehensive_pathCostStatus", pathCostStatus);
		 	
		 	List evaluationSectionStatus = commonService.Comprehensive_evaluationSectionStatus();
		 	mv.addObject("Comprehensive_evaluationSectionStatus", evaluationSectionStatus);
		 	
		 	List distanceGraph = commonService.Comprehensive_distanceGraph();
		 	mv.addObject("Comprehensive_distanceGraph", distanceGraph);
		 	
		 	List timeGraph = commonService.Comprehensive_timeGraph();
		 	mv.addObject("Comprehensive_timeGraph", timeGraph);
		 	
		 	List chargeGraph = commonService.Comprehensive_chargeGraph();
		 	mv.addObject("Comprehensive_chargeGraph", chargeGraph);
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="/sample/section.do")
		public ModelAndView Section() throws Exception{
			
			 System.out.println("start controller");
			 System.out.println();

			 System.out.println("=================section.do=============================================");
		     
			 	ModelAndView mv = new ModelAndView("/sample/section");
			 	
//			 	List sectionData = commonService.Section();
//			 	mv.addObject("section", sectionData);
//			 	
//			 	List arrival_orderData = commonService.arrival_order();
//			 	mv.addObject("arrival_order", arrival_orderData);
				return mv;
	}
		
	 @RequestMapping(value="/sample/delay_tm.do")
		public ModelAndView delay_tm() throws Exception{
			
			 System.out.println("start controller");
			 System.out.println();

			 System.out.println("=================delay_tm.do=============================================");
		     
			 	ModelAndView mv = new ModelAndView("/sample/delay_tm");
			 	
//			 	List delayTmData = commonService.delay_tm();
//			 	mv.addObject("delay_tm", delayTmData);

			 	return mv;
	}
	 
	 
	 @RequestMapping(value="/sample/score_delay.do")
		public ModelAndView score_delay() throws Exception{
			
			 System.out.println("start controller");
			 System.out.println();

			 System.out.println("=================score_delay.do=============================================");
		     
			 	ModelAndView mv = new ModelAndView("/sample/score_delay");
			 	
//			 	List scoreDelayData = commonService.score_delay();
//			 	mv.addObject("score_delay", scoreDelayData);
			 	return mv;
	}
	 
//	 @RequestMapping(value="/sample/obstacle_1.do")
//		public ModelAndView obstacle_1() throws Exception{
//			
//			 	ModelAndView mv = new ModelAndView("/sample/obstacle_1");
//			 	
////			 	List scoreDelayData = commonService.score_delay();
////			 	mv.addObject("score_delay", scoreDelayData);
//			 	return mv;
//	}
}