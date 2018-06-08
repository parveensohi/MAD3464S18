/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author macstudent
 */
public abstract class Shape {
    int x;
    int y;
    Shape(int x,int y)
    {
        this.x =x;
        this.y =y;
    }
    
    void display(){
        System.out.println("Displaying shape");
    
    }
    
//    void draw()
//    {
//        System.out.println("Drawing shape");
//    }
     abstract void draw();
  
    
}
