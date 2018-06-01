/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author macstudent
 */
public class arithmetic {
    int num1 = 10;
    void addition(){
        System.out.println("addition : " +(num1+20));
    }
    int addition (int n1,int n2){
        System.out.println("sum of" +n1 +"and "+ n2+ "is" +(n1+n2));
        return(n1 +n2);
    }
    float addition(float n1,float n2){
        return (n1+n2);
    }
    void addition (int[] n1){
        int sum =0;
        for(int i=0;i<n1.length;i++){
            sum += n1[i];
        }
        System.out.println("sum ="  +sum);
    }
    void Addition(int... numbers){
        int sum=0;
        for( int no: numbers){
            sum += no;
        }
        
        System.out.println("sum = "+sum);
    }
    
}
