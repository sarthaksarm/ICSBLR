package com.alramlawi.schoolapp.parent;

import android.os.Bundle;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import com.alramlawi.schoolapp.R;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class Fee_details extends AppCompatActivity {
    TextView dettxt;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fee_details);

        dettxt=findViewById(R.id.feedetailtxt);

        DatabaseReference ref= FirebaseDatabase.getInstance().getReference("admin").child("Fee").child("amount");

        ref.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                int feeamount=Integer.parseInt(dataSnapshot.getValue().toString());

                String res=feeamount+" Rs.";
                dettxt.setText(res);
            }

            @Override
            public void onCancelled(DatabaseError databaseError) {

            }
        });
    }
}
