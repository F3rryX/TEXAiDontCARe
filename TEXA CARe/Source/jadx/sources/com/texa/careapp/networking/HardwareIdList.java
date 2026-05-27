package com.texa.careapp.networking;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class HardwareIdList {
    public static final int MAX_VALUES = 5;

    @SerializedName("hwid_list")
    @Expose
    protected List<String> list;

    public HardwareIdList(List<String> list) {
        this.list = new ArrayList();
        if (list.size() <= 5) {
            this.list.addAll(list);
        } else {
            this.list.addAll(list.subList(0, 5));
        }
    }

    public HardwareIdList(Set<String> set) {
        this(new ArrayList(set));
    }

    public HardwareIdList() {
        this.list = new ArrayList();
    }

    public HardwareIdList(String str) {
        this.list = new ArrayList();
        ArrayList arrayList = new ArrayList(1);
        this.list = arrayList;
        arrayList.add(str);
    }

    public void add(String str) {
        this.list.add(str);
    }

    public String toString() {
        return "HardwareIdList{list=" + Arrays.toString(this.list.toArray()) + '}';
    }
}
