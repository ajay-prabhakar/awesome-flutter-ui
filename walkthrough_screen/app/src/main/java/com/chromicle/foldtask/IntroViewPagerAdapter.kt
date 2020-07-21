package com.chromicle.foldtask

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.animation.AnimationUtils
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.viewpager.widget.PagerAdapter
import com.google.android.material.tabs.TabLayout

class IntroViewPagerAdapter(var mContext: Context, var mListScreen: List<ScreenItem>) :
    PagerAdapter() {

    override fun instantiateItem(container: ViewGroup, position: Int): Any {

        val inflater = mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
        val layoutScreen = inflater.inflate(R.layout.layout_screen, null)
        val imgSlide = layoutScreen.findViewById<ImageView>(R.id.intro_img)
        val title = layoutScreen.findViewById<TextView>(R.id.intro_title)
        val description = layoutScreen.findViewById<TextView>(R.id.intro_description)
        val image2 = layoutScreen.findViewById<ImageView>(R.id.imageView)
        val image3 = layoutScreen.findViewById<ImageView>(R.id.slide2Image)

        if (position == 1) {
            imgSlide.visibility = View.INVISIBLE
            image2.visibility = View.INVISIBLE
            image3.visibility = View.VISIBLE
        } else {
            imgSlide.visibility = View.VISIBLE
            image2.visibility = View.VISIBLE
            image3.visibility = View.INVISIBLE
        }

        val a = AnimationUtils.loadAnimation(mContext, R.anim.text_animation)
        a.reset()
        val b = AnimationUtils.loadAnimation(mContext, R.anim.button_animation)
        b.reset()

        description.clearAnimation()
        description.startAnimation(a)
        title.clearAnimation()
        title.startAnimation(b)

        title.text = mListScreen[position].title
        description.text = mListScreen[position].description
        imgSlide.setImageResource(mListScreen[position].screenImg)
        container.addView(layoutScreen)
        return layoutScreen
    }

    override fun getCount(): Int {
        return mListScreen.size
    }

    override fun isViewFromObject(view: View, o: Any): Boolean {
        return view === o
    }

    override fun destroyItem(container: ViewGroup, position: Int, `object`: Any) {
        container.removeView(`object` as View)
    }
}