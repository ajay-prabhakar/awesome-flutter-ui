package com.chromicle.foldtask

import android.animation.ValueAnimator
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.view.animation.Animation
import android.view.animation.AnimationUtils
import android.view.animation.LinearInterpolator
import android.widget.Button
import android.widget.LinearLayout
import androidx.appcompat.app.AppCompatActivity
import androidx.viewpager.widget.ViewPager
import com.google.android.material.tabs.TabLayout
import java.util.*


class IntroActivity : AppCompatActivity() {
    var introViewPagerAdapter: IntroViewPagerAdapter? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // make the activity on full screen
        setContentView(R.layout.activity_intro)

        // hide the action bar
        supportActionBar!!.hide()

        // init views
        val btnGetStarted = findViewById<Button>(R.id.btn_get_started)
        val tabIndicator = findViewById<TabLayout>(R.id.tab_indicator)

        tabIndicator.addOnTabSelectedListener(object : TabLayout.OnTabSelectedListener {
            override fun onTabSelected(tab: TabLayout.Tab?) {
                tabIndicator.defaultwidth(tabIndicator.selectedTabPosition)
            }

            override fun onTabUnselected(tab: TabLayout.Tab?) {
                if (tabIndicator.selectedTabPosition == 1) {
                    tabIndicator.smallwidth(0)
                } else {
                    tabIndicator.smallwidth(1)
                }
            }

            override fun onTabReselected(tab: TabLayout.Tab?) {
            }
        })

        val btnAnim =
            AnimationUtils.loadAnimation(applicationContext, R.anim.button_animation) as Animation

        // fill list screen
        val mList: MutableList<ScreenItem> = ArrayList()
        mList.add(
            ScreenItem(
                "Hello!",
                "Your own private Cloud is one step away",
                R.drawable.art_cloud,
                true,
                true,
                false
            )
        )
        mList.add(
            ScreenItem(
                "Your premium cloud",
                "Launch your next campaign within minutes with Cloud Campaign Monitor.",
                R.drawable.art_work,
                false,
                false,
                true
            )
        )

        // setup viewpager
        val screenPager = findViewById<ViewPager>(R.id.screen_viewpager)
        introViewPagerAdapter = IntroViewPagerAdapter(this, mList)
        screenPager.setAdapter(introViewPagerAdapter)

        // setup tablayout with viewpager
        tabIndicator.setupWithViewPager(screenPager)
        btnGetStarted.setAnimation(btnAnim)

        // Get Started button click listener
        btnGetStarted.setOnClickListener(View.OnClickListener {
            val mainActivity = Intent(applicationContext, MainActivity::class.java)
            startActivity(mainActivity)
            finish()
        })

        tabIndicator.defaultwidth(0)
        tabIndicator.smallwidth(1)
    }

    //small tab width
    fun TabLayout.smallwidth(tabPosition: Int) {
        val layout = (this.getChildAt(0) as LinearLayout).getChildAt(tabPosition) as LinearLayout
        val layoutParams = layout.layoutParams as LinearLayout.LayoutParams
        val m1 = ValueAnimator.ofFloat(1.0f, 0.05f) //fromWeight, toWeight
        m1.duration = 300
        m1.startDelay = -200 //Optional Delay

        m1.interpolator = LinearInterpolator()
        m1.addUpdateListener { animation ->
            (layout.getLayoutParams() as LinearLayout.LayoutParams).weight = animation.animatedValue as Float
            layout.requestLayout()
        }
        m1.start()
        layoutParams.setMargins(10, 0, 10, 0)
        layout.layoutParams = layoutParams
    }

    // default width
    fun TabLayout.defaultwidth(tabPosition: Int) {
        val layout = (this.getChildAt(0) as LinearLayout).getChildAt(tabPosition) as LinearLayout
        val layoutParams = layout.layoutParams as LinearLayout.LayoutParams
        val m1 = ValueAnimator.ofFloat(0.05f,1f) //fromWeight, toWeight
        m1.duration = 300
        m1.startDelay = -200 //Optional Delay

        m1.interpolator = LinearInterpolator()
        m1.addUpdateListener { animation ->
            (layout.getLayoutParams() as LinearLayout.LayoutParams).weight = animation.animatedValue as Float
            layout.requestLayout()
        }
        m1.start()
        layoutParams.setMargins(10, 0, 10, 0)
        layout.layoutParams = layoutParams
    }
}
