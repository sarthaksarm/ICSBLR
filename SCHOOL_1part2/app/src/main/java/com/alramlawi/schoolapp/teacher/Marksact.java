package com.alramlawi.schoolapp.teacher;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.alramlawi.schoolapp.R;

public class Marksact extends AppCompatActivity {
    EditText sub1score,sub1total,sub2score,sub2total,sub3score,sub3total,sub4score,sub4total,sub5score,sub5total;
    Button submitbtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_marksact);

        sub1score=findViewById(R.id.sub1scoreedit);
        sub1total=findViewById(R.id.sub1totaledit);

        sub2score=findViewById(R.id.sub2scoreedit);
        sub2total=findViewById(R.id.sub2totaledit);

        sub3score=findViewById(R.id.sub3scoreedit);
        sub3total=findViewById(R.id.sub3totaledit);

        sub4score=findViewById(R.id.sub4scoreedit);
        sub4total=findViewById(R.id.sub4totaledit);

        sub5score=findViewById(R.id.sub5scoreedit);
        sub5total=findViewById(R.id.sub5totaledit);

        submitbtn=findViewById(R.id.add_marksbtn);

        submitbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                float sub1= Float.parseFloat(sub1score.getText().toString());
                float sub1tot=Float.parseFloat(sub1total.getText().toString());

                float sub2= Float.parseFloat(sub2score.getText().toString());
                float sub2tot=Float.parseFloat(sub2total.getText().toString());

                float sub3= Float.parseFloat(sub3score.getText().toString());
                float sub3tot=Float.parseFloat(sub3total.getText().toString());

                float sub4= Float.parseFloat(sub4score.getText().toString());
                float sub4tot=Float.parseFloat(sub4total.getText().toString());

                float sub5= Float.parseFloat(sub5score.getText().toString());
                float sub5tot=Float.parseFloat(sub5total.getText().toString());

                //save scores

            }
        });


    }
}
