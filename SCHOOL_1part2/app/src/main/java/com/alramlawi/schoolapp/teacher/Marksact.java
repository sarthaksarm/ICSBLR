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

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_marksact);

        //fetch stud_id from intent upon click of which this activity is opened from.
        final String stud_id="1";  //update stud_id here.

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

                //save scores where student_id=stud_id;

                String stud_url="https://schoolmanager000.000webhostapp.com/Students/add_marks.php";
                try {
                    URL url=new URL(stud_url);
                    HttpURLConnection httpURLConnection=(HttpURLConnection) url.openConnection();
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setDoOutput(true);
                    OutputStream OS=httpURLConnection.getOutputStream();
                    BufferedWriter bufferedWriter=new BufferedWriter(new OutputStreamWriter(OS,"UTF-8"));


                    String data= URLEncoder.encode("stud_id","UTF-8")+" = "+URLEncoder.encode(stud_id+"","UTF-8")+"&"+
                            URLEncoder.encode("sub1","UTF-8")+" = "+URLEncoder.encode(sub1+"","UTF-8")+"&"+
                            URLEncoder.encode("sub1tot","UTF-8")+" = "+URLEncoder.encode(sub1tot+"","UTF-8")+"&"+

                            URLEncoder.encode("sub2","UTF-8")+" = "+URLEncoder.encode(sub2+"","UTF-8")+"&"+
                            URLEncoder.encode("sub2tot","UTF-8")+" = "+URLEncoder.encode(sub2tot+"","UTF-8")+"&"+

                            URLEncoder.encode("sub3","UTF-8")+" = "+URLEncoder.encode(sub3+"","UTF-8")+"&"+
                            URLEncoder.encode("sub3tot","UTF-8")+" = "+URLEncoder.encode(sub3tot+"","UTF-8")+"&"+

                            URLEncoder.encode("sub4","UTF-8")+" = "+URLEncoder.encode(sub4+"","UTF-8")+"&"+
                            URLEncoder.encode("sub4tot","UTF-8")+" = "+URLEncoder.encode(sub4tot+"","UTF-8")+"&"+

                            URLEncoder.encode("sub5","UTF-8")+" = "+URLEncoder.encode(sub5+"","UTF-8")+"&"+
                            URLEncoder.encode("sub5tot","UTF-8")+" = "+URLEncoder.encode(sub5tot+"","UTF-8");

                    bufferedWriter.write(data);
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    OS.close();

                    InputStream IS=httpURLConnection.getInputStream();
                    IS.close();

                    Toast.makeText(Marksact.this, "Marks are entered!", Toast.LENGTH_SHORT).show();

                    onBackPressed();
                    finish();  //move to last activity for other students and close this activity

                } catch (MalformedURLException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }


            }
        });


    }
}
