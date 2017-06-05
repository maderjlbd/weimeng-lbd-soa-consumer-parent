package com.weimob.arch.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.weimob.arch.demo.model.DemoCommonErrorVo;
import com.weimob.arch.demo.model.request.FindArchPartnerBySexRequestVo;
import com.weimob.arch.demo.model.response.FindArchPartnerBySexResponseVo;
import com.weimob.arch.demo.model.response.PartnerBaseInfoVo;
import com.weimob.arch.demo.service.ArchDemoService;
import com.weimob.soa.common.response.SoaResponse;

@Controller
@RequestMapping("/partner")
public class PartnerController {

	@Autowired
	private ArchDemoService archDemoService;
	
	@RequestMapping("/partnerList")
	public ModelAndView loadPartnerList(){
		SoaResponse<FindArchPartnerBySexResponseVo, DemoCommonErrorVo>  soaResponse = 
				archDemoService.findArchPartnerBySex(new FindArchPartnerBySexRequestVo());
		FindArchPartnerBySexResponseVo responseVo = soaResponse.getResponseVo();
		List<PartnerBaseInfoVo>  partnerList = responseVo.getPartnerList();
		
		Map<String, Object> param = new HashMap<>();
		param.put("partnerList", partnerList);
		
		return new ModelAndView("partner_list",param);
	}
	
}
