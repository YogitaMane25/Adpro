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
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "WorkSchedules")
public class WorkSchedule
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
 private int id;
	
	@ManyToOne
	@JoinColumn(name = "agencyId")
	private Agency agency;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User user;
	
	private String title;
	private String description;
	private LocalDate wdate;
	private String status;
}
