package com.texa.careapp.model;

import com.google.gson.annotations.Expose;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TermsModelsEntity {

    @Expose
    List<TermsModel> list;

    public TermsModelsEntity(List<TermsModel> list) {
        this.list = new ArrayList();
        this.list = list;
    }
}
