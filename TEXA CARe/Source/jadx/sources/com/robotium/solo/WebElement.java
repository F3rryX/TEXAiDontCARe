package com.robotium.solo;

import java.util.Hashtable;

/* JADX INFO: loaded from: classes.dex */
public class WebElement {
    private Hashtable<String, String> attributes;
    private String className;
    private String id;
    private int locationX = 0;
    private int locationY = 0;
    private String name;
    private String tagName;
    private String text;

    public WebElement(String str, String str2, String str3, String str4, String str5, Hashtable<String, String> hashtable) {
        setId(str);
        setTextContent(str2);
        setName(str3);
        setClassName(str4);
        setTagName(str5);
        setAttributes(hashtable);
    }

    public void getLocationOnScreen(int[] iArr) {
        iArr[0] = this.locationX;
        iArr[1] = this.locationY;
    }

    public void setLocationX(int i) {
        this.locationX = i;
    }

    public void setLocationY(int i) {
        this.locationY = i;
    }

    public int getLocationX() {
        return this.locationX;
    }

    public int getLocationY() {
        return this.locationY;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public String getTagName() {
        return this.tagName;
    }

    public void setTagName(String str) {
        this.tagName = str;
    }

    public String getText() {
        return this.text;
    }

    public void setTextContent(String str) {
        this.text = str;
    }

    public String getAttribute(String str) {
        if (str != null) {
            return this.attributes.get(str);
        }
        return null;
    }

    public void setAttributes(Hashtable<String, String> hashtable) {
        this.attributes = hashtable;
    }
}
