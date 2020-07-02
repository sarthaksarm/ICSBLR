package com.alramlawi.schoolapp.student;

import android.content.Context;
import android.os.AsyncTask;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

public class BackgroundTaskFetch extends AsyncTask<String,Void,Void> {

    Context ctx;

    BackgroundTaskFetch(Context ctx)
    {
        this.ctx=ctx;
    }

    @Override
    protected void onPreExecute() {
        super.onPreExecute();
    }

    @Override
    protected Void doInBackground(String... voids) {
        String sub1=voids[0];
        String sub1tot=voids[1];
        String sub2=voids[2];
        String sub2tot=voids[3];
        String sub3=voids[4];
        String sub3tot=voids[5];
        String sub4=voids[6];
        String sub4tot=voids[7];
        String sub5=voids[8];
        String sub5tot=voids[9];
        String stud_id=voids[10];

        String stud_url="http://dwaipayanatechnologies.com/dwaipayanatech/db/Students/add_marks.php";

        try {
            URL url=new URL(stud_url);
            HttpURLConnection httpURLConnection=(HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            OutputStream OS=httpURLConnection.getOutputStream();
            BufferedWriter bufferedWriter=new BufferedWriter(new OutputStreamWriter(OS,"UTF-8"));

            String data= URLEncoder.encode("stud_id","UTF-8")+"="+URLEncoder.encode(stud_id,"UTF-8")+"&"+
                    URLEncoder.encode("sub1","UTF-8")+"="+URLEncoder.encode(sub1,"UTF-8")+"&"+
                    URLEncoder.encode("sub1tot","UTF-8")+"="+URLEncoder.encode(sub1tot,"UTF-8")+"&"+

                    URLEncoder.encode("sub2","UTF-8")+"="+URLEncoder.encode(sub2,"UTF-8")+"&"+
                    URLEncoder.encode("sub2tot","UTF-8")+"="+URLEncoder.encode(sub2tot,"UTF-8")+"&"+

                    URLEncoder.encode("sub3","UTF-8")+"="+URLEncoder.encode(sub3,"UTF-8")+"&"+
                    URLEncoder.encode("sub3tot","UTF-8")+"="+URLEncoder.encode(sub3tot,"UTF-8")+"&"+

                    URLEncoder.encode("sub4","UTF-8")+"="+URLEncoder.encode(sub4,"UTF-8")+"&"+
                    URLEncoder.encode("sub4tot","UTF-8")+"="+URLEncoder.encode(sub4tot,"UTF-8")+"&"+

                    URLEncoder.encode("sub5","UTF-8")+"="+URLEncoder.encode(sub5,"UTF-8")+"&"+
                    URLEncoder.encode("sub5tot","UTF-8")+"="+URLEncoder.encode(sub5tot,"UTF-8");

            bufferedWriter.write(data);
            bufferedWriter.flush();
            bufferedWriter.close();
            OS.close();

            InputStream IS=httpURLConnection.getInputStream();
            IS.close();



        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }



        return null;
    }

    @Override
    protected void onProgressUpdate(Void... values) {
        super.onProgressUpdate(values);
    }

    @Override
    protected void onPostExecute(Void aVoid) {
        super.onPostExecute(aVoid);
    }
}
