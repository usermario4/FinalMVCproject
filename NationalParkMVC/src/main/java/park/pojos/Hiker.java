package park.pojos;

import java.sql.Date;

public class Hiker {
private int hiker_ID;
private String full_name;
private int age;
private String CNP;
private Date entry_date;
private Date exit_date;
private String trail_name;
private String phone_number;

public Hiker(int hiker_ID, String full_name,int age, String CNP, Date entry_date, Date exit_date, String trail_name,
		String phone_number) {
	super();
	this.hiker_ID = hiker_ID;
	this.full_name = full_name;
	this.age=age;
	this.CNP = CNP;
	this.entry_date = entry_date;
	this.exit_date = exit_date;
	this.trail_name = trail_name;
	this.phone_number = phone_number;
}

public Hiker() {}

public int getHiker_ID() {
	return hiker_ID;
}
public void setHiker_ID(int hiker_ID) {
	this.hiker_ID = hiker_ID;
}
public String getFull_name() {
	return full_name;
}
public void setFull_name(String full_name) {
	this.full_name = full_name;
}
public int getAge() {
	return age;
}

public void setAge(int age) {
	this.age = age;
}

public String getCNP() {
	return CNP;
}
public void setCNP(String CNP) {
	this.CNP = CNP;
}
public Date getEntry_date() {
	return entry_date;
}
public void setEntry_date(Date entry_date) {
	this.entry_date = entry_date;
}
public Date getExit_date() {
	return exit_date;
}
public void setExit_date(Date exit_date) {
	this.exit_date = exit_date;
}
public String getTrail_name() {
	return trail_name;
}
public void setTrail_name(String trail_name) {
	this.trail_name = trail_name;
}
public String getPhone_number() {
	return phone_number;
}
public void setPhone_number(String phone_number) {
	this.phone_number = phone_number;
}

}
