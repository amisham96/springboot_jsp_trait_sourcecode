package com.example.tarit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.tarit.model.Trait;
import com.example.tarit.service.TraitService;

@Controller
@RequestMapping(value = "/trait")
public class TraitController {

	@Autowired
	TraitService traitService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexPage() {
		return "index";
	}

	@RequestMapping(value = "/methodology", method = RequestMethod.GET)
	public String methodologyPage() {
		return "methodology";
	}

	@RequestMapping(value = "/overview", method = RequestMethod.GET)
	public String overviewPage() {
		return "overview";
	}

	@RequestMapping(value = "/publications", method = RequestMethod.GET)
	public String publicationPage() {
		return "publications";
	}

	@RequestMapping(value = "/search_trait", method = RequestMethod.GET)
	public String searchPage() {
		return "search";
	}

	@RequestMapping(value = "/search_result", method = RequestMethod.POST)
	public ModelAndView searchResultPage(HttpServletRequest request, ModelAndView mav) {
		System.out.println(request.getParameter("rap_msu_id"));
		List<Trait> data = traitService.getTraitDataByRapOrMsuId(request.getParameter("rap_msu_id"));
		for (Trait trait : data) {
			System.out.println(trait.getMsu_id());
		}

		mav.addObject("listtrait", data);
		mav.setViewName("result");
		return mav;
	}

	@RequestMapping(value = "/advance_search", method = RequestMethod.POST)
	public ModelAndView Page(HttpServletRequest request, ModelAndView mav) {
		int chromosome = Integer.parseInt(request.getParameter("chromosome"));
		String trait_class = request.getParameter("trait_associated");
		String specific_trait_class = request.getParameter("specific_trait_associated");
		mav.addObject("listtrait", traitService.getTraitByChromosomeTraitClassAndSpecificTraitClass(chromosome,
				trait_class, specific_trait_class));
		mav.setViewName("result");
		return mav;
	}

}
