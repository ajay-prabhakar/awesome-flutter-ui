package com.chromicle.foldtask

import android.graphics.PointF
import android.view.animation.Interpolator


/**
 * @author by Chromicle (ajayprabhakar369@gmail.com)
 * @since 7/13/2020
 */

class CubicBezierInterpolator(start: PointF, end: PointF) : Interpolator {
    protected var start: PointF
    protected var end: PointF
    protected var a = PointF()
    protected var b = PointF()
    protected var c = PointF()

    constructor(
        startX: Float,
        startY: Float,
        endX: Float,
        endY: Float
    ) : this(PointF(startX, startY), PointF(endX, endY)) {
    }

    constructor(
        startX: Double,
        startY: Double,
        endX: Double,
        endY: Double
    ) : this(
        startX.toFloat(),
        startY.toFloat(),
        endX.toFloat(),
        endY.toFloat()
    ) {
    }

    override fun getInterpolation(time: Float): Float {
        return getBezierCoordinateY(getXForTime(time))
    }

    protected fun getBezierCoordinateY(time: Float): Float {
        c.y = 3 * start.y
        b.y = 3 * (end.y - start.y) - c.y
        a.y = 1 - c.y - b.y
        return time * (c.y + time * (b.y + time * a.y))
    }

    protected fun getXForTime(time: Float): Float {
        var x = time
        var z: Float
        for (i in 1..13) {
            z = getBezierCoordinateX(x) - time
            if (Math.abs(z) < 1e-3) {
                break
            }
            x -= z / getXDerivate(x)
        }
        return x
    }

    private fun getXDerivate(t: Float): Float {
        return c.x + t * (2 * b.x + 3 * a.x * t)
    }

    private fun getBezierCoordinateX(time: Float): Float {
        c.x = 3 * start.x
        b.x = 3 * (end.x - start.x) - c.x
        a.x = 1 - c.x - b.x
        return time * (c.x + time * (b.x + time * a.x))
    }

    companion object {
        //A cool decelerated interpolated. It's like the wet version of Alex Bailon dreams
        val STANDARD_CURVE = CubicBezierInterpolator(.29, .09, .24, .99)

        //A really UGLY interpolator. Only useful to see if the interpolatod is being applied
        val FATALE_CURVE = CubicBezierInterpolator(0.0, 1.34, 1.0, 1.81)
    }

    init {
        require(!(start.x < 0 || start.x > 1)) { "startX value must be in the range [0, 1]" }
        require(!(end.x < 0 || end.x > 1)) { "endX value must be in the range [0, 1]" }
        this.start = start
        this.end = end
    }
}