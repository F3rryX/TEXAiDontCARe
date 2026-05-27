package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;
import com.texa.careapp.app.ecodriving.model.HintModel;
import com.texa.careapp.app.ecodriving.model.HintTranslationModel;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class HintTranslationEntity {

    @Expose
    private String description;

    @Expose
    private String language;

    @Expose
    private String title;

    protected boolean canEqual(Object obj) {
        return obj instanceof HintTranslationEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HintTranslationEntity)) {
            return false;
        }
        HintTranslationEntity hintTranslationEntity = (HintTranslationEntity) obj;
        if (!hintTranslationEntity.canEqual(this)) {
            return false;
        }
        String language = getLanguage();
        String language2 = hintTranslationEntity.getLanguage();
        if (language != null ? !language.equals(language2) : language2 != null) {
            return false;
        }
        String title = getTitle();
        String title2 = hintTranslationEntity.getTitle();
        if (title != null ? !title.equals(title2) : title2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = hintTranslationEntity.getDescription();
        return description != null ? description.equals(description2) : description2 == null;
    }

    public int hashCode() {
        String language = getLanguage();
        int iHashCode = language == null ? 43 : language.hashCode();
        String title = getTitle();
        int iHashCode2 = ((iHashCode + 59) * 59) + (title == null ? 43 : title.hashCode());
        String description = getDescription();
        return (iHashCode2 * 59) + (description != null ? description.hashCode() : 43);
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "HintTranslationEntity(language=" + getLanguage() + ", title=" + getTitle() + ", description=" + getDescription() + ")";
    }

    public String getLanguage() {
        return this.language;
    }

    public String getTitle() {
        return this.title;
    }

    public String getDescription() {
        return this.description;
    }

    public HintTranslationModel getHintTranslationModel(HintModel hintModel) {
        HintTranslationModel hintTranslationModel = new HintTranslationModel();
        hintTranslationModel.setIdHintTranslation(UUID.randomUUID().toString());
        hintTranslationModel.setLanguage(getLanguage());
        hintTranslationModel.setTitle(getTitle());
        hintTranslationModel.setDescription(getDescription());
        hintTranslationModel.setIdHint(hintModel);
        return hintTranslationModel;
    }
}
