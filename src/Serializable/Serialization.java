/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Serializable;
import java.io.FileInputStream;

import java.io.FileOutputStream;

import java.io.IOException;

import java.io.ObjectInputStream;

import java.io.ObjectOutputStream;



/**
 *
 * @author macstudent
 */
public class Serialization {
    /**
     * 
     * @param args Command line arguments
     * @return return no value
     * @exeption IOExeption while trying to read/write to/from the file
     * @exeption ClassNotFoundExeption while retriving object from file
     * @ see IOExeption
     * @see ClassNotFoundExeption
     */
    
    public static void main(String[] args){

        Employee emp = new Employee();

        emp.name = "Ashley";

        emp.address = "Vancouver";

        emp.SSN = 4444444;

        emp.number = 101;



        //serialization

        try

        {

         FileOutputStream fileOut = new FileOutputStream("employee.txt");

         ObjectOutputStream out = new ObjectOutputStream(fileOut);



         out.writeObject(emp);



         out.close();

         fileOut.close();



         System.out.printf("Serialized data is saved as employee.txt");

        }catch(IOException i){

          i.printStackTrace();

        }

        

        //deserialization

        Employee e = null;

      

      try

      {

         FileInputStream fileIn = new FileInputStream("employee.txt");

         ObjectInputStream in = new ObjectInputStream(fileIn);

         

         e = (Employee) in.readObject();

         

         in.close();

         fileIn.close();

      }catch(IOException i)

      {

         i.printStackTrace();

         return;

      }catch(ClassNotFoundException c)

      {

         System.out.println("\nEmployee class not found");

         c.printStackTrace();

         return;

      }

      

      System.out.println("\nDeserialized Employee...");

      System.out.println("Name: " + e.name);

      System.out.println("Address: " + e.address);

      System.out.println("SSN: " + e.SSN);

      System.out.println("Number: " + e.number);

    }

}



