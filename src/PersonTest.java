/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Parveen
 */
public class PersonTest {
    public static void main(String args[]){
        Person Parveen =new Person();
        Parveen.name ="Parveen";
        Parveen.address ="toronto";
        Parveen.age =24;
        System.out.println("Name :" + Parveen.name +"\n Address : " +Parveen.address +"\n age :" +Parveen.age);
       
//        Person foram = new Person();
//        
//        foram.setName();
       
        
//        String nm =foram.getName();
//        String add = foram.getAddress();
//        foram.setAddress();
//      
//        foram.setAge();
//        int age =foram.getAge();
//        System.out.println("Name :" +nm+ "\nAddress :"+ add +"\nAge :" + age);
//        Person Anu = new Person();
//        Anu.setData();
//        System.out.println(Anu.toString());
//        Person aman =new Person();
//        System.out.println(aman.toString());
        Person rimpal = new Person("rimpal","brampton",20);
        System.out.println(rimpal.toString());
    }
    
}
