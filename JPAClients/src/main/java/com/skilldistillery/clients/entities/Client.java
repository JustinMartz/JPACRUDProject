package com.skilldistillery.clients.entities;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Client {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	private Boolean active;

	@Column(name = "date_of_birth")
	private LocalDate dateOfBirth;

	@Column(name = "phone_number")
	private String phoneNumber;

	@Column(name = "presenting_issue")
	private String presentingIssue;

	private String diagnosis;

	@Column(name = "intake_date")
	private LocalDate intakeDate;

	@Column(name = "last_session")
	private LocalDateTime lastSession;

	@Column(name = "referral_source")
	private String referralSource;

	public Client() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = LocalDate.parse(dateOfBirth);
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPresentingIssue() {
		return presentingIssue;
	}

	public void setPresentingIssue(String presentingIssue) {
		this.presentingIssue = presentingIssue;
	}

	public String getDiagnosis() {
		return diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}

	public LocalDate getIntakeDate() {
		return intakeDate;
	}

	public void setIntakeDate(String intakeDate) {
		this.intakeDate = LocalDate.parse(intakeDate);
	}

	public LocalDateTime getLastSession() {
		return lastSession;
	}

	public void setLastSession(String lastSession) {
		this.lastSession = LocalDateTime.parse(lastSession);
	}

	public String getReferralSource() {
		return referralSource;
	}

	public void setReferralSource(String referralSource) {
		this.referralSource = referralSource;
	}

	@Override
	public String toString() {
		return "Client [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", active=" + active
				+ ", dateOfBirth=" + dateOfBirth + ", phoneNumber=" + phoneNumber + ", presentingIssue="
				+ presentingIssue + ", diagnosis=" + diagnosis + ", intakeDate=" + intakeDate + ", lastSession="
				+ lastSession + ", referralSource=" + referralSource + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(active, dateOfBirth, diagnosis, firstName, id, intakeDate, lastName, lastSession,
				phoneNumber, presentingIssue, referralSource);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Client other = (Client) obj;
		return Objects.equals(active, other.active) && Objects.equals(dateOfBirth, other.dateOfBirth)
				&& Objects.equals(diagnosis, other.diagnosis) && Objects.equals(firstName, other.firstName)
				&& id == other.id && Objects.equals(intakeDate, other.intakeDate)
				&& Objects.equals(lastName, other.lastName) && Objects.equals(lastSession, other.lastSession)
				&& Objects.equals(phoneNumber, other.phoneNumber)
				&& Objects.equals(presentingIssue, other.presentingIssue)
				&& Objects.equals(referralSource, other.referralSource);
	}

}
