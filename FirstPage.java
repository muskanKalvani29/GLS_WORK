package com.example.listviewdemo;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import java.util.ArrayList;

public class FirstPage extends AppCompatActivity {

    ArrayList<String> animation = new ArrayList<>();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_first_page);


        Button submit = findViewById(R.id.button);

        submit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {



                final EditText first_name = findViewById(R.id.name);
                animation.add(first_name.getText().toString());
                Intent in = new Intent(FirstPage.this,MainActivity.class);
//                in.putExtra("name",first_name.getText().toString());
//                in.putExtra("myArr",animation);
                in.putStringArrayListExtra("myArr",animation);

                startActivity(in);

            }
        });

    }
}
