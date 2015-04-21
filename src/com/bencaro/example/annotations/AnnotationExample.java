package com.bencaro.example.annotations;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public @interface AnnotationExample {
    String AnnotationString1();
    String AnnotationString2();
    int AnnotationInt1();
    int AnnotationInt2();
}
