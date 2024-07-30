package com.example.flutter_text_example

import android.content.Context
import android.graphics.Color
import android.view.View
import android.widget.TextView
import io.flutter.plugin.platform.PlatformView

internal class NativeView(context: Context, id: Int, creationParams: Map<*, *>) : PlatformView {
    private val textView: TextView = TextView(context)

    override fun getView(): View {
        return textView
    }

    override fun dispose() {}

    init {
        textView.textSize = 16f
//        textView.setBackgroundColor(Color.rgb(255, 255, 255))
        textView.text = creationParams["text"].toString()
    }
}
