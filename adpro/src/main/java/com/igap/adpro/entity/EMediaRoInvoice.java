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
@Table(name = "e_media_ro_invoices")
@AllArgsConstructor
@NoArgsConstructor
public class EMediaRoInvoice {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
	@JoinColumn(name = "agency_id")
	private Agency agency;
	private String financialyear;
	@ManyToOne
	@JoinColumn(name = "emediaro_id")
	private EMediaRo emediaro;
	private int rono;
	private LocalDate rodate;

	@ManyToOne
	@JoinColumn(name = "client_id")
	private Client client;

	@ManyToOne
	@JoinColumn(name = "emedia_id")
	private EMedia emedia;
	
	@ManyToOne
	@JoinColumn(name = "gst_id")
	private Gst gst;

	
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
