package com.alramlawi.schoolapp;

import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.VideoView;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.snackbar.Snackbar;

public class LiveVideo extends AppCompatActivity {
    private VideoView mainVideoView;
    private ImageView playbtn;
    private ImageView fullbtn;
    private ProgressBar currentprogress;
    private ProgressBar currentprogress1;
    private int current=0;
    private int duration=0;
    private Uri videuri;
    private TextView tv;
    int flag=0;
    String name1;
    TextView desc;
    String url="https://firebasestorage.googleapis.com/v0/b/sihotp-cc4af.appspot.com/o/ScInk%201.3%20Final%20(1)%20(1).mp4?alt=media&token=f8d602bc-74c7-4212-a42d-6901ad6c88c4";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_live_video);
        mainVideoView=findViewById(R.id.myvideo);
        currentprogress=findViewById(R.id.myprogress);
        desc=findViewById(R.id.desc);
        fullbtn=findViewById(R.id.full);
        playbtn=findViewById(R.id.playpause);

                    videuri= Uri.parse(url);
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

                            duration=mp.getDuration()/1000;
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

                    playbtn.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {

                            if(flag==0) {
                                mainVideoView.pause();
                                flag=1;
                                playbtn.setImageResource(R.drawable.wp);

                            }
                            else
                            {
                                mainVideoView.start();
                                flag=0;
                                playbtn.setImageResource(R.drawable.pw);
                                playbtn.setVisibility(View.INVISIBLE);
                                fullbtn.setVisibility(View.INVISIBLE);
                            }
                        }
                    });
                }

}
