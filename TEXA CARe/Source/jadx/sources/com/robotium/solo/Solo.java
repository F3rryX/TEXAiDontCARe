package com.robotium.solo;

import android.app.Activity;
import android.app.Instrumentation;
import android.graphics.PointF;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.SlidingDrawer;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.ToggleButton;
import com.caverock.androidsvg.SVG;
import com.google.android.gms.search.SearchAuth;
import com.google.firebase.appindexing.Indexable;
import com.robotium.solo.Illustration;
import com.robotium.solo.Scroller;
import com.texa.careapp.fcm.FcmConstants;
import java.util.ArrayList;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
public class Solo {
    public static final int CLOSED = 0;
    public static final int DELETE = 67;
    public static final int DOWN = 20;
    public static final int ENTER = 66;
    public static final int LANDSCAPE = 0;
    public static final int LEFT = 21;
    public static final int MENU = 82;
    public static final int OPENED = 1;
    public static final int PORTRAIT = 1;
    public static final int RIGHT = 22;
    public static final int UP = 19;
    protected final ActivityUtils activityUtils;
    protected final Asserter asserter;
    protected final Checker checker;
    protected final Clicker clicker;
    private final Config config;
    protected final DialogUtils dialogUtils;
    protected final Getter getter;
    protected final Illustrator illustrator;
    protected final Instrumentation instrumentation;
    protected final Presser presser;
    protected final Rotator rotator;
    protected final ScreenshotTaker screenshotTaker;
    protected final Scroller scroller;
    protected final Searcher searcher;
    protected final Sender sender;
    protected final Setter setter;
    protected final Sleeper sleeper;
    protected final Swiper swiper;
    protected final SystemUtils systemUtils;
    protected final Tapper tapper;
    protected final TextEnterer textEnterer;
    protected final ViewFetcher viewFetcher;
    protected final Waiter waiter;
    protected String webUrl;
    protected final WebUtils webUtils;
    protected final Zoomer zoomer;

    public static class Config {
        public int timeout_small = SearchAuth.StatusCodes.AUTH_DISABLED;
        public int timeout_large = Indexable.MAX_STRING_LENGTH;
        public String screenshotSavePath = Environment.getExternalStorageDirectory() + "/Robotium-Screenshots/";
        public ScreenshotFileType screenshotFileType = ScreenshotFileType.JPEG;
        public boolean shouldScroll = true;
        public boolean useJavaScriptToClickWebElements = false;
        public boolean trackActivities = true;
        public String webFrame = "document";
        public boolean commandLogging = false;
        public String commandLoggingTag = "Robotium";
        public int sleepDuration = 500;
        public int sleepMiniDuration = FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE;

        public enum ScreenshotFileType {
            JPEG,
            PNG
        }
    }

    public Solo(Instrumentation instrumentation, Activity activity) {
        this(new Config(), instrumentation, activity);
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "Solo(" + instrumentation + ", " + activity + ")");
        }
    }

    public Solo(Instrumentation instrumentation, Config config) {
        this(config, instrumentation, (Activity) null);
        if (config.commandLogging) {
            Log.d(config.commandLoggingTag, "Solo(" + instrumentation + ", " + config + ")");
        }
    }

    public Solo(Instrumentation instrumentation, Config config, Activity activity) {
        this(config, instrumentation, activity);
        if (config.commandLogging) {
            Log.d(config.commandLoggingTag, "Solo(" + instrumentation + ", " + config + ", " + activity + ")");
        }
    }

    private Solo(Config config, Instrumentation instrumentation, Activity activity) {
        this.webUrl = null;
        if (config.commandLogging) {
            Log.d(config.commandLoggingTag, "Solo(" + config + ", " + instrumentation + ", " + activity + ")");
        }
        this.config = config == null ? new Config() : config;
        this.instrumentation = instrumentation;
        Sleeper sleeper = new Sleeper(config.sleepDuration, config.sleepMiniDuration);
        this.sleeper = sleeper;
        Sender sender = new Sender(instrumentation, sleeper);
        this.sender = sender;
        ActivityUtils activityUtils = new ActivityUtils(config, instrumentation, activity, sleeper);
        this.activityUtils = activityUtils;
        ViewFetcher viewFetcher = new ViewFetcher(instrumentation, sleeper);
        this.viewFetcher = viewFetcher;
        this.screenshotTaker = new ScreenshotTaker(config, instrumentation, activityUtils, viewFetcher, sleeper);
        DialogUtils dialogUtils = new DialogUtils(instrumentation, activityUtils, viewFetcher, sleeper);
        this.dialogUtils = dialogUtils;
        WebUtils webUtils = new WebUtils(config, instrumentation, viewFetcher, sleeper);
        this.webUtils = webUtils;
        Scroller scroller = new Scroller(config, instrumentation, viewFetcher, sleeper);
        this.scroller = scroller;
        Searcher searcher = new Searcher(viewFetcher, webUtils, scroller, sleeper);
        this.searcher = searcher;
        Waiter waiter = new Waiter(instrumentation, activityUtils, viewFetcher, searcher, scroller, sleeper);
        this.waiter = waiter;
        Getter getter = new Getter(instrumentation, activityUtils, waiter);
        this.getter = getter;
        Clicker clicker = new Clicker(activityUtils, viewFetcher, sender, instrumentation, sleeper, waiter, webUtils, dialogUtils);
        this.clicker = clicker;
        this.setter = new Setter(activityUtils, getter, clicker, waiter);
        this.asserter = new Asserter(activityUtils, waiter);
        this.checker = new Checker(viewFetcher, waiter);
        this.zoomer = new Zoomer(instrumentation);
        this.swiper = new Swiper(instrumentation);
        this.tapper = new Tapper(instrumentation);
        this.illustrator = new Illustrator(instrumentation);
        this.rotator = new Rotator(instrumentation);
        this.presser = new Presser(viewFetcher, clicker, instrumentation, sleeper, waiter, dialogUtils);
        this.textEnterer = new TextEnterer(instrumentation, clicker, dialogUtils);
        this.systemUtils = new SystemUtils(instrumentation);
        initialize();
    }

    public Solo(Instrumentation instrumentation) {
        this(new Config(), instrumentation, (Activity) null);
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "Solo(" + instrumentation + ")");
        }
    }

    public Instrumentation.ActivityMonitor getActivityMonitor() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getActivityMonitor()");
        }
        return this.activityUtils.getActivityMonitor();
    }

    public Config getConfig() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getConfig()");
        }
        return this.config;
    }

    public ArrayList<View> getViews() {
        try {
            if (this.config.commandLogging) {
                Log.d(this.config.commandLoggingTag, "getViews()");
            }
            return this.viewFetcher.getViews(null, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<View> getViews(View view) {
        try {
            if (this.config.commandLogging) {
                Log.d(this.config.commandLoggingTag, "getViews()");
            }
            return this.viewFetcher.getViews(view, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public View getTopParent(View view) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getTopParent(" + view + ")");
        }
        return this.viewFetcher.getTopParent(view);
    }

    public boolean waitForText(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForText(\"" + str + "\")");
        }
        return this.waiter.waitForText(str) != null;
    }

    public boolean waitForText(String str, int i, long j) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForText(\"" + str + "\", " + i + ", " + j + ")");
        }
        return this.waiter.waitForText(str, i, j) != null;
    }

    public boolean waitForText(String str, int i, long j, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForText(\"" + str + "\", " + i + ", " + j + ", " + z + ")");
        }
        return this.waiter.waitForText(str, i, j, z) != null;
    }

    public boolean waitForText(String str, int i, long j, boolean z, boolean z2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForText(\"" + str + "\", " + i + ", " + j + ", " + z + ", " + z2 + ")");
        }
        return this.waiter.waitForText(str, i, j, z, z2, true) != null;
    }

    public boolean waitForView(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + i + ")");
        }
        return waitForView(i, 0, Timeout.getLargeTimeout(), true);
    }

    public boolean waitForView(int i, int i2, int i3) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + i + ", " + i2 + ", " + i3 + ")");
        }
        return waitForView(i, i2, i3, true);
    }

    public boolean waitForView(int i, int i2, int i3, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + i + ", " + i2 + ", " + i3 + ", " + z + ")");
        }
        int i4 = i2 - 1;
        if (i4 < 1) {
            i4 = 0;
        }
        return this.waiter.waitForView(i, i4, i3, z) != null;
    }

    public boolean waitForView(Object obj) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + obj + ")");
        }
        return waitForView(obj, 0, Timeout.getLargeTimeout(), true);
    }

    public boolean waitForView(Object obj, int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + obj + ", " + i + ", " + i2 + ")");
        }
        return waitForView(obj, i, i2, true);
    }

    public boolean waitForView(Object obj, int i, int i2, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + obj + ", " + i + ", " + i2 + ", " + z + ")");
        }
        int i3 = i - 1;
        if (i3 < 1) {
            i3 = 0;
        }
        return this.waiter.waitForView(obj, i3, i2, z) != null;
    }

    public <T extends View> boolean waitForView(Class<T> cls) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + cls + ")");
        }
        return this.waiter.waitForView((Class) cls, 0, Timeout.getLargeTimeout(), true);
    }

    public <T extends View> boolean waitForView(View view) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + view + ")");
        }
        return this.waiter.waitForView(view);
    }

    public <T extends View> boolean waitForView(View view, int i, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + view + ", " + i + ", " + z + ")");
        }
        return this.waiter.waitForView(view, i, z, z ^ true) != null;
    }

    public <T extends View> boolean waitForView(Class<T> cls, int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + cls + ", " + i + ", " + i2 + ")");
        }
        int i3 = i - 1;
        if (i3 < 1) {
            i3 = 0;
        }
        return this.waiter.waitForView((Class) cls, i3, i2, true);
    }

    public <T extends View> boolean waitForView(Class<T> cls, int i, int i2, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForView(" + cls + ", " + i + ", " + i2 + ", " + z + ")");
        }
        int i3 = i - 1;
        if (i3 < 1) {
            i3 = 0;
        }
        return this.waiter.waitForView((Class) cls, i3, i2, z);
    }

    public boolean waitForWebElement(By by) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForWebElement(" + by + ")");
        }
        return this.waiter.waitForWebElement(by, 0, Timeout.getLargeTimeout(), true) != null;
    }

    public boolean waitForWebElement(By by, int i, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForWebElement(" + by + ", " + i + ", " + z + ")");
        }
        return this.waiter.waitForWebElement(by, 0, i, z) != null;
    }

    public boolean waitForWebElement(By by, int i, int i2, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForWebElement(" + by + ", " + i + "," + i2 + ", " + z + ")");
        }
        return this.waiter.waitForWebElement(by, i, i2, z) != null;
    }

    public boolean waitForCondition(Condition condition, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForCondition(" + condition + "," + i + ")");
        }
        return this.waiter.waitForCondition(condition, i);
    }

    public boolean searchEditText(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchEditText(\"" + str + "\")");
        }
        return this.searcher.searchWithTimeoutFor(EditText.class, str, 1, true, false);
    }

    public boolean searchButton(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchButton(\"" + str + "\")");
        }
        return this.searcher.searchWithTimeoutFor(Button.class, str, 0, true, false);
    }

    public boolean searchButton(String str, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchButton(\"" + str + "\", " + z + ")");
        }
        return this.searcher.searchWithTimeoutFor(Button.class, str, 0, true, z);
    }

    public boolean searchToggleButton(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchToggleButton(\"" + str + "\")");
        }
        return this.searcher.searchWithTimeoutFor(ToggleButton.class, str, 0, true, false);
    }

    public boolean searchButton(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchButton(\"" + str + "\", " + i + ")");
        }
        return this.searcher.searchWithTimeoutFor(Button.class, str, i, true, false);
    }

    public boolean searchButton(String str, int i, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchButton(\"" + str + "\", " + i + ", " + z + ")");
        }
        return this.searcher.searchWithTimeoutFor(Button.class, str, i, true, z);
    }

    public boolean searchToggleButton(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchToggleButton(\"" + str + "\", " + i + ")");
        }
        return this.searcher.searchWithTimeoutFor(ToggleButton.class, str, i, true, false);
    }

    public boolean searchText(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchText(\"" + str + "\")");
        }
        return this.searcher.searchWithTimeoutFor(TextView.class, str, 0, true, false);
    }

    public boolean searchText(String str, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchText(\"" + str + "\", " + z + ")");
        }
        return this.searcher.searchWithTimeoutFor(TextView.class, str, 0, true, z);
    }

    public boolean searchText(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchText(\"" + str + "\", " + i + ")");
        }
        return this.searcher.searchWithTimeoutFor(TextView.class, str, i, true, false);
    }

    public boolean searchText(String str, int i, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchText(\"" + str + "\", " + i + ", " + z + ")");
        }
        return this.searcher.searchWithTimeoutFor(TextView.class, str, i, z, false);
    }

    public boolean searchText(String str, int i, boolean z, boolean z2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "searchText(\"" + str + "\", " + i + ", " + z + ", " + z2 + ")");
        }
        return this.searcher.searchWithTimeoutFor(TextView.class, str, i, z, z2);
    }

    public void setActivityOrientation(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setActivityOrientation(" + i + ")");
        }
        this.activityUtils.setActivityOrientation(i);
    }

    public Activity getCurrentActivity() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getCurrentActivity()");
        }
        return this.activityUtils.getCurrentActivity(false);
    }

    public void assertCurrentActivity(String str, String str2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "assertCurrentActivity(\"" + str + "\", \"" + str2 + "\")");
        }
        this.asserter.assertCurrentActivity(str, str2);
    }

    public void assertCurrentActivity(String str, Class cls) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "assertCurrentActivity(" + str + ", " + cls + ")");
        }
        this.asserter.assertCurrentActivity(str, (Class<? extends Activity>) cls);
    }

    public void assertCurrentActivity(String str, String str2, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "assertCurrentActivity(" + str + ", " + str2 + ", " + z + ")");
        }
        this.asserter.assertCurrentActivity(str, str2, z);
    }

    public void assertCurrentActivity(String str, Class cls, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "assertCurrentActivity(\"" + str + "\", " + cls + ", " + z + ")");
        }
        this.asserter.assertCurrentActivity(str, (Class<? extends Activity>) cls, z);
    }

    public void assertMemoryNotLow() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "assertMemoryNotLow()");
        }
        this.asserter.assertMemoryNotLow();
    }

    public boolean waitForDialogToOpen() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForDialogToOpen()");
        }
        return this.dialogUtils.waitForDialogToOpen(Timeout.getLargeTimeout(), true);
    }

    public boolean waitForDialogToClose() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForDialogToClose()");
        }
        return this.dialogUtils.waitForDialogToClose(Timeout.getLargeTimeout());
    }

    public boolean waitForDialogToOpen(long j) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForDialogToOpen(" + j + ")");
        }
        return this.dialogUtils.waitForDialogToOpen(j, true);
    }

    public boolean waitForDialogToClose(long j) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForDialogToClose(" + j + ")");
        }
        return this.dialogUtils.waitForDialogToClose(j);
    }

    public void goBack() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "goBack()");
        }
        hideSoftKeyboard();
        this.sender.goBack();
    }

    public void clickOnScreen(float f, float f2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnScreen(" + f + ", " + f2 + ")");
        }
        this.sleeper.sleep();
        this.clicker.clickOnScreen(f, f2, (View) null);
    }

    public void clickOnScreen(float f, float f2, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnScreen(" + f + ", " + f2 + ", " + i + ")");
        }
        if (Build.VERSION.SDK_INT < 14) {
            throw new RuntimeException("clickOnScreen(float x, float y, int numberOfClicks) requires API level >= 14");
        }
        this.tapper.generateTapGesture(i, new PointF(f, f2));
    }

    public void clickLongOnScreen(float f, float f2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongOnScreen(" + f + ", " + f2 + ")");
        }
        this.clicker.clickLongOnScreen(f, f2, 0, null);
    }

    public void clickLongOnScreen(float f, float f2, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongOnScreen(" + f + ", " + f2 + ", " + i + ")");
        }
        this.clicker.clickLongOnScreen(f, f2, i, null);
    }

    public void clickOnButton(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnButton(\"" + str + "\")");
        }
        this.clicker.clickOn(Button.class, str);
    }

    public void clickOnImageButton(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnImageButton(" + i + ")");
        }
        this.clicker.clickOn(ImageButton.class, i);
    }

    public void clickOnToggleButton(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnToggleButton(\"" + str + "\")");
        }
        this.clicker.clickOn(ToggleButton.class, str);
    }

    public void clickOnMenuItem(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnMenuItem(\"" + str + "\")");
        }
        this.clicker.clickOnMenuItem(str);
    }

    public void clickOnMenuItem(String str, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnMenuItem(\"" + str + "\", " + z + ")");
        }
        this.clicker.clickOnMenuItem(str, z);
    }

    public void clickOnWebElement(WebElement webElement) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnWebElement(" + webElement + ")");
        }
        if (webElement == null) {
            Assert.fail("WebElement is null and can therefore not be clicked!");
        }
        this.clicker.clickOnScreen(webElement.getLocationX(), webElement.getLocationY(), (View) null);
    }

    public void clickOnWebElement(By by) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnWebElement(" + by + ")");
        }
        clickOnWebElement(by, 0, true);
    }

    public void clickOnWebElement(By by, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnWebElement(" + by + ", " + i + ")");
        }
        clickOnWebElement(by, i, true);
    }

    public void clickOnWebElement(By by, int i, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnWebElement(" + by + ", " + i + ", " + z + ")");
        }
        this.clicker.clickOnWebElement(by, i, z, this.config.useJavaScriptToClickWebElements);
    }

    public void pressMenuItem(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "pressMenuItem(" + i + ")");
        }
        this.presser.pressMenuItem(i);
    }

    public void pressMenuItem(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "pressMenuItem(" + i + ", " + i2 + ")");
        }
        this.presser.pressMenuItem(i, i2);
    }

    public void pressSoftKeyboardNextButton() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "pressSoftKeyboardNextButton()");
        }
        this.presser.pressSoftKeyboard(5);
    }

    public void pressSoftKeyboardSearchButton() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "pressSoftKeyboardSearchButton()");
        }
        this.presser.pressSoftKeyboard(3);
    }

    public void pressSoftKeyboardGoButton() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "pressSoftKeyboardGoButton()");
        }
        this.presser.pressSoftKeyboard(2);
    }

    public void pressSoftKeyboardDoneButton() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "pressSoftKeyboardDoneButton()");
        }
        this.presser.pressSoftKeyboard(6);
    }

    public void pressSpinnerItem(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "pressSpinnerItem(" + i + ", " + i2 + ")");
        }
        this.presser.pressSpinnerItem(i, i2);
    }

    public void clickOnView(View view) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnView(" + view + ")");
        }
        this.clicker.clickOnScreen(this.waiter.waitForView(view, Timeout.getSmallTimeout()));
    }

    public void clickOnView(View view, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnView(" + view + ", " + z + ")");
        }
        if (z) {
            this.clicker.clickOnScreen(view);
        } else {
            this.clicker.clickOnScreen(this.waiter.waitForView(view, Timeout.getSmallTimeout()));
        }
    }

    public void clickLongOnView(View view) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongOnView(" + view + ")");
        }
        this.clicker.clickOnScreen(this.waiter.waitForView(view, Timeout.getSmallTimeout()), true, 0);
    }

    public void clickLongOnView(View view, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongOnView(" + view + ", " + i + ")");
        }
        this.clicker.clickOnScreen(view, true, i);
    }

    public void clickOnText(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnText(\"" + str + "\")");
        }
        this.clicker.clickOnText(str, false, 1, true, 0);
    }

    public void clickOnText(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnText(\"" + str + "\", " + i + ")");
        }
        this.clicker.clickOnText(str, false, i, true, 0);
    }

    public void clickOnText(String str, int i, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnText(\"" + str + "\", " + i + ", " + z + ")");
        }
        this.clicker.clickOnText(str, false, i, z, 0);
    }

    public void clickLongOnText(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongOnText(\"" + str + "\")");
        }
        this.clicker.clickOnText(str, true, 1, true, 0);
    }

    public void clickLongOnText(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongOnText(\"" + str + "\", " + i + ")");
        }
        this.clicker.clickOnText(str, true, i, true, 0);
    }

    public void clickLongOnText(String str, int i, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongOnText(\"" + str + "\", " + i + ", " + z + ")");
        }
        this.clicker.clickOnText(str, true, i, z, 0);
    }

    public void clickLongOnText(String str, int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongOnText(\"" + str + "\", " + i + ", " + i2 + ")");
        }
        this.clicker.clickOnText(str, true, i, true, i2);
    }

    public void clickLongOnTextAndPress(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongOnTextAndPress(\"" + str + "\", " + i + ")");
        }
        this.clicker.clickLongOnTextAndPress(str, i);
    }

    public void clickOnButton(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnButton(" + i + ")");
        }
        this.clicker.clickOn(Button.class, i);
    }

    public void clickOnRadioButton(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnRadioButton(" + i + ")");
        }
        this.clicker.clickOn(RadioButton.class, i);
    }

    public void clickOnCheckBox(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnCheckBox(" + i + ")");
        }
        this.clicker.clickOn(CheckBox.class, i);
    }

    public void clickOnEditText(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnEditText(" + i + ")");
        }
        this.clicker.clickOn(EditText.class, i);
    }

    public ArrayList<TextView> clickInList(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickInList(" + i + ")");
        }
        return this.clicker.clickInList(i);
    }

    public ArrayList<TextView> clickInList(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickInList(" + i + ", " + i2 + ")");
        }
        return this.clicker.clickInList(i, i2, 0, false, 0);
    }

    public void clickInList(int i, int i2, int i3) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickInList(" + i + ", " + i2 + ", " + i3 + ")");
        }
        this.clicker.clickInList(i, i2, i3, false, 0);
    }

    public ArrayList<TextView> clickLongInList(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongInList(" + i + ")");
        }
        return this.clicker.clickInList(i, 0, 0, true, 0);
    }

    public ArrayList<TextView> clickLongInList(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongInList(" + i + ", " + i2 + ")");
        }
        return this.clicker.clickInList(i, i2, 0, true, 0);
    }

    public ArrayList<TextView> clickLongInList(int i, int i2, int i3) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongInList(" + i + ", " + i2 + ", " + i3 + ")");
        }
        return this.clicker.clickInList(i, i2, 0, true, i3);
    }

    public ArrayList<TextView> clickInRecyclerView(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickInRecyclerView(" + i + ")");
        }
        return this.clicker.clickInRecyclerView(i);
    }

    public ArrayList<TextView> clickInRecyclerView(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickInRecyclerView(" + i + ", " + i2 + ")");
        }
        return this.clicker.clickInRecyclerView(i, i2, 0, false, 0);
    }

    public void clickInRecyclerView(int i, int i2, int i3) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickInRecyclerView(" + i + ", " + i2 + ", " + i3 + ")");
        }
        this.clicker.clickInRecyclerView(i, i2, i3, false, 0);
    }

    public ArrayList<TextView> clickLongInRecycleView(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongInRecycleView(" + i + ")");
        }
        return this.clicker.clickInRecyclerView(i, 0, 0, true, 0);
    }

    public ArrayList<TextView> clickLongInRecycleView(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongInRecycleView(" + i + ", " + i2 + ")");
        }
        return this.clicker.clickInRecyclerView(i, i2, 0, true, 0);
    }

    public ArrayList<TextView> clickLongInRecycleView(int i, int i2, int i3) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickLongInRecycleView(" + i + ", " + i2 + ", " + i3 + ")");
        }
        return this.clicker.clickInRecyclerView(i, i2, 0, true, i3);
    }

    public void clickOnActionBarItem(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnActionBarItem(" + i + ")");
        }
        this.clicker.clickOnActionBarItem(i);
    }

    public void clickOnActionBarHomeButton() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnActionBarHomeButton()");
        }
        this.instrumentation.runOnMainSync(new Runnable() { // from class: com.robotium.solo.Solo.1
            @Override // java.lang.Runnable
            public void run() {
                Solo.this.clicker.clickOnActionBarHomeButton();
            }
        });
    }

    public Illustration.Builder createIllustrationBuilder() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "createIllustrationBuilder()");
        }
        return new Illustration.Builder();
    }

    public void illustrate(Illustration illustration) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "illustrate(" + illustration + ")");
        }
        this.illustrator.illustrate(illustration);
    }

    public void drag(float f, float f2, float f3, float f4, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "drag(" + f + ", " + f2 + ", " + f3 + ", " + f4 + ")");
        }
        this.dialogUtils.hideSoftKeyboard(null, false, true);
        this.scroller.drag(f, f2, f3, f4, i);
    }

    public boolean scrollDown() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollDown()");
        }
        View recyclerView = this.viewFetcher.getRecyclerView(true, 0);
        if (recyclerView != null) {
            this.waiter.waitForViews(true, AbsListView.class, ScrollView.class, WebView.class, recyclerView.getClass());
        } else {
            this.waiter.waitForViews(true, AbsListView.class, ScrollView.class, WebView.class);
        }
        return this.scroller.scroll(0);
    }

    public void scrollToBottom() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollToBottom()");
        }
        View recyclerView = this.viewFetcher.getRecyclerView(true, 0);
        if (recyclerView != null) {
            this.waiter.waitForViews(true, AbsListView.class, ScrollView.class, WebView.class, recyclerView.getClass());
        } else {
            this.waiter.waitForViews(true, AbsListView.class, ScrollView.class, WebView.class);
        }
        this.scroller.scroll(0, true);
    }

    public boolean scrollUp() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollUp()");
        }
        View recyclerView = this.viewFetcher.getRecyclerView(true, 0);
        if (recyclerView != null) {
            this.waiter.waitForViews(true, AbsListView.class, ScrollView.class, WebView.class, recyclerView.getClass());
        } else {
            this.waiter.waitForViews(true, AbsListView.class, ScrollView.class, WebView.class);
        }
        return this.scroller.scroll(1);
    }

    public void scrollToTop() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollToTop()");
        }
        View recyclerView = this.viewFetcher.getRecyclerView(true, 0);
        if (recyclerView != null) {
            this.waiter.waitForViews(true, AbsListView.class, ScrollView.class, WebView.class, recyclerView.getClass());
        } else {
            this.waiter.waitForViews(true, AbsListView.class, ScrollView.class, WebView.class);
        }
        this.scroller.scroll(1, true);
    }

    public boolean scrollDownList(AbsListView absListView) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollDownList(" + absListView + ")");
        }
        return this.scroller.scrollList(absListView, 0, false);
    }

    public boolean scrollListToBottom(AbsListView absListView) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollListToBottom(" + absListView + ")");
        }
        return this.scroller.scrollList(absListView, 0, true);
    }

    public boolean scrollUpList(AbsListView absListView) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollUpList(" + absListView + ")");
        }
        return this.scroller.scrollList(absListView, 1, false);
    }

    public boolean scrollListToTop(AbsListView absListView) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollListToTop(" + absListView + ")");
        }
        return this.scroller.scrollList(absListView, 1, true);
    }

    public boolean scrollDownList(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollDownList(" + i + ")");
        }
        return this.scroller.scrollList((AbsListView) this.waiter.waitForAndGetView(i, ListView.class), 0, false);
    }

    public boolean scrollListToBottom(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollListToBottom(" + i + ")");
        }
        return this.scroller.scrollList((AbsListView) this.waiter.waitForAndGetView(i, ListView.class), 0, true);
    }

    public boolean scrollUpList(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollUpList(" + i + ")");
        }
        return this.scroller.scrollList((AbsListView) this.waiter.waitForAndGetView(i, ListView.class), 1, false);
    }

    public boolean scrollListToTop(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollListToTop(" + i + ")");
        }
        return this.scroller.scrollList((AbsListView) this.waiter.waitForAndGetView(i, ListView.class), 1, true);
    }

    public void scrollListToLine(AbsListView absListView, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollListToLine(" + absListView + ", " + i + ")");
        }
        this.scroller.scrollListToLine(absListView, i);
    }

    public void scrollListToLine(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollListToLine(" + i + ", " + i2 + ")");
        }
        this.scroller.scrollListToLine((AbsListView) this.waiter.waitForAndGetView(i, AbsListView.class), i2);
    }

    public boolean scrollDownRecyclerView(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollDownRecyclerView(" + i + ")");
        }
        if (!this.config.shouldScroll) {
            return true;
        }
        return this.scroller.scrollView(this.viewFetcher.getRecyclerView(i, Timeout.getSmallTimeout()), 0);
    }

    public boolean scrollRecyclerViewToBottom(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollRecyclerViewToBottom(" + i + ")");
        }
        if (!this.config.shouldScroll) {
            return true;
        }
        this.scroller.scrollViewAllTheWay(this.viewFetcher.getRecyclerView(i, Timeout.getSmallTimeout()), 0);
        return false;
    }

    public boolean scrollUpRecyclerView(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollUpRecyclerView(" + i + ")");
        }
        if (!this.config.shouldScroll) {
            return true;
        }
        return this.scroller.scrollView(this.viewFetcher.getRecyclerView(i, Timeout.getSmallTimeout()), 1);
    }

    public boolean scrollRecyclerViewToTop(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollRecyclerViewToTop(" + i + ")");
        }
        if (!this.config.shouldScroll) {
            return false;
        }
        this.scroller.scrollViewAllTheWay(this.viewFetcher.getRecyclerView(i, Timeout.getSmallTimeout()), 1);
        return false;
    }

    public void scrollToSide(int i, float f, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollToSide(" + i + ", " + f + ", " + i2 + ")");
        }
        if (i == 21) {
            this.scroller.scrollToSide(Scroller.Side.LEFT, f, i2);
        } else {
            if (i != 22) {
                return;
            }
            this.scroller.scrollToSide(Scroller.Side.RIGHT, f, i2);
        }
    }

    public void scrollToSide(int i, float f) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollToSide(" + f + ")");
        }
        scrollToSide(i, f, 20);
    }

    public void scrollToSide(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollToSide(" + i + ")");
        }
        scrollToSide(i, 0.75f);
    }

    public void scrollViewToSide(View view, int i, float f, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollViewToSide(" + view + ", " + i + ", " + f + ", " + i2 + ")");
        }
        waitForView(view);
        this.sleeper.sleep();
        if (i == 21) {
            this.scroller.scrollViewToSide(view, Scroller.Side.LEFT, f, i2);
        } else {
            if (i != 22) {
                return;
            }
            this.scroller.scrollViewToSide(view, Scroller.Side.RIGHT, f, i2);
        }
    }

    public void scrollViewToSide(View view, int i, float f) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollViewToSide(" + view + ", " + i + ", " + f + ")");
        }
        scrollViewToSide(view, i, f, 20);
    }

    public void scrollViewToSide(View view, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "scrollViewToSide(" + view + ", " + i + ")");
        }
        scrollViewToSide(view, i, 0.7f);
    }

    public void pinchToZoom(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "pinchToZoom(" + pointF + ", " + pointF2 + ", " + pointF3 + ", " + pointF4 + ")");
        }
        if (Build.VERSION.SDK_INT < 14) {
            throw new RuntimeException("pinchToZoom() requires API level >= 14");
        }
        this.zoomer.generateZoomGesture(pointF, pointF2, pointF3, pointF4);
    }

    public void swipe(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "swipe(" + pointF + ", " + pointF2 + ", " + pointF3 + ", " + pointF4 + ")");
        }
        if (Build.VERSION.SDK_INT < 14) {
            throw new RuntimeException("swipe() requires API level >= 14");
        }
        this.swiper.generateSwipeGesture(pointF, pointF2, pointF3, pointF4);
    }

    public void rotateLarge(PointF pointF, PointF pointF2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "rotateLarge(" + pointF + ", " + pointF2 + ")");
        }
        if (Build.VERSION.SDK_INT < 14) {
            throw new RuntimeException("rotateLarge(PointF center1, PointF center2) requires API level >= 14");
        }
        this.rotator.generateRotateGesture(0, pointF, pointF2);
    }

    public void rotateSmall(PointF pointF, PointF pointF2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "rotateSmall(" + pointF + ", " + pointF2 + ")");
        }
        if (Build.VERSION.SDK_INT < 14) {
            throw new RuntimeException("rotateSmall(PointF center1, PointF center2) requires API level >= 14");
        }
        this.rotator.generateRotateGesture(1, pointF, pointF2);
    }

    public void setMobileData(Boolean bool) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setMobileData(" + bool + ")");
        }
        this.systemUtils.setMobileData(bool);
    }

    public void setWiFiData(Boolean bool) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setWiFiData(" + bool + ")");
        }
        this.systemUtils.setWiFiData(bool);
    }

    public void setDatePicker(int i, int i2, int i3, int i4) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setDatePicker(" + i + ", " + i2 + ", " + i3 + ", " + i4 + ")");
        }
        setDatePicker((DatePicker) this.waiter.waitForAndGetView(i, DatePicker.class), i2, i3, i4);
    }

    public void setDatePicker(DatePicker datePicker, int i, int i2, int i3) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setDatePicker(" + datePicker + ", " + i + ", " + i2 + ", " + i3 + ")");
        }
        this.setter.setDatePicker((DatePicker) this.waiter.waitForView(datePicker, Timeout.getSmallTimeout()), i, i2, i3);
    }

    public void setTimePicker(int i, int i2, int i3) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setTimePicker(" + i + ", " + i2 + ", " + i3 + ")");
        }
        setTimePicker((TimePicker) this.waiter.waitForAndGetView(i, TimePicker.class), i2, i3);
    }

    public void setTimePicker(TimePicker timePicker, int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setTimePicker(" + timePicker + ", " + i + ", " + i2 + ")");
        }
        this.setter.setTimePicker((TimePicker) this.waiter.waitForView(timePicker, Timeout.getSmallTimeout()), i, i2);
    }

    public void setProgressBar(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setProgressBar(" + i + ", " + i2 + ")");
        }
        setProgressBar((ProgressBar) this.waiter.waitForAndGetView(i, ProgressBar.class), i2);
    }

    public void setProgressBar(ProgressBar progressBar, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setProgressBar(" + progressBar + ", " + i + ")");
        }
        this.setter.setProgressBar((ProgressBar) this.waiter.waitForView(progressBar, Timeout.getSmallTimeout()), i);
    }

    public void setNavigationDrawer(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setNavigationDrawer(" + i + ")");
        }
        this.setter.setNavigationDrawer(i);
    }

    public void setSlidingDrawer(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setSlidingDrawer(" + i + ", " + i2 + ")");
        }
        setSlidingDrawer((SlidingDrawer) this.waiter.waitForAndGetView(i, SlidingDrawer.class), i2);
    }

    public void setSlidingDrawer(SlidingDrawer slidingDrawer, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "setSlidingDrawer(" + slidingDrawer + ", " + i + ")");
        }
        this.setter.setSlidingDrawer((SlidingDrawer) this.waiter.waitForView(slidingDrawer, Timeout.getSmallTimeout()), i);
    }

    public void enterText(int i, String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "enterText(" + i + ", \"" + str + "\")");
        }
        this.textEnterer.setEditText((EditText) this.waiter.waitForAndGetView(i, EditText.class), str);
    }

    public void enterText(EditText editText, String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "enterText(" + editText + ", \"" + str + "\")");
        }
        this.textEnterer.setEditText((EditText) this.waiter.waitForView(editText, Timeout.getSmallTimeout()), str);
    }

    public void enterTextInWebElement(By by, String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "enterTextInWebElement(" + by + ", \"" + str + "\")");
        }
        if (this.waiter.waitForWebElement(by, 0, Timeout.getSmallTimeout(), false) == null) {
            Assert.fail("WebElement with " + this.webUtils.splitNameByUpperCase(by.getClass().getSimpleName()) + ": '" + by.getValue() + "' is not found!");
        }
        this.webUtils.enterTextIntoWebElement(by, str);
    }

    public void typeText(int i, String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "typeText(" + i + ", \"" + str + "\")");
        }
        this.textEnterer.typeText((EditText) this.waiter.waitForAndGetView(i, EditText.class), str);
    }

    public void typeText(EditText editText, String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "typeText(" + editText + ", \"" + str + "\")");
        }
        this.textEnterer.typeText((EditText) this.waiter.waitForView(editText, Timeout.getSmallTimeout()), str);
    }

    public void typeTextInWebElement(By by, String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "typeTextInWebElement(" + by + ", \"" + str + "\")");
        }
        typeTextInWebElement(by, str, 0);
    }

    public void typeTextInWebElement(By by, String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "typeTextInWebElement(" + by + ", \"" + str + "\", " + i + ")");
        }
        this.clicker.clickOnWebElement(by, i, true, false);
        this.dialogUtils.hideSoftKeyboard(null, true, true);
        this.instrumentation.sendStringSync(str);
    }

    public void typeTextInWebElement(WebElement webElement, String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "typeTextInWebElement(" + webElement + ", \"" + str + "\")");
        }
        clickOnWebElement(webElement);
        this.dialogUtils.hideSoftKeyboard(null, true, true);
        this.instrumentation.sendStringSync(str);
    }

    public void clearEditText(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clearEditText(" + i + ")");
        }
        this.textEnterer.setEditText((EditText) this.waiter.waitForAndGetView(i, EditText.class), "");
    }

    public void clearEditText(EditText editText) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clearEditText(" + editText + ")");
        }
        this.textEnterer.setEditText((EditText) this.waiter.waitForView(editText, Timeout.getSmallTimeout()), "");
    }

    public void clearTextInWebElement(By by) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clearTextInWebElement(" + by + ")");
        }
        this.webUtils.enterTextIntoWebElement(by, "");
    }

    public void clickOnImage(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clickOnImage(" + i + ")");
        }
        this.clicker.clickOn(ImageView.class, i);
    }

    public EditText getEditText(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getEditText(" + i + ")");
        }
        return (EditText) this.getter.getView(EditText.class, i);
    }

    public Button getButton(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getButton(" + i + ")");
        }
        return (Button) this.getter.getView(Button.class, i);
    }

    public TextView getText(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getText(" + i + ")");
        }
        return (TextView) this.getter.getView(TextView.class, i);
    }

    public ImageView getImage(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getImage(" + i + ")");
        }
        return (ImageView) this.getter.getView(ImageView.class, i);
    }

    public ImageButton getImageButton(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getImageButton(" + i + ")");
        }
        return (ImageButton) this.getter.getView(ImageButton.class, i);
    }

    public TextView getText(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getText(\"" + str + "\")");
        }
        return this.getter.getView(TextView.class, str, false);
    }

    public TextView getText(String str, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getText(\"" + str + "\", " + z + ")");
        }
        return this.getter.getView(TextView.class, str, z);
    }

    public Button getButton(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getButton(\"" + str + "\")");
        }
        return (Button) this.getter.getView(Button.class, str, false);
    }

    public Button getButton(String str, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getButton(\"" + str + "\", " + z + ")");
        }
        return (Button) this.getter.getView(Button.class, str, z);
    }

    public EditText getEditText(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getEditText(\"" + str + "\")");
        }
        return (EditText) this.getter.getView(EditText.class, str, false);
    }

    public EditText getEditText(String str, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getEditText(\"" + str + "\", " + z + ")");
        }
        return (EditText) this.getter.getView(EditText.class, str, z);
    }

    public View getView(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getView(" + i + ")");
        }
        return getView(i, 0);
    }

    public View getView(int i, int i2) {
        String resourceEntryName;
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getView(" + i + ", " + i2 + ")");
        }
        View view = this.getter.getView(i, i2);
        if (view == null) {
            try {
                resourceEntryName = this.instrumentation.getTargetContext().getResources().getResourceEntryName(i);
            } catch (Exception unused) {
                Log.d(this.config.commandLoggingTag, "unable to get resource entry name for (" + i + ")");
                resourceEntryName = "";
            }
            int i3 = i2 + 1;
            if (i3 > 1) {
                Assert.fail(i3 + " Views with id: '" + i + "', resource name: '" + resourceEntryName + "' are not found!");
            } else {
                Assert.fail("View with id: '" + i + "', resource name: '" + resourceEntryName + "' is not found!");
            }
        }
        return view;
    }

    public View getView(Object obj) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getView(" + obj + ")");
        }
        return getView(obj, 0);
    }

    public View getView(Object obj, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getView(" + obj + ", " + i + ")");
        }
        View view = this.getter.getView(obj, i);
        if (view == null) {
            int i2 = i + 1;
            if (i2 > 1) {
                Assert.fail(i2 + " Views with id: '" + obj + "' are not found!");
            } else {
                Assert.fail("View with id: '" + obj + "' is not found!");
            }
        }
        return view;
    }

    public View getView(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getView(\"" + str + "\")");
        }
        return getView(str, 0);
    }

    public View getView(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getView(\"" + str + "\", " + i + ")");
        }
        View view = this.getter.getView(str, i);
        if (view == null) {
            int i2 = i + 1;
            if (i2 > 1) {
                Assert.fail(i2 + " Views with id: '" + str + "' are not found!");
            } else {
                Assert.fail("View with id: '" + str + "' is not found!");
            }
        }
        return view;
    }

    public <T extends View> T getView(Class<T> cls, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getView(" + cls + ", " + i + ")");
        }
        return (T) this.waiter.waitForAndGetView(i, cls);
    }

    public WebElement getWebElement(By by, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getWebElement(" + by + ", " + i + ")");
        }
        int i2 = i + 1;
        WebElement webElementWaitForWebElement = this.waiter.waitForWebElement(by, i2, Timeout.getSmallTimeout(), true);
        if (webElementWaitForWebElement == null) {
            if (i2 > 1) {
                Assert.fail(i2 + " WebElements with " + this.webUtils.splitNameByUpperCase(by.getClass().getSimpleName()) + ": '" + by.getValue() + "' are not found!");
            } else {
                Assert.fail("WebElement with " + this.webUtils.splitNameByUpperCase(by.getClass().getSimpleName()) + ": '" + by.getValue() + "' is not found!");
            }
        }
        return webElementWaitForWebElement;
    }

    public String getWebUrl() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getWebUrl()");
        }
        final WebView webView = (WebView) this.waiter.waitForAndGetView(0, WebView.class);
        if (webView == null) {
            Assert.fail("WebView is not found!");
        }
        this.instrumentation.runOnMainSync(new Runnable() { // from class: com.robotium.solo.Solo.2
            @Override // java.lang.Runnable
            public void run() {
                Solo.this.webUrl = webView.getUrl();
            }
        });
        return this.webUrl;
    }

    public ArrayList<View> getCurrentViews() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getCurrentViews()");
        }
        return this.viewFetcher.getViews(null, true);
    }

    public <T extends View> ArrayList<T> getCurrentViews(Class<T> cls) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getCurrentViews(" + cls + ")");
        }
        return this.viewFetcher.getCurrentViews(cls, true);
    }

    public <T extends View> ArrayList<T> getCurrentViews(Class<T> cls, boolean z) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getCurrentViews(" + cls + ", " + z + ")");
        }
        return this.viewFetcher.getCurrentViews(cls, z);
    }

    public <T extends View> ArrayList<T> getCurrentViews(Class<T> cls, View view) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getCurrentViews(" + cls + ", " + view + ")");
        }
        return this.viewFetcher.getCurrentViews(cls, true, view);
    }

    public <T extends View> ArrayList<T> getCurrentViews(Class<T> cls, boolean z, View view) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getCurrentViews(" + cls + ", " + z + ", " + view + ")");
        }
        return this.viewFetcher.getCurrentViews(cls, z, view);
    }

    public ArrayList<WebElement> getWebElements() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getWebElements()");
        }
        return this.webUtils.getWebElements(false);
    }

    public ArrayList<WebElement> getWebElements(By by) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getWebElements(" + by + ")");
        }
        return this.webUtils.getWebElements(by, false);
    }

    public ArrayList<WebElement> getCurrentWebElements() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getCurrentWebElements()");
        }
        return this.webUtils.getWebElements(true);
    }

    public ArrayList<WebElement> getCurrentWebElements(By by) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getCurrentWebElements(" + by + ")");
        }
        return this.webUtils.getWebElements(by, true);
    }

    public boolean isRadioButtonChecked(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "isRadioButtonChecked(" + i + ")");
        }
        return this.checker.isButtonChecked(RadioButton.class, i);
    }

    public boolean isRadioButtonChecked(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "isRadioButtonChecked(\"" + str + "\")");
        }
        return this.checker.isButtonChecked(RadioButton.class, str);
    }

    public boolean isCheckBoxChecked(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "isCheckBoxChecked(" + i + ")");
        }
        return this.checker.isButtonChecked(CheckBox.class, i);
    }

    public boolean isToggleButtonChecked(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "isToggleButtonChecked(\"" + str + "\")");
        }
        return this.checker.isButtonChecked(ToggleButton.class, str);
    }

    public boolean isToggleButtonChecked(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "isToggleButtonChecked(" + i + ")");
        }
        return this.checker.isButtonChecked(ToggleButton.class, i);
    }

    public boolean isCheckBoxChecked(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "isCheckBoxChecked(\"" + str + "\")");
        }
        return this.checker.isButtonChecked(CheckBox.class, str);
    }

    public boolean isTextChecked(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "isTextChecked(\"" + str + "\")");
        }
        this.waiter.waitForViews(false, CheckedTextView.class, CompoundButton.class);
        if (this.viewFetcher.getCurrentViews(CheckedTextView.class, true).size() <= 0 || !this.checker.isCheckedTextChecked(str)) {
            return this.viewFetcher.getCurrentViews(CompoundButton.class, true).size() > 0 && this.checker.isButtonChecked(CompoundButton.class, str);
        }
        return true;
    }

    public boolean isSpinnerTextSelected(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "isSpinnerTextSelected(\"" + str + "\")");
        }
        return this.checker.isSpinnerTextSelected(str);
    }

    public boolean isSpinnerTextSelected(int i, String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "isSpinnerTextSelected(" + i + ",\"" + str + "\")");
        }
        return this.checker.isSpinnerTextSelected(i, str);
    }

    public void hideSoftKeyboard() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "hideSoftKeyboard()");
        }
        this.dialogUtils.hideSoftKeyboard(null, true, false);
    }

    public void unlockScreen() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "unlockScreen()");
        }
        final Activity currentActivity = this.activityUtils.getCurrentActivity(false);
        this.instrumentation.runOnMainSync(new Runnable() { // from class: com.robotium.solo.Solo.3
            @Override // java.lang.Runnable
            public void run() {
                Activity activity = currentActivity;
                if (activity != null) {
                    activity.getWindow().addFlags(4194304);
                }
            }
        });
    }

    public void sendKey(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "sendKey(" + i + ")");
        }
        this.sender.sendKeyCode(i);
    }

    public void goBackToActivity(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "goBackToActivity(\"" + str + "\")");
        }
        this.activityUtils.goBackToActivity(str);
    }

    public boolean waitForActivity(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForActivity(\"" + str + "\")");
        }
        return this.waiter.waitForActivity(str, Timeout.getLargeTimeout());
    }

    public boolean waitForActivity(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForActivity(\"" + str + "\", " + i + ")");
        }
        return this.waiter.waitForActivity(str, i);
    }

    public boolean waitForActivity(Class<? extends Activity> cls) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForActivity(" + cls + ")");
        }
        return this.waiter.waitForActivity(cls, Timeout.getLargeTimeout());
    }

    public boolean waitForActivity(Class<? extends Activity> cls, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForActivity(" + cls + ", " + i + ")");
        }
        return this.waiter.waitForActivity(cls, i);
    }

    public boolean waitForEmptyActivityStack(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForEmptyActivityStack(" + i + ")");
        }
        return this.waiter.waitForCondition(new Condition() { // from class: com.robotium.solo.Solo.4
            @Override // com.robotium.solo.Condition
            public boolean isSatisfied() {
                return Solo.this.activityUtils.isActivityStackEmpty();
            }
        }, i);
    }

    public boolean waitForFragmentByTag(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForFragmentByTag(\"" + str + "\")");
        }
        return this.waiter.waitForFragment(str, 0, Timeout.getLargeTimeout());
    }

    public boolean waitForFragmentByTag(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForFragmentByTag(\"" + str + "\", " + i + ")");
        }
        return this.waiter.waitForFragment(str, 0, i);
    }

    public boolean waitForFragmentById(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForFragmentById(" + i + ")");
        }
        return this.waiter.waitForFragment(null, i, Timeout.getLargeTimeout());
    }

    public boolean waitForFragmentById(int i, int i2) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForFragmentById(" + i + ", " + i2 + ")");
        }
        return this.waiter.waitForFragment(null, i, i2);
    }

    public boolean waitForLogMessage(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForLogMessage(\"" + str + "\")");
        }
        return this.waiter.waitForLogMessage(str, Timeout.getLargeTimeout());
    }

    public boolean waitForLogMessage(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "waitForLogMessage(\"" + str + "\", " + i + ")");
        }
        return this.waiter.waitForLogMessage(str, i);
    }

    public void clearLog() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "clearLog()");
        }
        this.waiter.clearLog();
    }

    public String getString(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getString(" + i + ")");
        }
        return this.getter.getString(i);
    }

    public String getString(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "getString(\"" + str + "\")");
        }
        return this.getter.getString(str);
    }

    public void sleep(int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "sleep(" + i + ")");
        }
        this.sleeper.sleep(i);
    }

    public void finalize() throws Throwable {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "finalize()");
        }
        this.activityUtils.finalize();
    }

    public void finishOpenedActivities() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "finishOpenedActivities()");
        }
        this.activityUtils.finishOpenedActivities();
    }

    public void takeScreenshot() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "takeScreenshot()");
        }
        takeScreenshot(null);
    }

    public void takeScreenshot(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "takeScreenshot(\"" + str + "\")");
        }
        takeScreenshot(str, 100);
    }

    public void takeScreenshot(String str, int i) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "takeScreenshot(\"" + str + "\", " + i + ")");
        }
        this.screenshotTaker.takeScreenshot(str, i);
    }

    public void startScreenshotSequence(String str) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "startScreenshotSequence(\"" + str + "\")");
        }
        startScreenshotSequence(str, 80, SVG.Style.FONT_WEIGHT_NORMAL, 100);
    }

    public void startScreenshotSequence(String str, int i, int i2, int i3) {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "startScreenshotSequence(\"" + str + "\", " + i + ", " + i2 + ", " + i3 + ")");
        }
        this.screenshotTaker.startScreenshotSequence(str, i, i2, i3);
    }

    public void stopScreenshotSequence() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "stopScreenshotSequence()");
        }
        this.screenshotTaker.stopScreenshotSequence();
    }

    private void initialize() {
        if (this.config.commandLogging) {
            Log.d(this.config.commandLoggingTag, "initialize()");
        }
        Timeout.setLargeTimeout(initializeTimeout("solo_large_timeout", this.config.timeout_large));
        Timeout.setSmallTimeout(initializeTimeout("solo_small_timeout", this.config.timeout_small));
    }

    private static int initializeTimeout(String str, int i) {
        try {
            return Integer.parseInt((String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str));
        } catch (Exception unused) {
            return i;
        }
    }
}
