/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package activityday4;

import java.util.Scanner;

/**
 *
 * @author macstudent
 */
public class Bank {
    String BankName;
    int BANKID;
   Scanner in =new Scanner(System.in);
    
    Bank(String BankName,int BankID)
    {
        this.BankName = BankName;
        this.BANKID = BankID;
    }
    void setname()
    {
        System.out.println("enter name :");
        this.BankName = in.nextLine();
    }
 String getname()
 {
     return this.BankName;
     
 }
 void setid()
 {
     System.out.println("enter id :");
     this.BANKID = in.nextInt();
 }
 int getid()
 {
     return this.BANKID;
 }
 void setdata()
 {
     setname();
     setid();
 }

    /**
     *
     * @return
     */
         public String tostring() 
 {
     String Bankdetails ;
        Bankdetails = "\n BankID :" +BANKID + "BankName :"+ BankName;
     return Bankdetails;
     
 }
         
    
}
