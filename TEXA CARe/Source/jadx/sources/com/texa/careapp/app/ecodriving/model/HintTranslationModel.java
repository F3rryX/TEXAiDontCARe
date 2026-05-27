package com.texa.careapp.app.ecodriving.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = HintTranslationModel.TABLE_NAME)
public class HintTranslationModel extends Model {
    public static final String COLUMN_DESCRIPTION = "description";
    public static final String COLUMN_ID = "idHintTranslation";
    public static final String COLUMN_ID_HINT = "idHint";
    public static final String COLUMN_LANGUAGE = "language";
    public static final String COLUMN_TITLE = "title";
    public static final String TABLE_NAME = "HintTranslation";

    @Column(name = "description")
    private String description;

    @Column(name = "idHint", onDelete = Column.ForeignKeyAction.CASCADE)
    private HintModel idHint;

    @Column(index = true, name = COLUMN_ID, onUniqueConflicts = {Column.ConflictAction.REPLACE})
    private String idHintTranslation;

    @Column(name = COLUMN_LANGUAGE)
    private String language;

    @Column(name = "title")
    private String title;

    public String getIdHintTranslation() {
        return this.idHintTranslation;
    }

    public void setIdHintTranslation(String str) {
        this.idHintTranslation = str;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public HintModel getIdHint() {
        return this.idHint;
    }

    public void setIdHint(HintModel hintModel) {
        this.idHint = hintModel;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "HintTranslationModel{idHintTranslation='" + this.idHintTranslation + "', language='" + this.language + "', title='" + this.title + "', description='" + this.description + "', idHint=" + this.idHint + '}';
    }
}
