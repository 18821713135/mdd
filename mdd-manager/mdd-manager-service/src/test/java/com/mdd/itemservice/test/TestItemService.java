package com.mdd.itemservice.test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestItemService {

	@Test
	public void testItemService() {
		new ClassPathXmlApplicationContext("classpath:spring/applicationContext-*.xml");
		
		
	}
}
