package com.mdd.search;

import java.util.Iterator;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mdd.common.pojo.SearchItem;
import com.mdd.search.mapper.SearchItemMapper;

public class TestSearchItemMapper {

//	@Test
//	public void testSearchItemMapper() {
//		ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
//		SearchItemMapper searchItemMapper = context.getBean(SearchItemMapper.class);
//
//		List<SearchItem> list = searchItemMapper.selectAllSearchItems();
//		Iterator<SearchItem> iter = list.iterator();
//		while (iter.hasNext()) {
//			System.out.println(iter.next());
//		}
//		System.out.println("总记录数是："+list.size());
//	}
}
