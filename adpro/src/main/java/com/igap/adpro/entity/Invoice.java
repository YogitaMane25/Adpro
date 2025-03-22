package com.igap.adpro.entity;

import java.math.BigDecimal;
import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "invoices")
public class Invoice {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "agencyId", referencedColumnName = "id")
	private Agency agency; // Now a reference to Agency entity

	@ManyToOne
	@JoinColumn(name = "clientId", referencedColumnName = "id")
	private Client client; // Now a reference to Client entity

	@ManyToOne
	@JoinColumn(name = "gstId", referencedColumnName = "id")
	private Gst gst; // Now a reference to GST entity

	private String financialYear;
	private String invoiceNo;
	private LocalDate invoiceDate;

	private Integer itemCount;

	private BigDecimal amount;

	private BigDecimal discount;

	private BigDecimal taxableAmount;

	private BigDecimal cgstPercent;
	private BigDecimal cgstAmount;
	private BigDecimal sgstPercent;
	private BigDecimal sgstAmount;
	private BigDecimal igstPercent;
	private BigDecimal igstAmount;
	private BigDecimal billAmount;
}
