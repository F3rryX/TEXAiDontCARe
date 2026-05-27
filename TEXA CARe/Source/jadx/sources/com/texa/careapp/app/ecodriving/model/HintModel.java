package com.texa.careapp.app.ecodriving.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = HintModel.TABLE_NAME)
public class HintModel extends Model {
    public static final String COLUMN_COUNT_VIEW = "countView";
    public static final String COLUMN_DELETED = "deleted";
    public static final String COLUMN_ID = "idHint";
    public static final String COLUMN_IMAGE_URL = "imageUrl";
    public static final String COLUMN_LAST_UPDATE = "lastUpdate";
    public static final String COLUMN_TYPE = "type";
    public static final String TABLE_NAME = "Hint";

    @Column(name = COLUMN_COUNT_VIEW)
    private int countView;

    @Column(name = COLUMN_DELETED)
    private boolean deleted;

    @Column(index = true, name = "idHint", onUniqueConflicts = {Column.ConflictAction.REPLACE}, unique = true)
    private String idHint;

    @Column(name = COLUMN_IMAGE_URL)
    private String imageUrl;

    @Column(name = COLUMN_LAST_UPDATE)
    private Date lastUpdate;

    @Column(name = "type")
    private int type;
    boolean viewed = false;

    public String getIdHint() {
        return this.idHint;
    }

    public void setIdHint(String str) {
        this.idHint = str;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public boolean isDeleted() {
        return this.deleted;
    }

    public void setDeleted(boolean z) {
        this.deleted = z;
    }

    public Date getLastUpdate() {
        return this.lastUpdate;
    }

    public void setLastUpdate(Date date) {
        this.lastUpdate = date;
    }

    public int getCountView() {
        return this.countView;
    }

    public void setCountView(int i) {
        this.countView = i;
    }

    public boolean isViewed() {
        return this.viewed;
    }

    public void setViewed(boolean z) {
        this.viewed = z;
    }

    public HintTranslationModel getTranslation(String str, String str2) {
        return (HintTranslationModel) new Select().from(HintTranslationModel.class).leftJoin(HintModel.class).on("HintTranslation.idHint = Hint.id").where("language = ?", str2).and("Hint.idHint = ?", str).executeSingle();
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "HintModel{idHint='" + this.idHint + "', imageUrl='" + this.imageUrl + "', type=" + this.type + ", deleted=" + this.deleted + ", lastUpdate=" + this.lastUpdate + ", countView=" + this.countView + '}';
    }
}
