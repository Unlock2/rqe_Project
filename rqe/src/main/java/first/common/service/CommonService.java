package first.common.service;

import java.util.List;
import java.util.Map;

public interface CommonService {

	Map dataSheetListDetail() throws Exception;
	
	List Comprehensive_pathCostStatus() throws Exception;
	
	List Comprehensive_evaluationSectionStatus() throws Exception;
	
	List Comprehensive_distanceGraph()throws Exception;
	
	List Comprehensive_timeGraph()throws Exception;
	
	List Comprehensive_chargeGraph()throws Exception;
	
	List Section() throws Exception;

	List arrival_order() throws Exception;
	
	List delay_tm() throws Exception;
	
	List score_delay() throws Exception;
}
