/***************************************************
Filename: demo.java
Author: MIDN Ian Coffey (m261194)
Demo Java Code
**************************************************/

// Import Libraries
import java.util.*;
import java.io.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;


public class demo 
{
    public static void main(String [] args) throws Exception
    {
        int a = Integer.parseInt(args[0]);
        int b = a / 4;
        int c = b % 4;

        System.out.println(c);

    }
}