package objects;

public class Project {

	private String name;
	private int estimate;
	private String description;
	int team_id;
	int manager_id;
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
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setManager_id(int man_id) {
		this.manager_id = man_id;
	}
	public int getManager_id() {
		return manager_id;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDescription() {
		return description;
	}
	
}
