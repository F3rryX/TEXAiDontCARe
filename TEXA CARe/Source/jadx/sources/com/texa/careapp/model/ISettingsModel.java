package com.texa.careapp.model;

/* JADX INFO: loaded from: classes2.dex */
public interface ISettingsModel {
    int getAction();

    int getImage();

    String getSubtitle();

    String getTitle();

    int getType();

    boolean getVisibility();

    boolean hasImage();

    void isVisible(boolean z);

    void setAction(int i);

    void setHasImage(boolean z);

    void setImage(int i);

    void setSubtitle(String str);

    void setTitle(String str);

    void setType(int i);
}
