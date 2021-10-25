package com.wipro;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CarController {
	
	@Autowired
	CarRepository carrepo;
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String ShowHome()
	{
		return "Home";
	}
	@RequestMapping(value="/bybrand",method=RequestMethod.GET)
	public String ShowByBrand()
	{
		return "ByBrand";
	}
	@RequestMapping(value="/byprice",method=RequestMethod.GET)
	public String ShowByPrice()
	{
		return "ByPrice";
	}
	@RequestMapping(value="/selectedbrand",method=RequestMethod.POST)
	public String ResultByBrand(String BrandName,Model model)
	{
		List<Car> BrandResult=new ArrayList<Car>();
		BrandResult=carrepo.findByBrand(BrandName);
		model.addAttribute("result",BrandResult);
		return "ResultByBrand";
	}
	@RequestMapping(value="/resultcarbrand",method=RequestMethod.POST)
	public String ShowSelectedCarBrand(String brand,Model model)
	{
		if(brand==null)
			return "ChooseCar";
		model.addAttribute("brandmodel",brand);
		return "ShowSelectedBrand";
	}
	@RequestMapping(value="/selectprice",method=RequestMethod.POST)
	public String ResultByPrice(double price,Model model)
	{
		List<Car> PriceResult=new ArrayList<Car>();
			System.out.println(price);
			if(price<500000)
				PriceResult=carrepo.findByPriceLessThan(price);
			else
				PriceResult=carrepo.findByPriceGreaterThan(price);
		model.addAttribute("result",PriceResult);
		return "ResultByPrice";
	}
	@RequestMapping(value="/resultcarprice",method=RequestMethod.POST)
	public String ShowSelectedCarPrice(String price,Model model)
	{
		if(price==null)
			return "ChooseCar";
		model.addAttribute("brandmodel",price);
		return "ShowSelectedPrice";
	}
}
