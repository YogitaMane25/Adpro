package com.igap.adpro.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity

@Data

@NoArgsConstructor

@AllArgsConstructor

@Table(name = "p_media_ros")
public class PMediaRo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne
	@JoinColumn(name = "agency_id")
	private Agency agency;

	@ManyToOne
	@JoinColumn(name = "client_id")
	private Client client;

	@ManyToOne
	@JoinColumn(name = "p_media_id")
	private PMedia pMedia;

	@ManyToOne
	@JoinColumn(name = "gst_id")
	private Gst gst;

	private String financialYear;
	private String roNo;
	private LocalDate roDate;

	private String centers;
	private String language;
	private String caption;
	private Integer noOfRecords;
	private Integer paidDays;
	private Integer freeDays;
	private Double totalCharges;
	private Double commissionPercent;
	private Double commissionAmount;
	private String chequeNo;
	private LocalDate chequeDate;
	private String bankName;
	private Double roBillAmount;
	private String instructions;

	private Double cgstPercent;
	private Double cgstAmount;
	private Double sgetPercent;
	private Double sgetAmount;
	private Double igstPercent;
	private Double igstAmount;
	private Double ccPercent;
	private Double ccAmount;
	private String status;

}
