/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generics;

/**
 * Represents the box with generic value type
 *
 * @author parveen kaur
 * @version 1.0
 * @since 13 Jun 2018
 */
public class Box <T> 
{
    private T t;
    
    public void set(T t)
    {
        this.t =t;
    }
    
    public T get()
    {
        return t;
    }
    
    
}
