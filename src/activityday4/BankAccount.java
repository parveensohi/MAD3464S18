/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package activityday4;

/**
 *
 * @author macstudent
 */
public class BankAccount extends Bank
{
    int AccNO;
    String OwnerName;
    float Balance;

    public BankAccount(String BankName, int BankID,int AccNO,String OwnwerName,float Balance) 
    {
        super(BankName, BankID);
        this.AccNO =AccNO;
        this.OwnerName = OwnwerName;
        this.Balance = Balance;
    }
    @Override
    public String toString()
    {
        String Bankdetails = super.toString();
        return(super.tostring()+ "\n Account number :" +AccNO +"\n OwnerName :"+OwnerName + "\n Balance :" +Balance);
        
    }
    
}
