/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generics;

import java.io.PrintStream;

/**
 *Demonstrating the concept of Generic
 * @author Amandeep
 * @version 1.0
 * @since 13 Jun 2018
 */
public class Generics {
    
//    generic method printArray
  /**
   * Printing lists of elements
   * @param <E> indicates the generic type
   * @param inputArray list of elements to be printed
   * @return  No return value
   */  
    public static <E> void printArray(E[]inputArray){
        for(E element : inputArray){
            System.out.printf("%s,",element);
        }
        System.out.println();
    }
    /**
     * 
     * @param <T>Generic type
     * @param x first value
     * @param y second value
     * @param z third value
     * @return Returns maximum of three elements
     */
  public static<T extends Comparable<T>> T maximum(T x, T y, T z){
      T max = x;
  
    if(y.compareTo(max)> 0){
        max = y;
    }
    if(z.compareTo(max)>0){
        max = z;
    }
    return max;
}
  /**
   * 
   * @param args  Command line arguments
   * @return  no value return
   */
public static void main(String args[]){
Box<Integer> integerBox = new Box<Integer>();
integerBox.set(new Integer(10));
System.out.printf("Integer Value :%d\n",integerBox.get());

Box<String> StringBox = new Box<String>();
StringBox.set(new String("HELLO WORLD"));
System.out.printf("String Value :%s\n",StringBox.get());



Integer[] intArray = {1,2,3,4,5};
System.out.println("Array integerArray contains:");
printArray(intArray);

Double[] doubleArray = {1.1,2.2,3.3,4.4};
System.out.println("\nArray doubleArray contains:");
printArray(doubleArray);

Character[] charArray ={'H','E','L','L','O'};
System.out.println("\nArray characterArray contains :");
printArray(charArray);

//test Generics method maximum
System.out.printf("Max of %d,%d and %d is %d\n\n",3,4,5, maximum(3,4,5));


System.out.printf("Max of %.1f,%.1f and %.1f is %.1f\n\n",6.6,8.8,7.7, maximum(6.6,8.8,7.7));

System.out.printf("Max of %s, %s and %s is %s \n\n","Pear","Apple","Orange", maximum("Pear","Apple","Orange"));


    }
}
