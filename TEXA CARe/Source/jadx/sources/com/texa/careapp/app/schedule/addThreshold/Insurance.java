package com.texa.careapp.app.schedule.addThreshold;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes2.dex */
public class Insurance {

    @Expose
    int id;

    @Expose
    String name;

    protected boolean canEqual(Object obj) {
        return obj instanceof Insurance;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Insurance)) {
            return false;
        }
        Insurance insurance = (Insurance) obj;
        if (!insurance.canEqual(this) || getId() != insurance.getId()) {
            return false;
        }
        String name = getName();
        String name2 = insurance.getName();
        return name != null ? name.equals(name2) : name2 == null;
    }

    public int hashCode() {
        int id = getId() + 59;
        String name = getName();
        return (id * 59) + (name == null ? 43 : name.hashCode());
    }

    public void setId(int i) {
        this.id = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "Insurance(id=" + getId() + ", name=" + getName() + ")";
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public Insurance(int i, String str) {
        this.id = i;
        this.name = str;
    }
}
