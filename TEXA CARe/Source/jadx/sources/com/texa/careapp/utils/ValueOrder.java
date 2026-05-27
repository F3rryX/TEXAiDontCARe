package com.texa.careapp.utils;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes2.dex */
public class ValueOrder {

    @Expose
    private int order;

    @Expose
    private String value;

    protected boolean canEqual(Object obj) {
        return obj instanceof ValueOrder;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ValueOrder)) {
            return false;
        }
        ValueOrder valueOrder = (ValueOrder) obj;
        if (!valueOrder.canEqual(this)) {
            return false;
        }
        String value = getValue();
        String value2 = valueOrder.getValue();
        if (value != null ? value.equals(value2) : value2 == null) {
            return getOrder() == valueOrder.getOrder();
        }
        return false;
    }

    public int hashCode() {
        String value = getValue();
        return (((value == null ? 43 : value.hashCode()) + 59) * 59) + getOrder();
    }

    public void setOrder(int i) {
        this.order = i;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public String toString() {
        return "ValueOrder(value=" + getValue() + ", order=" + getOrder() + ")";
    }

    public String getValue() {
        return this.value;
    }

    public int getOrder() {
        return this.order;
    }
}
