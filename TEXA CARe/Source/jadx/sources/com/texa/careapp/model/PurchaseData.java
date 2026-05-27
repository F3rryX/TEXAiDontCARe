package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.android.billingclient.api.Purchase;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = "purchase")
public class PurchaseData extends Model {
    public static final String TABLE_NAME = "purchase";

    @Column
    @Expose
    public String productName;

    @Column
    @Expose
    public String purchaseSource;

    @SerializedName("receipt")
    @Column
    @Expose
    public ReceiptData receiptData;

    @Column
    @Expose
    public String ticket;

    public ReceiptData getReceiptData() {
        return this.receiptData;
    }

    public void setReceiptData(ReceiptData receiptData) {
        this.receiptData = receiptData;
    }

    public String getTicket() {
        return this.ticket;
    }

    public void setTicket(String str) {
        this.ticket = str;
    }

    public String getPurchaseSource() {
        return this.purchaseSource;
    }

    public void setPurchaseSource(String str) {
        this.purchaseSource = str;
    }

    public String getProductName() {
        return this.productName;
    }

    public void setProductName(String str) {
        this.productName = str;
    }

    public PurchaseData() {
        this.ticket = "";
        this.purchaseSource = "";
        this.productName = "";
    }

    public PurchaseData(String str, String str2, String str3, Purchase purchase) {
        this.ticket = "";
        this.purchaseSource = "";
        this.productName = "";
        this.receiptData = new ReceiptData(purchase.getPurchaseToken(), purchase.getPackageName(), purchase.getSkus().size() >= 1 ? purchase.getSkus().get(0) : "");
        this.ticket = str2;
        this.purchaseSource = str3;
        this.productName = str;
    }

    public class ReceiptData {

        @Expose
        public String packageName;

        @Expose
        public String subscriptionId;

        @Expose
        public String token;

        public ReceiptData(String str, String str2, String str3) {
            this.token = str;
            this.packageName = str2;
            this.subscriptionId = str3;
        }
    }
}
