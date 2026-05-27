package com.robotium.solo;

import android.app.Activity;
import android.app.Instrumentation;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.robotium.solo.Solo;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class ScreenshotTaker {
    private static final long TIMEOUT_SCREENSHOT_MUTEX = TimeUnit.SECONDS.toMillis(2);
    private final ActivityUtils activityUtils;
    private final Solo.Config config;
    private final Instrumentation instrumentation;
    private final Sleeper sleeper;
    private final ViewFetcher viewFetcher;
    private final Object screenshotMutex = new Object();
    private final String LOG_TAG = "Robotium";
    private ScreenshotSequenceThread screenshotSequenceThread = null;
    private HandlerThread screenShotSaverThread = null;
    private ScreenShotSaver screenShotSaver = null;

    ScreenshotTaker(Solo.Config config, Instrumentation instrumentation, ActivityUtils activityUtils, ViewFetcher viewFetcher, Sleeper sleeper) {
        this.config = config;
        this.instrumentation = instrumentation;
        this.activityUtils = activityUtils;
        this.viewFetcher = viewFetcher;
        this.sleeper = sleeper;
    }

    public void takeScreenshot(String str, int i) {
        View screenshotView = getScreenshotView();
        if (screenshotView == null) {
            return;
        }
        initScreenShotSaver();
        ScreenshotRunnable screenshotRunnable = new ScreenshotRunnable(screenshotView, str, i);
        synchronized (this.screenshotMutex) {
            Activity currentActivity = this.activityUtils.getCurrentActivity(false);
            if (currentActivity != null) {
                currentActivity.runOnUiThread(screenshotRunnable);
            } else {
                this.instrumentation.runOnMainSync(screenshotRunnable);
            }
            try {
                this.screenshotMutex.wait(TIMEOUT_SCREENSHOT_MUTEX);
            } catch (InterruptedException unused) {
            }
        }
    }

    public void startScreenshotSequence(String str, int i, int i2, int i3) {
        initScreenShotSaver();
        if (this.screenshotSequenceThread != null) {
            throw new RuntimeException("only one screenshot sequence is supported at a time");
        }
        ScreenshotSequenceThread screenshotSequenceThread = new ScreenshotSequenceThread(str, i, i2, i3);
        this.screenshotSequenceThread = screenshotSequenceThread;
        screenshotSequenceThread.start();
    }

    public void stopScreenshotSequence() {
        ScreenshotSequenceThread screenshotSequenceThread = this.screenshotSequenceThread;
        if (screenshotSequenceThread != null) {
            screenshotSequenceThread.interrupt();
            this.screenshotSequenceThread = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getScreenshotView() {
        ViewFetcher viewFetcher = this.viewFetcher;
        View recentDecorView = viewFetcher.getRecentDecorView(viewFetcher.getWindowDecorViews());
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) Timeout.getSmallTimeout());
        while (recentDecorView == null) {
            if (SystemClock.uptimeMillis() > jUptimeMillis) {
                return null;
            }
            this.sleeper.sleepMini();
            ViewFetcher viewFetcher2 = this.viewFetcher;
            recentDecorView = viewFetcher2.getRecentDecorView(viewFetcher2.getWindowDecorViews());
        }
        wrapAllGLViews(recentDecorView);
        return recentDecorView;
    }

    private void wrapAllGLViews(View view) {
        ArrayList<GLSurfaceView> currentViews = this.viewFetcher.getCurrentViews(GLSurfaceView.class, true, view);
        CountDownLatch countDownLatch = new CountDownLatch(currentViews.size());
        for (GLSurfaceView gLSurfaceView : currentViews) {
            Object objOut = new Reflect(gLSurfaceView).field("mGLThread").type(GLSurfaceView.class).out(Object.class);
            GLSurfaceView.Renderer renderer = (GLSurfaceView.Renderer) new Reflect(objOut).field("mRenderer").out(GLSurfaceView.Renderer.class);
            if (renderer == null) {
                renderer = (GLSurfaceView.Renderer) new Reflect(gLSurfaceView).field("mRenderer").out(GLSurfaceView.Renderer.class);
                objOut = gLSurfaceView;
            }
            if (renderer == null) {
                countDownLatch.countDown();
            } else if (renderer instanceof GLRenderWrapper) {
                GLRenderWrapper gLRenderWrapper = (GLRenderWrapper) renderer;
                gLRenderWrapper.setTakeScreenshot();
                gLRenderWrapper.setLatch(countDownLatch);
            } else {
                new Reflect(objOut).field("mRenderer").in(new GLRenderWrapper(gLSurfaceView, renderer, countDownLatch));
            }
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getBitmapOfWebView(WebView webView) {
        Picture pictureCapturePicture = webView.capturePicture();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(pictureCapturePicture.getWidth(), pictureCapturePicture.getHeight(), Bitmap.Config.ARGB_8888);
        pictureCapturePicture.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getBitmapOfView(View view) {
        view.destroyDrawingCache();
        view.buildDrawingCache(false);
        Bitmap drawingCache = view.getDrawingCache();
        if (drawingCache == null) {
            return null;
        }
        Bitmap.Config config = drawingCache.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapCopy = drawingCache.copy(config, false);
        drawingCache.recycle();
        view.destroyDrawingCache();
        return bitmapCopy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFileName(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("ddMMyy-hhmmss");
        if (str == null) {
            if (this.config.screenshotFileType == Solo.Config.ScreenshotFileType.JPEG) {
                return simpleDateFormat.format(new Date()).toString() + ".jpg";
            }
            return simpleDateFormat.format(new Date()).toString() + ".png";
        }
        if (this.config.screenshotFileType == Solo.Config.ScreenshotFileType.JPEG) {
            return str + ".jpg";
        }
        return str + ".png";
    }

    private void initScreenShotSaver() {
        if (this.screenShotSaverThread == null || this.screenShotSaver == null) {
            HandlerThread handlerThread = new HandlerThread("ScreenShotSaver");
            this.screenShotSaverThread = handlerThread;
            handlerThread.start();
            this.screenShotSaver = new ScreenShotSaver(this.screenShotSaverThread);
        }
    }

    private class ScreenshotSequenceThread extends Thread {
        private int frameDelay;
        private int maxFrames;
        private String name;
        private int quality;
        private int seqno = 0;
        private boolean keepRunning = true;

        public ScreenshotSequenceThread(String str, int i, int i2, int i3) {
            this.name = str;
            this.quality = i;
            this.frameDelay = i2;
            this.maxFrames = i3;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.seqno < this.maxFrames && this.keepRunning && !Thread.interrupted()) {
                doScreenshot();
                this.seqno++;
                try {
                    Thread.sleep(this.frameDelay);
                } catch (InterruptedException unused) {
                }
            }
            ScreenshotTaker.this.screenshotSequenceThread = null;
        }

        public void doScreenshot() {
            View screenshotView = ScreenshotTaker.this.getScreenshotView();
            if (screenshotView == null) {
                this.keepRunning = false;
            }
            String str = this.name + "_" + this.seqno;
            ScreenshotRunnable screenshotRunnable = ScreenshotTaker.this.new ScreenshotRunnable(screenshotView, str, this.quality);
            Log.d("Robotium", "taking screenshot " + str);
            Activity currentActivity = ScreenshotTaker.this.activityUtils.getCurrentActivity(false);
            if (currentActivity == null) {
                ScreenshotTaker.this.instrumentation.runOnMainSync(screenshotRunnable);
            } else {
                currentActivity.runOnUiThread(screenshotRunnable);
            }
        }

        @Override // java.lang.Thread
        public void interrupt() {
            this.keepRunning = false;
            super.interrupt();
        }
    }

    private class ScreenshotRunnable implements Runnable {
        private String name;
        private int quality;
        private View view;

        public ScreenshotRunnable(View view, String str, int i) {
            this.view = view;
            this.name = str;
            this.quality = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = this.view;
            if (view != null) {
                Bitmap bitmapOfWebView = view instanceof WebView ? ScreenshotTaker.this.getBitmapOfWebView((WebView) view) : ScreenshotTaker.this.getBitmapOfView(view);
                if (bitmapOfWebView != null) {
                    ScreenshotTaker.this.screenShotSaver.saveBitmap(bitmapOfWebView, this.name, this.quality);
                    return;
                }
                Log.d("Robotium", "NULL BITMAP!!");
            }
            synchronized (ScreenshotTaker.this.screenshotMutex) {
                ScreenshotTaker.this.screenshotMutex.notify();
            }
        }
    }

    private class ScreenShotSaver extends Handler {
        public ScreenShotSaver(HandlerThread handlerThread) {
            super(handlerThread.getLooper());
        }

        public void saveBitmap(Bitmap bitmap, String str, int i) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i;
            messageObtainMessage.obj = bitmap;
            messageObtainMessage.getData().putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
            sendMessage(messageObtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (ScreenshotTaker.this.screenshotMutex) {
                String string = message.getData().getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
                int i = message.arg1;
                Bitmap bitmap = (Bitmap) message.obj;
                if (bitmap != null) {
                    saveFile(string, bitmap, i);
                    bitmap.recycle();
                } else {
                    Log.d("Robotium", "NULL BITMAP!!");
                }
                ScreenshotTaker.this.screenshotMutex.notify();
            }
        }

        private void saveFile(String str, Bitmap bitmap, int i) {
            String fileName = ScreenshotTaker.this.getFileName(str);
            File file = new File(ScreenshotTaker.this.config.screenshotSavePath);
            file.mkdir();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(file, fileName));
                if (ScreenshotTaker.this.config.screenshotFileType == Solo.Config.ScreenshotFileType.JPEG) {
                    if (!bitmap.compress(Bitmap.CompressFormat.JPEG, i, fileOutputStream)) {
                        Log.d("Robotium", "Compress/Write failed");
                    }
                } else if (!bitmap.compress(Bitmap.CompressFormat.PNG, i, fileOutputStream)) {
                    Log.d("Robotium", "Compress/Write failed");
                }
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception e) {
                Log.d("Robotium", "Can't save the screenshot! Requires write permission (android.permission.WRITE_EXTERNAL_STORAGE) in AndroidManifest.xml of the application under test.");
                e.printStackTrace();
            }
        }
    }
}
