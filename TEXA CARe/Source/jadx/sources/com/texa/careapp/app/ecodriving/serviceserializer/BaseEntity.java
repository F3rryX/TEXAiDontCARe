package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BaseEntity {

    @Expose
    private List<TripObjectEntity> list = new ArrayList();

    @Expose
    private String timestamp;

    protected boolean canEqual(Object obj) {
        return obj instanceof BaseEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BaseEntity)) {
            return false;
        }
        BaseEntity baseEntity = (BaseEntity) obj;
        if (!baseEntity.canEqual(this)) {
            return false;
        }
        List<TripObjectEntity> list = getList();
        List<TripObjectEntity> list2 = baseEntity.getList();
        if (list != null ? !list.equals(list2) : list2 != null) {
            return false;
        }
        String timestamp = getTimestamp();
        String timestamp2 = baseEntity.getTimestamp();
        return timestamp != null ? timestamp.equals(timestamp2) : timestamp2 == null;
    }

    public int hashCode() {
        List<TripObjectEntity> list = getList();
        int iHashCode = list == null ? 43 : list.hashCode();
        String timestamp = getTimestamp();
        return ((iHashCode + 59) * 59) + (timestamp != null ? timestamp.hashCode() : 43);
    }

    public void setList(List<TripObjectEntity> list) {
        this.list = list;
    }

    public void setTimestamp(String str) {
        this.timestamp = str;
    }

    public String toString() {
        return "BaseEntity(list=" + getList() + ", timestamp=" + getTimestamp() + ")";
    }

    public List<TripObjectEntity> getList() {
        return this.list;
    }

    public String getTimestamp() {
        return this.timestamp;
    }

    public BaseEntity(List<TripObjectModel> list) {
        Iterator<TripObjectModel> it = list.iterator();
        while (it.hasNext()) {
            this.list.add(new TripObjectEntity(it.next()));
        }
    }
}
