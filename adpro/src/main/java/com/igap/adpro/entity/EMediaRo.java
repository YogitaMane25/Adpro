package com.igap.adpro.entity;

import java.math.BigDecimal;
import java.sql.Date;
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
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "EMediaRos")
public class EMediaRo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne
	@JoinColumn(name = "agencyId")
	private Agency agency;

	@ManyToOne
	@JoinColumn(name = "clientId")
	private Client client;

	@ManyToOne
	@JoinColumn(name = "emediaId")
	private EMedia emedia;

	private Date financialyear;
	private int rono;
	private Date rodate;

	private String centers;
	private String language;
	private String caption;
	private int noofrecords;
	private int totalspots;
	private BigDecimal totalcharges;
	private BigDecimal comissionpercent;
	private BigDecimal comissionamount;
	private String chequeno;
	private LocalDate chequedate;
	private String bankname;
	private BigDecimal robillamount;
	private String instructions;

	private BigDecimal cgstpercent;
	private BigDecimal cgstamount;
	private BigDecimal sgstpercent;
	private BigDecimal sgstamount;
	private BigDecimal igstpercent;
	private BigDecimal igstamount;
	private BigDecimal ccpercent;
	private BigDecimal ccamount;
	private String status;

}
