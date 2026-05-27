package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HintBaseEntity {

    @Expose
    private List<HintEntity> list;

    @Expose
    private String timestamp;

    protected boolean canEqual(Object obj) {
        return obj instanceof HintBaseEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HintBaseEntity)) {
            return false;
        }
        HintBaseEntity hintBaseEntity = (HintBaseEntity) obj;
        if (!hintBaseEntity.canEqual(this)) {
            return false;
        }
        List<HintEntity> list = getList();
        List<HintEntity> list2 = hintBaseEntity.getList();
        if (list != null ? !list.equals(list2) : list2 != null) {
            return false;
        }
        String timestamp = getTimestamp();
        String timestamp2 = hintBaseEntity.getTimestamp();
        return timestamp != null ? timestamp.equals(timestamp2) : timestamp2 == null;
    }

    public int hashCode() {
        List<HintEntity> list = getList();
        int iHashCode = list == null ? 43 : list.hashCode();
        String timestamp = getTimestamp();
        return ((iHashCode + 59) * 59) + (timestamp != null ? timestamp.hashCode() : 43);
    }

    public void setList(List<HintEntity> list) {
        this.list = list;
    }

    public void setTimestamp(String str) {
        this.timestamp = str;
    }

    public String toString() {
        return "HintBaseEntity(list=" + getList() + ", timestamp=" + getTimestamp() + ")";
    }

    public List<HintEntity> getList() {
        return this.list;
    }

    public String getTimestamp() {
        return this.timestamp;
    }
}
