package com.alramlawi.schoolapp;

import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;

import androidx.appcompat.app.AppCompatActivity;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

public class LiveVideo extends AppCompatActivity {
    private VideoView mainVideoView;
    private ImageView playbtn;
    private ImageView fullbtn;
    private ProgressBar currentprogress;
    private ProgressBar currentprogress1;
    private int current = 0;
    private int duration = 0;
    private Uri videuri;
    private TextView tv;
    int flag = 0;
    String name1;
    TextView desc;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_live_video);
        mainVideoView = findViewById(R.id.myvideo);
        currentprogress = findViewById(R.id.myprogress);
        desc = findViewById(R.id.desc);
        fullbtn = findViewById(R.id.full);
        playbtn = findViewById(R.id.playpause);

        new Connection().execute();
    }

    class Connection extends AsyncTask<String, String, String> {

        @Override
        protected void onProgressUpdate(String... values) {
            Toast.makeText(LiveVideo.this, "Loading...", Toast.LENGTH_SHORT).show();
        }

        @Override
        protected String doInBackground(String... strings) {
            String line = "";
            String res = "";

            try {
                String path = "http://www.dwaipayanatechnologies.com/dwaipayanatech/db/Students/getvideourl.php";

                URL url = new URL(path);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();

                int responseCode = httpURLConnection.getResponseCode();
                InputStream inputStream = httpURLConnection.getInputStream();

                if (responseCode != HttpURLConnection.HTTP_OK) {
                    inputStream = httpURLConnection.getErrorStream();
                } else {
                    inputStream = httpURLConnection.getInputStream();
                }

                BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));

                line = reader.readLine() + "";

            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return line;
        }

        @Override
        protected void onPostExecute(String s) {
            final String url;
            try {
                url= s.replace("\"","");

                videuri = Uri.parse(url);
                mainVideoView.setVideoURI(videuri);
                mainVideoView.requestFocus();
                mainVideoView.start();
                playbtn.setVisibility(View.INVISIBLE);
                fullbtn.setVisibility(View.INVISIBLE);
                // currentprogress1.setVisibility(View.INVISIBLE);
                mainVideoView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        playbtn.setVisibility(View.VISIBLE);
                        fullbtn.setVisibility(View.VISIBLE);
                    }
                });

                playbtn.setVisibility(View.INVISIBLE);
                mainVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {

                    @Override
                    public void onPrepared(MediaPlayer mp) {

                        duration = mp.getDuration() / 1000;
                        mp.start();

                        mp.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() {

                            @Override
                            public void onVideoSizeChanged(MediaPlayer mp, int arg1, int arg2) {
                                // TODO Auto-generated method stub
                                // Log.e(TAG, "Changed");
                                currentprogress.setVisibility(View.GONE);
                                mp.start();
                            }
                        });

                    }
                });


                fullbtn.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Intent i=new Intent(LiveVideo.this,VideoFull.class);
                        i.putExtra("url",url);
                        startActivity(i);

                    }
                });

                playbtn.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        if (flag == 0) {
                            mainVideoView.pause();
                            flag = 1;
                            playbtn.setImageResource(R.drawable.wp);

                        } else {
                            mainVideoView.start();
                            flag = 0;
                            playbtn.setImageResource(R.drawable.pw);
                            playbtn.setVisibility(View.INVISIBLE);
                            fullbtn.setVisibility(View.INVISIBLE);
                        }
                    }
                });

            }
            catch (Exception e) {
                Log.d("ERROR: ", e + "");
                e.printStackTrace();
            }
        }

    }
}
