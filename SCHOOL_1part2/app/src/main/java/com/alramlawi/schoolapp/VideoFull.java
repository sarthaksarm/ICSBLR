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

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class VideoFull extends AppCompatActivity {
    private VideoView mainVideoView;
    private ImageView playbtn;
    private ProgressBar currentprogress;
    private ProgressBar currentprogress1;
    private int current=0;
    private int duration=0;
    private Uri videuri;
    private TextView tv;
    int flag=0;
    String name1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_video_full);

        mainVideoView=findViewById(R.id.myvideo);
        currentprogress=findViewById(R.id.myprogress);
        playbtn=findViewById(R.id.playpause);

        String url=getIntent().getStringExtra("url");

        videuri= Uri.parse(url);
        mainVideoView.setVideoURI(videuri);
        mainVideoView.requestFocus();
        mainVideoView.start();
        playbtn.setVisibility(View.INVISIBLE);

        mainVideoView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                playbtn.setVisibility(View.VISIBLE);
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
                }
            }
        });
    }
}

