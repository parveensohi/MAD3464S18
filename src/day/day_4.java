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
public class day_4 {
    
    public static void main(String args[])
    {
         Employee emp1 = new Employee("Rutvi","Toronto",22, "E101","12 MAY 2017",10);
        // emp1.name ="Rutvi";
        //emp1.address ="Toronto";
        //emp1.age =22;
        //System.out.println("Name :" +emp1.name + "\nAddress :"+emp1.address +"\nAge :"+emp1.age);
        System.out.println(emp1.toString());
        
      TemporaryEmployee Temp = new TemporaryEmployee("Viki","Brampton",22,"T123","01 May 2018",20 ,"iOS Developer",80.50f);
      System.out.println(Temp.toString());
       PermanentEmployee Pemp = new PermanentEmployee("ram","Brampton",22,"T202","01 May 2018",20 ,
               "software deveploer",500.50f);
        System.out.println(Pemp.toString());
        
        
        
    }
    
    
}
