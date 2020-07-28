package com.alramlawi.schoolapp.parent;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.alramlawi.schoolapp.Blog;
import com.alramlawi.schoolapp.R;
import com.firebase.ui.database.FirebaseRecyclerAdapter;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.squareup.picasso.Picasso;

public class ImageGallery extends AppCompatActivity {
    private RecyclerView recyclerView;
    private DatabaseReference mDatabase;
    RecyclerView.LayoutManager layoutManager;
    private Boolean moving=true;
    TextView nettextdevelop;
    CountDownTimer countDownTimer;
    int timeValue = 5;
    ProgressBar progressBar;
    TextView loadtxt;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_image_gallery);
        progressBar=findViewById(R.id.progressbar);

        mDatabase = FirebaseDatabase.getInstance().getReference("admin").child("images");
        mDatabase.keepSynced(true);

        nettextdevelop=findViewById(R.id.nettxtdevelop);

        recyclerView = (RecyclerView) findViewById(R.id.recycler_view);
        recyclerView.setHasFixedSize(true);

        layoutManager = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(layoutManager);

        load();
    }

    public void load() {
        FirebaseRecyclerAdapter<Blog, BlogViewHolder> firebaseRecyclerAdapter = new FirebaseRecyclerAdapter<Blog, ImageGallery.BlogViewHolder>
                (Blog.class, R.layout.cardviewimage, ImageGallery.BlogViewHolder.class, mDatabase) {
            @Override
            protected void populateViewHolder(ImageGallery.BlogViewHolder viewHolder, Blog model, int position) {

                viewHolder.setImage(getApplicationContext(), model.getImage());
                progressBar.setVisibility(View.INVISIBLE);
            }

        };

        recyclerView.setAdapter(firebaseRecyclerAdapter);
    }

    public static class BlogViewHolder extends RecyclerView.ViewHolder {
        View mview;

        public BlogViewHolder(View itemView) {
            super(itemView);
            mview = itemView;
        }

        public void setImage(Context ctx, String image) {
            ImageView post_Image = (ImageView)mview.findViewById(R.id.item_image);

            Picasso.get().load(image).placeholder(R.mipmap.ic_launcher).into(post_Image);

        }
    }


}