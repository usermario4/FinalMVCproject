package park.pojos;

public class Trail {
	private int trail_id;
	private String name;
	private int distance;
	private int safe_house;
	public Trail(int trail_id, String name, int distance, int safe_house) {
		super();
		this.trail_id = trail_id;
		this.name = name;
		this.distance = distance;
		this.safe_house = safe_house;
	}
	
	public Trail() {}
	
	public int getTrail_id() {
		return trail_id;
	}
	public void setTrail_id(int trail_id) {
		this.trail_id = trail_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public int getSafe_house() {
		return safe_house;
	}
	public void setSafe_house(int safe_house) {
		this.safe_house = safe_house;
	}
	

}
