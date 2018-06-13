/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package multithreading;

/**
 *
 * @author macstudent
 */
public class SecondThread implements Runnable{
  Thread t;
  String name;
  
  public SecondThread(String name){
      this.name = name;
      t = new Thread(this, this.name);
       System.out.println("Second thread created :" +t);
       t.start();
  }
    @Override 
    public void run(){
         try{
        for(int i=1; i<=5; i++){
            System.out.println("Second thread :" +i);
            Thread.sleep(500);
    }
         }catch(InterruptedException e){
        e.printStackTrace();
        
    }finally{
            System.out.println("Exiting from Second thread");

}
    }
      }