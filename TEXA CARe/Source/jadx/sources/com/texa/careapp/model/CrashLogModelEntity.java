package com.texa.careapp.model;

import com.google.gson.annotations.Expose;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CrashLogModelEntity {

    @Expose
    List<CrashLogModel> list;

    public CrashLogModelEntity(List<CrashLogModel> list) {
        this.list = new ArrayList();
        this.list = list;
    }
}
