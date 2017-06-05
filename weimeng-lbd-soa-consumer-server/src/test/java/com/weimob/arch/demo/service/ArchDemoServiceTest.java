package com.weimob.arch.demo.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.weimob.arch.BaseTest;
import com.weimob.arch.demo.model.DemoCommonErrorVo;
import com.weimob.arch.demo.model.request.FindArchPartnerBySexRequestVo;
import com.weimob.arch.demo.model.response.FindArchPartnerBySexResponseVo;
import com.weimob.soa.common.response.SoaResponse;

public class ArchDemoServiceTest extends BaseTest{

	@Autowired
	private ArchDemoService archDemoService;
	
	@Test
	public void testFindArchPartnerBySex(){
		FindArchPartnerBySexRequestVo requestVo = new FindArchPartnerBySexRequestVo();
		requestVo.setSex(1);
		SoaResponse<FindArchPartnerBySexResponseVo, DemoCommonErrorVo> soaResponse = archDemoService.findArchPartnerBySex(requestVo);
		System.out.println(JSON.toJSONString(soaResponse));
	}
}
