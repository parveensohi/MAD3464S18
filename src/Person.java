
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author macstudent
 */
public class Person {
    String name;
    String address;
    int age;
     Scanner input =new Scanner(System.in);
     Person(){
         name ="Unknown";
         address ="Unknown";
         age =1;
     }
     Person (String name,String address,int age){
         this.name= name;
         this.address=address;
         this.age=age;
         
     }
    void setName( ){
         
         System.out.println("Enter name :");
         name = input.nextLine();
         
        
    }
    String getName(){
        
        return name;
       
    }
    void setAddress(){
        System.out.println("Enter Address :");
        address = input.nextLine();
    }
    String getAddress(){
        return name;
    }
    void setAge(){
        System.out.println("Enter Age :");
        int Age = Integer.parseInt(input.nextLine());
        
    }
    int getAge(){
        return age;
    }
    void setData()
    {
        setName();
        setAddress();
        setAge();
    }
    @Override
    public String toString()
    {
        String data ="Name :" +name+ "\n Address :"+ address + " age;" +age;
                return data;
    }
    
            
}
    
