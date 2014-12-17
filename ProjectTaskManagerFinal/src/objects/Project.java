package objects;

public class Project {

	private String name;
	private int estimate;
	private String description;
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setEstimate(int estimate) {
		this.estimate = estimate;
	}
	public int getEstimate() {
		return estimate;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDescription() {
		return description;
	}
	
}
