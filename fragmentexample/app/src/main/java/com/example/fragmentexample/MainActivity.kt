package com.example.fragmentexample

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import androidx.fragment.app.Fragment

class MainActivity : AppCompatActivity() {

    // This method is called when the activity is first created
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Get a reference to the "btn_frag" button from the layout
        val btn: Button = findViewById(R.id.btn_frag)

        // Set an OnClickListener on the button
        btn.setOnClickListener {
            // When the button is clicked, replace
            // the current fragment with a new
            // instance of the FirstFragment
            replaceFragment(BlankFragment())

            // Hide the button
            btn.visibility = View.GONE
        }
    }

    // This method replaces the current fragment
    // with a new fragment
    fun replaceFragment(fragment: Fragment) {
        // Get a reference to the FragmentManager
        val fragmentManager = supportFragmentManager

        // Start a new FragmentTransaction
        val fragmentTransaction = fragmentManager.beginTransaction()

        // Replace the current fragment with the new fragment
        fragmentTransaction.replace(R.id.frame_layout, fragment)

        // Commit the FragmentTransaction
        fragmentTransaction.commit()
    }
}