/***************************************************
Filename: Lab05.java
Author: MIDN Ian Coffey (m261194)
Demonstate Inheritance Capabilities
**************************************************/

// Import Libraries
import java.util.*;

public class Lab05
{
    public static void main(String[] args)
    {
        NRRandom rand = new NRRandom(System.currentTimeMillis());
        for(int i = 0; i < 70; i++)
            System.out.print(1 + rand.nextInt(6));
        System.out.println();
    }
}