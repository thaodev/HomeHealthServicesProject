package com.skillsdistillery.hhservices.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Schedule {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private LocalDate date;
	
	@Column(name="bill_amount")
	private double billAmount;
	
	@Column(name="payroll_amount")
	private double payrollAmount;
	
	@Column(name="schedule_status")
	private String scheduleStatus;
	
	@Column(name="bill_status")
	private String billStatus;
	
	@Column(name="payroll_status")
	private String payrollStatus;
	
	@OneToOne
	@JoinColumn(name="payroll_id")
	private Payroll payroll;
	
	@OneToOne
	@JoinColumn(name="employee_id")
	private Employee employee;
	@OneToOne
	@JoinColumn(name="client_id")
	private Client client;
	
	@OneToOne
	@JoinColumn(name="line_of_business_id")
	private LOB lob;
	
	@OneToOne
	@JoinColumn(name="discipline_id")
	private Discipline discipline;
	
	

	public Schedule() {
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public double getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(double billAmount) {
		this.billAmount = billAmount;
	}

	public double getPayrollAmount() {
		return payrollAmount;
	}

	public void setPayrollAmount(double payrollAmount) {
		this.payrollAmount = payrollAmount;
	}

	public String getScheduleStatus() {
		return scheduleStatus;
	}

	public void setScheduleStatus(String scheduleStatus) {
		this.scheduleStatus = scheduleStatus;
	}

	public String getBillStatus() {
		return billStatus;
	}

	public void setBillStatus(String billStatus) {
		this.billStatus = billStatus;
	}

	public String getPayrollStatus() {
		return payrollStatus;
	}

	public void setPayrollStatus(String payrollStatus) {
		this.payrollStatus = payrollStatus;
	}

	public Payroll getPayroll() {
		return payroll;
	}


	public void setPayroll(Payroll payroll) {
		this.payroll = payroll;
	}


	public Employee getEmployee() {
		return employee;
	}


	public void setEmployee(Employee employee) {
		this.employee = employee;
	}


	public Client getClient() {
		return client;
	}


	public void setClient(Client client) {
		this.client = client;
	}


	public LOB getLob() {
		return lob;
	}


	public void setLob(LOB lob) {
		this.lob = lob;
	}


	public Discipline getDiscipline() {
		return discipline;
	}


	public void setDiscipline(Discipline discipline) {
		this.discipline = discipline;
	}


	@Override
	public String toString() {
		return "Schedule [id=" + id + ", date=" + date + ", billAmount=" + billAmount + ", payrollAmount="
				+ payrollAmount + ", scheduleStatus=" + scheduleStatus + ", billStatus=" + billStatus
				+ ", payrollStatus=" + payrollStatus + ", payroll=" + payroll + ", employee=" + employee + ", client="
				+ client + ", lob=" + lob + ", discipline=" + discipline + "]";
	}
	
	

}
