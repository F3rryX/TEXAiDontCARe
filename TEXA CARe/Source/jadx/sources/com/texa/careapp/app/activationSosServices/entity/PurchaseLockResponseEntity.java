package com.texa.careapp.app.activationSosServices.entity;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes2.dex */
public class PurchaseLockResponseEntity {

    @Expose
    private boolean alreadyPending;

    @Expose
    private Integer expiresIn;

    @Expose
    private String ticket;

    protected boolean canEqual(Object obj) {
        return obj instanceof PurchaseLockResponseEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PurchaseLockResponseEntity)) {
            return false;
        }
        PurchaseLockResponseEntity purchaseLockResponseEntity = (PurchaseLockResponseEntity) obj;
        if (!purchaseLockResponseEntity.canEqual(this)) {
            return false;
        }
        String ticket = getTicket();
        String ticket2 = purchaseLockResponseEntity.getTicket();
        if (ticket != null ? !ticket.equals(ticket2) : ticket2 != null) {
            return false;
        }
        Integer expiresIn = getExpiresIn();
        Integer expiresIn2 = purchaseLockResponseEntity.getExpiresIn();
        if (expiresIn != null ? expiresIn.equals(expiresIn2) : expiresIn2 == null) {
            return isAlreadyPending() == purchaseLockResponseEntity.isAlreadyPending();
        }
        return false;
    }

    public int hashCode() {
        String ticket = getTicket();
        int iHashCode = ticket == null ? 43 : ticket.hashCode();
        Integer expiresIn = getExpiresIn();
        return ((((iHashCode + 59) * 59) + (expiresIn != null ? expiresIn.hashCode() : 43)) * 59) + (isAlreadyPending() ? 79 : 97);
    }

    public void setAlreadyPending(boolean z) {
        this.alreadyPending = z;
    }

    public void setExpiresIn(Integer num) {
        this.expiresIn = num;
    }

    public void setTicket(String str) {
        this.ticket = str;
    }

    public String toString() {
        return "PurchaseLockResponseEntity(ticket=" + getTicket() + ", expiresIn=" + getExpiresIn() + ", alreadyPending=" + isAlreadyPending() + ")";
    }

    public String getTicket() {
        return this.ticket;
    }

    public Integer getExpiresIn() {
        return this.expiresIn;
    }

    public boolean isAlreadyPending() {
        return this.alreadyPending;
    }
}
