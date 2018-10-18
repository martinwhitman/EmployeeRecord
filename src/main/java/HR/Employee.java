package HR;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employees")
public class Employee {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int id;
		public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
		private String name;
		private int age;
		private int yearsEmployed;
		private String insuranceBeneficiary;
		private boolean vestedFully;
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		public int getYearsEmployed() {
			return yearsEmployed;
		}
		public void setYearsEmployed(int yearsEmployed) {
			this.yearsEmployed = yearsEmployed;
		}
		public String getInsuranceBeneficiary() {
			return insuranceBeneficiary;
		}
		public void setInsuranceBeneficiary(String insuranceBeneficiary) {
			this.insuranceBeneficiary = insuranceBeneficiary;
		}
		public boolean isVestedFully() {
			return vestedFully;
		}
		public void setVestedFully(boolean vestedFully) {
			this.vestedFully = vestedFully;
		}
		
}
