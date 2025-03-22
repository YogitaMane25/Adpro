package com.igap.adpro.entity;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;

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
@Table(name = "EMediaRoDetails")
public class EMediaRoDetail 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
 private int id;
	
	@ManyToOne
	@JoinColumn(name = "emediaRoId")
	private EMediaRo emediaRo;
	
	 private int srno;
	 private LocalDate fromdate;
	 private LocalDate todateDate;
	 private int noofdays;
	 private LocalTime fromtime;
	 private LocalTime totime;
	 private int dailyspots;
	 private int totalspots;
	 private BigDecimal bonuspaid;
	 private BigDecimal charges;
	 private int duration;
	 private BigDecimal totalcharges;
	 private String caption;
	 
}
