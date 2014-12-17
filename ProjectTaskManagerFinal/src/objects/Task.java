package objects;

import java.util.Date;

public class Task {
private String name;
private String decription;
private int estimate;
private Date created;
private String status;

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

}
