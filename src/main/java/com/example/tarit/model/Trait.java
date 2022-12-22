package com.example.tarit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "trait")
public class Trait {

	public Trait() {
		// TODO Auto-generated constructor stub
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "gene")
	private String gene;

	@Column(name = "chromosome", nullable = false)
	private int chromosome;

	@Column(name = "msu_id", nullable = false)
	private String msu_id;

	@Column(name = "rap_id", nullable = false)
	private String rap_id;

	@Column(name = "putative_function")
	private String putative_function;

	@Column(name = "trait_associated", nullable = false)
	private String trait_associated;

	@Column(name = "specific_trait_associated", nullable = false)
	private String specific_trait_associated;

	public Trait(long id, String gene, int chromosome, String msu_id, String rap_id, String putative_function,
			String trait_associated, String specific_trait_associated) {
		super();
		this.id = id;
		this.gene = gene;
		this.chromosome = chromosome;
		this.msu_id = msu_id;
		this.rap_id = rap_id;
		this.putative_function = putative_function;
		this.trait_associated = trait_associated;
		this.specific_trait_associated = specific_trait_associated;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getGene() {
		return gene;
	}

	public void setGene(String gene) {
		this.gene = gene;
	}

	public int getChromosome() {
		return chromosome;
	}

	public void setChromosome(int chromosome) {
		this.chromosome = chromosome;
	}

	public String getMsu_id() {
		return msu_id;
	}

	public void setMsu_id(String msu_id) {
		this.msu_id = msu_id;
	}

	public String getRap_id() {
		return rap_id;
	}

	public void setRap_id(String rap_id) {
		this.rap_id = rap_id;
	}

	public String getPutative_function() {
		return putative_function;
	}

	public void setPutative_function(String putative_function) {
		this.putative_function = putative_function;
	}

	public String getTrait_associated() {
		return trait_associated;
	}

	public void setTrait_associated(String trait_associated) {
		this.trait_associated = trait_associated;
	}

	public String getSpecific_trait_associated() {
		return specific_trait_associated;
	}

	public void setSpecific_trait_associated(String specific_trait_associated) {
		this.specific_trait_associated = specific_trait_associated;
	}

}
