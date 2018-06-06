/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author macstudent
 */
public class ExeptionalHandling 
{
    public static void main(String args[])
    {
        
        try
        {
        int n = Integer.parseInt("123a");
        System.out.println("n :" + n);
//        n = n /(n-n);
       System.out.println("n :" + n);
       if(n<150){
           throw new NumberFormatException();
       }
        }
        catch(ArithmeticException  e)
        {
            System.err.println(e);
//            e.printStackTrace();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
            
        finally{
            System.out.println("yhe finally block");
        }
    }
    
}
