package com.example.tarit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.tarit.model.Trait;

@Service
public interface TraitService {
	
	List<Trait> getAllTraitData();
	
	List<Trait> getTraitDataByRapOrMsuId(String rap_msu_id);
	
	List<Trait> getTraitByChromosomeTraitClassAndSpecificTraitClass(int chromosome, String trait_associated, String specific_trait_associated);
	
}
