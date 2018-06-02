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
public class Employee extends Person{
    
        String eID;
        String joiningDate ;
        int deptNO;
        
        Employee()
        {
            super();
             this.eID ="E###";
            this.joiningDate = "DD MON YYYY";
            this.deptNO =0;
            
        }
        
        Employee(String name,String address,int age,String eID, String joiningDate,int deptNO)
        {
            super(name,address,age);
          this.eID=eID;
          this.joiningDate=joiningDate;
          this.deptNO = deptNO;
           
            
        }
//        public Employee(String eID,String JoiningDate,int DeptNO)
//                
//        {
//            this.eID = eID;
//            this.joiningDate = JoiningDate;
//            this.deptNO = DeptNO;
//        }
        
        @Override
        public String toString()
        {
            String personaldetails =super.toString();
            String data ="Employee ID :" +eID + "\n joiningDate :"+ this.joiningDate + "\n deptNO :" +this.deptNO;
            return  personaldetails+data;
        }
       
        
    
}
