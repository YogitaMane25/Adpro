package com.igap.adpro.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "financial_years")
public class FinancialYear
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
 private int id;
 private String name;
 private LocalDate startdate;
 private LocalDate enddate;
 
 
 
 
 
}
