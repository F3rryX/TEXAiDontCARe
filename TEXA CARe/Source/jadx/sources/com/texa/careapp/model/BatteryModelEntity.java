package com.texa.careapp.model;

import com.google.gson.annotations.Expose;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryModelEntity {

    @Expose
    List<BatteryAnalyzeModel> list;

    public BatteryModelEntity(List<BatteryAnalyzeModel> list) {
        this.list = new ArrayList();
        this.list = list;
    }
}
