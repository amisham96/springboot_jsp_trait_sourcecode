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

	@Column(name = "ssr", nullable = false, length = 1000)
	private String ssr;

	@Column(name = "ssr_location_gene_sequence", nullable = false, length = 1000)
	private String ssr_location_gene_sequence;

	@Column(name = "cgssr_premier", nullable = false, length = 1000)
	private String cgssr_premier;

	@Column(name = "tm", nullable = false, length = 1000)
	private String tm;

	@Column(name = "expected_amplicon", nullable = false, length = 1000)
	private String expected_amplicon;

	public Trait(long id, String gene, int chromosome, String msu_id, String rap_id, String putative_function,
			String trait_associated, String specific_trait_associated, String ssr, String ssr_location_gene_sequence,
			String cgssr_premier, String tm, String expected_amplicon) {
		super();
		this.id = id;
		this.gene = gene;
		this.chromosome = chromosome;
		this.msu_id = msu_id;
		this.rap_id = rap_id;
		this.putative_function = putative_function;
		this.trait_associated = trait_associated;
		this.specific_trait_associated = specific_trait_associated;
		this.ssr = ssr;
		this.ssr_location_gene_sequence = ssr_location_gene_sequence;
		this.cgssr_premier = cgssr_premier;
		this.tm = tm;
		this.expected_amplicon = expected_amplicon;
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

	public String getSsr() {
		return ssr;
	}

	public void setSsr(String ssr) {
		this.ssr = ssr;
	}

	public String getSsr_location_gene_sequence() {
		return ssr_location_gene_sequence;
	}

	public void setSsr_location_gene_sequence(String ssr_location_gene_sequence) {
		this.ssr_location_gene_sequence = ssr_location_gene_sequence;
	}

	public String getCgssr_premier() {
		return cgssr_premier;
	}

	public void setCgssr_premier(String cgssr_premier) {
		this.cgssr_premier = cgssr_premier;
	}

	public String getTm() {
		return tm;
	}

	public void setTm(String tm) {
		this.tm = tm;
	}

	public String getExpected_amplicon() {
		return expected_amplicon;
	}

	public void setExpected_amplicon(String expected_amplicon) {
		this.expected_amplicon = expected_amplicon;
	}

	@Override
	public String toString() {
		return "Trait [id=" + id + ", gene=" + gene + ", chromosome=" + chromosome + ", msu_id=" + msu_id + ", rap_id="
				+ rap_id + ", putative_function=" + putative_function + ", trait_associated=" + trait_associated
				+ ", specific_trait_associated=" + specific_trait_associated + ", ssr=" + ssr
				+ ", ssr_location_gene_sequence=" + ssr_location_gene_sequence + ", cgssr_premier=" + cgssr_premier
				+ ", tm=" + tm + ", expected_amplicon=" + expected_amplicon + "]";
	}

}
