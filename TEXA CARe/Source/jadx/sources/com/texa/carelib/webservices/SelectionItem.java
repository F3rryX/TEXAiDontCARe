package com.texa.carelib.webservices;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class SelectionItem {

    @SerializedName("order")
    @Expose
    private final int mOrder;

    @SerializedName("value")
    @Expose
    private final String mValue;

    public int getOrder() {
        return this.mOrder;
    }

    public String getValue() {
        return this.mValue;
    }

    public String toString() {
        return "SelectionItem{mOrder=" + this.mOrder + ", mValue='" + this.mValue + "'}";
    }

    public SelectionItem(int i, String str) {
        this.mOrder = i;
        this.mValue = str;
    }
}
