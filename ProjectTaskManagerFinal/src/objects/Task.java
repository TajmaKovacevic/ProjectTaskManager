package objects;

import java.util.Date;

public class Task {
private String name;
private String decription;
private int estimate;
private Date created;
private String status;
private int person_id;
private int project_id;
public void setName(String name) {
	this.name = name;
}
public String getName() {
	return name;
}
public void setDecription(String decription) {
	this.decription = decription;
}
public String getDecription() {
	return decription;
}
public void setEstimate(int estimate) {
	this.estimate = estimate;
}
public int getEstimate() {
	return estimate;
}
public void setCreated(Date created) {
	this.created = created;
}
public Date getCreated() {
	return created;
}
public void setStatus(String status) {
	this.status = status;
}
public String getStatus() {
	return status;
}
public void setPerson_id(int person_id) {
	this.person_id = person_id;
}
public int getPerson_id() {
	return person_id;
}
public void setProject_id(int project_id) {
	this.project_id = project_id;
}
public int getProject_id() {
	return project_id;
}

}
