package com.texa.careapp.app.activationSosServices.entity;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes2.dex */
public class PurchaseUnlockEntity {

    @Expose
    private String ticket;

    protected boolean canEqual(Object obj) {
        return obj instanceof PurchaseUnlockEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PurchaseUnlockEntity)) {
            return false;
        }
        PurchaseUnlockEntity purchaseUnlockEntity = (PurchaseUnlockEntity) obj;
        if (!purchaseUnlockEntity.canEqual(this)) {
            return false;
        }
        String ticket = getTicket();
        String ticket2 = purchaseUnlockEntity.getTicket();
        return ticket != null ? ticket.equals(ticket2) : ticket2 == null;
    }

    public int hashCode() {
        String ticket = getTicket();
        return 59 + (ticket == null ? 43 : ticket.hashCode());
    }

    public void setTicket(String str) {
        this.ticket = str;
    }

    public String toString() {
        return "PurchaseUnlockEntity(ticket=" + getTicket() + ")";
    }

    public String getTicket() {
        return this.ticket;
    }
}
