package objects;

public class User {
	
 private String username;
 private String password;
 private String name;
 private String lastName;
 private String contact;
 private String address;
 private boolean gender;
 
public void setUsername(String username) {
	this.username = username;
}
public String getUsername() {
	return username;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPassword() {
	return password;
}
public void setName(String name) {
	this.name = name;
}
public String getName() {
	return name;
}
public void setGender(boolean gender) {
	this.gender = gender;
}
public boolean isGender() {
	return gender;
}
public void setAddress(String address) {
	this.address = address;
}
public String getAddress() {
	return address;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getContact() {
	return contact;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getLastName() {
	return lastName;
}

};
