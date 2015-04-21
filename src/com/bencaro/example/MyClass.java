package com.bencaro.example;

import com.bencaro.example.annotations.*;

public class MyClass {

    @AnnotationExample(
        AnnotationString1 = "String1",
        AnnotationString2 = "String2",
        AnnotationInt1 = 1,
        AnnotationInt2 = 2
    )
    public MyClass() {};
}
