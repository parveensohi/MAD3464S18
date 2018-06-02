/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package day;

/**
 *
 * @author macstudent
 */
public class PermanentEmployee extends Employee
{
    String Qualification;
    float Salary;
    
   public PermanentEmployee()
    {
        super();
        this.Qualification ="Unknown";
        this.Salary = 0.0f;
    }
    public PermanentEmployee(String name,String address,int age,String eID,String joiningDate,int deptNO,
            String Qualification,float Salary)
    {
        super(name, address,age,eID,joiningDate,deptNO);
        this.Qualification = Qualification;
        this.Salary = Salary;
    }
    public String tostring()
    {
        return(super.toString() + "\nQualification :" +
                this.Qualification +"\nSalary :" +
                this.Salary);
    }
}
            


