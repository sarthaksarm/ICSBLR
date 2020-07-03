package com.alramlawi.schoolapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;

public class Student_result extends AppCompatActivity {
    TextView sub1,sub2,sub3,sub4,sub5,subtotal,subpercent;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_student_result);
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
        String name = preferences.getString("name", "");

        sub1=findViewById(R.id.sub1score);
        sub2=findViewById(R.id.sub2score);
        sub3=findViewById(R.id.sub3score);
        sub4=findViewById(R.id.sub4score);
        sub5=findViewById(R.id.sub5score);

        subtotal=findViewById(R.id.sumscore);
        subpercent=findViewById(R.id.subpercscore);

        new Connection().execute(name);
    }

    class Connection extends AsyncTask<String,String,String> {

        @Override
        protected void onProgressUpdate(String... values) {
            Toast.makeText(Student_result.this, "Loading...", Toast.LENGTH_SHORT).show();
        }

        @Override
        protected String doInBackground(String... strings) {
            String line = "";
            String res="";
            String name=strings[0];

            if(name.equals(""))
                name="std_1";

            try {
                String path = "http://www.dwaipayanatechnologies.com/dwaipayanatech/db/Students/fetch_marks.php";
                URL url = new URL(path);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);

                OutputStream OS=httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter=new BufferedWriter(new OutputStreamWriter(OS,"UTF-8"));
                String data=URLEncoder.encode("name","UTF-8")+"="+URLEncoder.encode(name,"UTF-8");
                bufferedWriter.write(data);
                bufferedWriter.flush();
                bufferedWriter.close();
                OS.close();

                InputStream IS = httpURLConnection.getInputStream();
                BufferedReader reader = new BufferedReader(new InputStreamReader(IS));

                line=reader.readLine()+"";
            }

            catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        return line;
        }


        @Override
        protected void onPostExecute(String s) {

            try {
                JSONObject jsonObject=new JSONObject(s);
                Log.d("JSONBJ: ",jsonObject+"");

                int s1=jsonObject.getInt("subj1");
                int s1tot=jsonObject.getInt("subj1tot");
                int s2=jsonObject.getInt("subj2");
                int s2tot=jsonObject.getInt("subj2tot");
                int s3=jsonObject.getInt("subj3");
                int s3tot=jsonObject.getInt("subj3tot");
                int s4=jsonObject.getInt("subj4");
                int s4tot=jsonObject.getInt("subj4tot");
                int s5=jsonObject.getInt("subj5");
                int s5tot=jsonObject.getInt("subj5tot");

                sub1.setText(s1+"/"+s1tot);
                sub2.setText(s2+"/"+s2tot);
                sub3.setText(s3+"/"+s3tot);
                sub4.setText(s4+"/"+s4tot);
                sub5.setText(s5+"/"+s5tot);

                int sum=s1+s2+s3+s4+s5;
                int sum2=s1tot+s2tot+s3tot+s4tot+s5tot;
                subtotal.setText(sum+"");
                float perc=((float)sum/sum2)*100;
                subpercent.setText(perc+" %");


            } catch (JSONException e) {
                Log.d("JSONERROR: ",e+"");
                e.printStackTrace();
            }
        }
    }
}