package com.example.tarit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	@RequestMapping(value = "/search_result", method = RequestMethod.POST)
	public ModelAndView searchResultPage(HttpServletRequest request, ModelAndView mav) {
		System.out.println(request.getParameter("rap_msu_id"));
		List<Trait> data = traitService.getTraitDataByRapOrMsuId(request.getParameter("rap_msu_id"));

		if (data.isEmpty()) {
			String val = "N/A";
			Trait trait = new Trait();
			trait.setGene(val);
			trait.setChromosome(0);
			trait.setCgssr_premier(val);
			trait.setExpected_amplicon(val);
			trait.setMsu_id(val);
			trait.setPutative_function(val);
			trait.setRap_id(val);
			trait.setSpecific_trait_associated(val);
			trait.setSsr(val);
			trait.setSsr_location_gene_sequence(val);
			trait.setTm(val);
			trait.setTrait_associated(val);
			data.add(trait);
			mav.addObject("listtrait", data);
			mav.setViewName("result");
			return mav;
		} else {
			for (Trait trait : data) {
				System.out.println(trait.getMsu_id());
			}

			mav.addObject("listtrait", data);
			mav.setViewName("result");
			return mav;
		}
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

	@RequestMapping(value = "/advance_search", method = RequestMethod.GET)
	public ModelAndView Page(HttpServletRequest request, ModelAndView mav,
			@RequestParam(defaultValue = "0") Integer pageNo, @RequestParam(defaultValue = "400") Integer pageSize) {
		String trait_class = request.getParameter("trait_associated");
		System.out.println(trait_class);
		String specific_trait_class = request.getParameter("specific_trait_associated");
		if (trait_class.equals("all") && specific_trait_class.equals("all")) {
			mav.addObject("listtrait", traitService.getAllTraitData(pageNo, pageSize));
		} else {
			int chromosome = Integer.parseInt(request.getParameter("chromosome"));
			mav.addObject("listtrait", traitService.getTraitByChromosomeTraitClassAndSpecificTraitClass(chromosome,
					trait_class, specific_trait_class));
		}
		mav.setViewName("result");
		return mav;
	}

	@RequestMapping(value = "/get_chromosome", method = RequestMethod.GET)
	public ResponseEntity<?> chromosome() {
		return ResponseEntity.ok(traitService.getDistinctChromosome());
	}

	@RequestMapping(value = "/get_trait_by_chromosome", method = RequestMethod.POST)
	public ResponseEntity<?> getTraitByChromosome(@RequestParam(value = "chromosome") String chromosome) {
		int a = Integer.parseInt(chromosome);
		System.out.println(a);
		return ResponseEntity.ok(traitService.getTraitByChromosome(a));
	}

	@RequestMapping(value = "/get_specific_trait_by_trait", method = RequestMethod.POST)
	public ResponseEntity<?> getSpecificTraitByTrait(@RequestParam(value = "trait") String trait,
			@RequestParam(value = "chromosome") String chromosome) {
		System.out.println(trait);
		int chromosome_val = Integer.parseInt(chromosome);
		return ResponseEntity.ok(traitService.getSpecificTraitByTrait(trait, chromosome_val));
	}

}
