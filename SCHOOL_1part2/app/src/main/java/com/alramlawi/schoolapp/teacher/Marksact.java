package com.alramlawi.schoolapp.teacher;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.alramlawi.schoolapp.R;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

public class Marksact extends AppCompatActivity {
    EditText sub1score,sub1total,sub2score,sub2total,sub3score,sub3total,sub4score,sub4total,sub5score,sub5total;
    Button submitbtn;
    EditText studid;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_marksact);

        studid=findViewById(R.id.idedit);

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

                String stud_id=studid.getText().toString();  //update stud_id here.

                String sub1= sub1score.getText().toString();
                String sub1tot=sub1total.getText().toString();

                String sub2= sub2score.getText().toString();
                String sub2tot=sub2total.getText().toString();

                String sub3= sub3score.getText().toString();
                String sub3tot=sub3total.getText().toString();

                String sub4= sub4score.getText().toString();
                String sub4tot=sub4total.getText().toString();

                String sub5= sub5score.getText().toString();
                String sub5tot=sub5total.getText().toString();

                BackgroundTask backgroundTask=new BackgroundTask(view.getContext());
                backgroundTask.execute(sub1,sub1tot,sub2,sub2tot,sub3,sub3tot,sub4,sub4tot,sub5,sub5tot,stud_id);

                Toast.makeText(Marksact.this, "Marks are entered!", Toast.LENGTH_SHORT).show();


                //save scores where student_id=stud_id;
                //String stud_url="https://schoolmanager000.000webhostapp.com/Students/add_marks.php";

                onBackPressed();
                finish();  //move to last activity for other students and close this activity
            }
        });


    }
}
