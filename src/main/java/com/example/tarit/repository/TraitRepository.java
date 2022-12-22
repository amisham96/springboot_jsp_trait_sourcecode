package com.example.tarit.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.tarit.model.Trait;

@Repository
public interface TraitRepository extends JpaRepository<Trait, Long> {

	@Query("select t from Trait t where t.msu_id = ?1")
	List<Trait> findTraitByMsuId(String msu_id);
	
	@Query("select t from Trait t where t.rap_id = ?1")
	List<Trait> findTraitByRapId(String rap_id);
	
	@Query("select t from Trait t where t.chromosome = ?1 and t.trait_associated = ?2 and t.specific_trait_associated = ?3")
	List<Trait> advanceSearch(int chromosome, String trait_associated, String specific_trait_associated);

}
