package com.example.tarit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.tarit.model.Trait;
import com.example.tarit.repository.TraitRepository;
import com.example.tarit.service.TraitService;

@Service
public class TraitServiceImpl implements TraitService {

	@Autowired
	TraitRepository traitRepo;

	@Override
	public List<Trait> getAllTraitData() {
		// TODO Auto-generated method stub
		return traitRepo.findAll();
	}

	@Override
	public List<Trait> getTraitDataByRapOrMsuId(String rap_msu_id) {
		// TODO Auto-generated method stub
		List<Trait> data = null;
		if (rap_msu_id.contains("LOC")) {
			data = traitRepo.findTraitByMsuId(rap_msu_id);
		} else {
			data = traitRepo.findTraitByRapId(rap_msu_id);
		}
		return data;
	}

	@Override
	public List<Trait> getTraitByChromosomeTraitClassAndSpecificTraitClass(int chromosome, String trait_associated,
			String specific_trait_associated) {
		// TODO Auto-generated method stub
		return traitRepo.advanceSearch(chromosome, trait_associated, specific_trait_associated);
	}

}