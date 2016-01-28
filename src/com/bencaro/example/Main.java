package com.bencaro.example;

import java.io.*;
import java.util.regex.Pattern;
import java.net.URI;

public class Main
{
    public static void main(String[] args)
    {
        System.out.println("*************************************************************");
        System.out.println("Hello World");
        for (int i = 0; i < args.length; i++) 
        {
            System.out.println("Arg " + i + ":\t " + args[i]);
        }
        System.out.println("*************************************************************");
    }
}
