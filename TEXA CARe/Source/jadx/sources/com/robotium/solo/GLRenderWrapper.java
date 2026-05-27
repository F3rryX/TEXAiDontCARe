package com.robotium.solo;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.view.View;
import java.nio.IntBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes.dex */
class GLRenderWrapper implements GLSurfaceView.Renderer {
    private int glVersion;
    private int height;
    private CountDownLatch latch;
    private GLSurfaceView.Renderer renderer;
    private boolean takeScreenshot;
    private final GLSurfaceView view;
    private int width;

    public GLRenderWrapper(GLSurfaceView gLSurfaceView, GLSurfaceView.Renderer renderer, CountDownLatch countDownLatch) {
        this.takeScreenshot = true;
        this.view = gLSurfaceView;
        this.renderer = renderer;
        this.latch = countDownLatch;
        this.width = gLSurfaceView.getWidth();
        this.height = gLSurfaceView.getHeight();
        Integer num = (Integer) new Reflect(gLSurfaceView).field("mEGLContextClientVersion").out(Integer.class);
        if (num != null) {
            this.glVersion = num.intValue();
        } else {
            this.glVersion = -1;
            this.takeScreenshot = false;
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        this.renderer.onSurfaceCreated(gl10, eGLConfig);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        this.width = i;
        this.height = i2;
        this.renderer.onSurfaceChanged(gl10, i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        Bitmap bitmapSavePixels;
        this.renderer.onDrawFrame(gl10);
        if (this.takeScreenshot) {
            if (this.glVersion >= 2) {
                bitmapSavePixels = savePixels(0, 0, this.width, this.height);
            } else {
                bitmapSavePixels = savePixels(0, 0, this.width, this.height, gl10);
            }
            new Reflect(this.view).field("mDrawingCache").type(View.class).in(bitmapSavePixels);
            this.latch.countDown();
            this.takeScreenshot = false;
        }
    }

    public void setTakeScreenshot() {
        this.takeScreenshot = true;
    }

    public void setLatch(CountDownLatch countDownLatch) {
        this.latch = countDownLatch;
    }

    private Bitmap savePixels(int i, int i2, int i3, int i4) {
        int i5 = i2 + i4;
        int[] iArr = new int[i3 * i5];
        int[] iArr2 = new int[i3 * i4];
        IntBuffer intBufferWrap = IntBuffer.wrap(iArr);
        intBufferWrap.position(0);
        GLES20.glReadPixels(i, 0, i3, i5, 6408, 5121, intBufferWrap);
        int i6 = 0;
        int i7 = 0;
        while (i6 < i4) {
            for (int i8 = 0; i8 < i3; i8++) {
                int i9 = iArr[(i6 * i3) + i8];
                iArr2[(((i4 - i7) - 1) * i3) + i8] = (i9 & (-16711936)) | ((i9 << 16) & 16711680) | ((i9 >> 16) & 255);
            }
            i6++;
            i7++;
        }
        return Bitmap.createBitmap(iArr2, i3, i4, Bitmap.Config.ARGB_8888);
    }

    private static Bitmap savePixels(int i, int i2, int i3, int i4, GL10 gl10) {
        int i5 = i2 + i4;
        int[] iArr = new int[i3 * i5];
        int[] iArr2 = new int[i3 * i4];
        IntBuffer intBufferWrap = IntBuffer.wrap(iArr);
        intBufferWrap.position(0);
        gl10.glReadPixels(i, 0, i3, i5, 6408, 5121, intBufferWrap);
        int i6 = 0;
        int i7 = 0;
        while (i6 < i4) {
            for (int i8 = 0; i8 < i3; i8++) {
                int i9 = iArr[(i6 * i3) + i8];
                iArr2[(((i4 - i7) - 1) * i3) + i8] = (i9 & (-16711936)) | ((i9 << 16) & 16711680) | ((i9 >> 16) & 255);
            }
            i6++;
            i7++;
        }
        return Bitmap.createBitmap(iArr2, i3, i4, Bitmap.Config.ARGB_8888);
    }
}
