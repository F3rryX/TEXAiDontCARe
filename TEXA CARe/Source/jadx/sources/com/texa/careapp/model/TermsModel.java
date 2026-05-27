package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.google.gson.annotations.Expose;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = TermsModel.TABLE_TERM)
public class TermsModel extends Model {
    public static final String ACEPTATION_DATE = "AceptationDate";
    public static final String COLUMN_USER = "User";
    public static final String TABLE_TERM = "Terms";
    public static final String TERM_TYPE = "TermType";
    public static final String VERSION = "Version";

    @Column(name = TERM_TYPE)
    @Expose
    public String termsType;

    @Column(name = ACEPTATION_DATE)
    @Expose
    public Date timestamp;

    @Column(name = "User", onDelete = Column.ForeignKeyAction.CASCADE)
    public UserModel user;

    @Column(name = VERSION)
    @Expose
    public int version;

    public void setUser(UserModel userModel) {
        this.user = userModel;
    }

    public UserModel getUser() {
        return this.user;
    }

    public TermsModel() {
    }

    public TermsModel(String str, int i, Date date) {
        this();
        this.termsType = str;
        this.version = i;
        this.timestamp = date;
    }

    public void update(TermsModel termsModel) {
        this.version = termsModel.version;
        this.timestamp = termsModel.timestamp;
    }

    public void update(TermsModel termsModel, UserModel userModel) {
        update(termsModel);
        this.user = userModel;
    }
}
