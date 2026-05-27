package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes2.dex */
public class GeoDataEntity {

    @Expose
    String name;

    @Expose
    String type;

    protected boolean canEqual(Object obj) {
        return obj instanceof GeoDataEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GeoDataEntity)) {
            return false;
        }
        GeoDataEntity geoDataEntity = (GeoDataEntity) obj;
        if (!geoDataEntity.canEqual(this)) {
            return false;
        }
        String type = getType();
        String type2 = geoDataEntity.getType();
        if (type != null ? !type.equals(type2) : type2 != null) {
            return false;
        }
        String name = getName();
        String name2 = geoDataEntity.getName();
        return name != null ? name.equals(name2) : name2 == null;
    }

    public int hashCode() {
        String type = getType();
        int iHashCode = type == null ? 43 : type.hashCode();
        String name = getName();
        return ((iHashCode + 59) * 59) + (name != null ? name.hashCode() : 43);
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "GeoDataEntity(type=" + getType() + ", name=" + getName() + ")";
    }

    public String getType() {
        return this.type;
    }

    public String getName() {
        return this.name;
    }
}
