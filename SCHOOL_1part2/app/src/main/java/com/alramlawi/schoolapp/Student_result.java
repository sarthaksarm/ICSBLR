package com.alramlawi.schoolapp;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class Student_result extends AppCompatActivity {
    TextView sub1,sub2,sub3,sub4,sub5,subtotal,subpercent;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_student_result);

        sub1=findViewById(R.id.sub1score);
        sub2=findViewById(R.id.sub2score);
        sub3=findViewById(R.id.sub3score);
        sub4=findViewById(R.id.sub4score);
        sub5=findViewById(R.id.sub5score);

        subtotal=findViewById(R.id.sumscore);
        subpercent=findViewById(R.id.subpercscore);

        //update content now.



    }
}
