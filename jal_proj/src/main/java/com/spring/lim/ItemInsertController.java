package com.spring.lim;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ItemInsertController {

	@Autowired
	ItemInsertService itemInsertService;
	
	@RequestMapping("/itemNew")
	public String test() {
		return "itemNew";
	}
	
//	@RequestMapping("/itemFix")
//	public String test2() {
//		return "itemFix";
//	}
	
	// insert
	@RequestMapping("/itemNew2")
	public String insertItem(
			@RequestParam("pname") String pname, 
			@RequestParam("pnum") String pnum,
			@RequestParam("scid") String scid,
			@RequestParam("wzone") String wzone,
			@RequestParam("psize") String psize,
			@RequestParam("punit") String punit,
			@RequestParam("pday") String pday
		) {
		ItMngDTO dto = new ItMngDTO();
		dto.setPname(pname);
		dto.setPnum(pnum);
		dto.setScid(scid);
		System.out.println(scid);
		dto.setWzone(wzone);
		dto.setPsize(psize);
		dto.setPunit(punit);
		dto.setPday(pday);
		System.out.println(dto);

		int result = itemInsertService.insertItem(dto);
		System.out.println("result : " + result);
		return "item";
	}
	
	// delete
	@RequestMapping(value="/itemNew3" , method = RequestMethod.POST)
	public String deleteItem(
			@RequestParam("selectedItems") String[] selectedItems
			) {
		if(selectedItems != null) {
			ItMngDTO dto = new ItMngDTO();
	        for(String pnum : selectedItems) {
	            dto.setPnum(pnum);
	            System.out.println("pnum : " + pnum);
	            int result = itemInsertService.deleteItem(dto);
	        }
	    }
		return "redirect:/itemMng";
	}
	
	// selected
	@RequestMapping(value="/itemFix", method = RequestMethod.GET)
	public String itemDetail(
			@RequestParam("pnum") String pnum,
			Model model
			) {
		ItMngDTO dto = new ItMngDTO();
		dto.setPnum(pnum);
			
		List list = itemInsertService.itemDetail(dto);
		model.addAttribute("itemMng", list);
		System.out.println("itemMng : " + list);
		return "itemFix";
	}
	
	// update
	@RequestMapping(value="/itemFix2", method = RequestMethod.POST)
	public String updateItem(
			@RequestParam("pname") String pname, 
			@RequestParam("pnum") String pnum,
			@RequestParam("scid") String scid,
			@RequestParam("wzone") String wzone,
			@RequestParam("psize") String psize,
			@RequestParam("punit") String punit,
			@RequestParam("pday") String pday
			) {
		ItMngDTO dto = new ItMngDTO();
		dto.setPname(pname);
		dto.setPnum(pnum);
		dto.setScid(scid);
		dto.setWzone(wzone);
		dto.setPsize(psize);
		dto.setPunit(punit);
		dto.setPday(pday);
		System.out.println("update : " +dto);
		
		int result = itemInsertService.updateItem(dto);
		System.out.println("result : " + result);
		return "redirect:/itemMng";
		
		
	}
	
}
