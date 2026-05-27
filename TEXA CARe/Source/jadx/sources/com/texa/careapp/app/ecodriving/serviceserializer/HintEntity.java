package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;
import com.texa.careapp.app.ecodriving.model.HintModel;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HintEntity {

    @Expose
    private boolean deleted;

    @Expose
    private int hintId;

    @Expose
    private int hintTypeId;

    @Expose
    private String imageUrl;

    @Expose
    private Date modifiedAt;

    @Expose
    private List<HintTranslationEntity> translations;

    protected boolean canEqual(Object obj) {
        return obj instanceof HintEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HintEntity)) {
            return false;
        }
        HintEntity hintEntity = (HintEntity) obj;
        if (!hintEntity.canEqual(this) || getHintId() != hintEntity.getHintId()) {
            return false;
        }
        String imageUrl = getImageUrl();
        String imageUrl2 = hintEntity.getImageUrl();
        if (imageUrl != null ? !imageUrl.equals(imageUrl2) : imageUrl2 != null) {
            return false;
        }
        if (getHintTypeId() != hintEntity.getHintTypeId() || isDeleted() != hintEntity.isDeleted()) {
            return false;
        }
        Date modifiedAt = getModifiedAt();
        Date modifiedAt2 = hintEntity.getModifiedAt();
        if (modifiedAt != null ? !modifiedAt.equals(modifiedAt2) : modifiedAt2 != null) {
            return false;
        }
        List<HintTranslationEntity> translations = getTranslations();
        List<HintTranslationEntity> translations2 = hintEntity.getTranslations();
        return translations != null ? translations.equals(translations2) : translations2 == null;
    }

    public int hashCode() {
        int hintId = getHintId() + 59;
        String imageUrl = getImageUrl();
        int iHashCode = (((((hintId * 59) + (imageUrl == null ? 43 : imageUrl.hashCode())) * 59) + getHintTypeId()) * 59) + (isDeleted() ? 79 : 97);
        Date modifiedAt = getModifiedAt();
        int iHashCode2 = (iHashCode * 59) + (modifiedAt == null ? 43 : modifiedAt.hashCode());
        List<HintTranslationEntity> translations = getTranslations();
        return (iHashCode2 * 59) + (translations != null ? translations.hashCode() : 43);
    }

    public void setDeleted(boolean z) {
        this.deleted = z;
    }

    public void setHintId(int i) {
        this.hintId = i;
    }

    public void setHintTypeId(int i) {
        this.hintTypeId = i;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setModifiedAt(Date date) {
        this.modifiedAt = date;
    }

    public void setTranslations(List<HintTranslationEntity> list) {
        this.translations = list;
    }

    public String toString() {
        return "HintEntity(hintId=" + getHintId() + ", imageUrl=" + getImageUrl() + ", hintTypeId=" + getHintTypeId() + ", deleted=" + isDeleted() + ", modifiedAt=" + getModifiedAt() + ", translations=" + getTranslations() + ")";
    }

    public int getHintId() {
        return this.hintId;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public int getHintTypeId() {
        return this.hintTypeId;
    }

    public boolean isDeleted() {
        return this.deleted;
    }

    public Date getModifiedAt() {
        return this.modifiedAt;
    }

    public List<HintTranslationEntity> getTranslations() {
        return this.translations;
    }

    public HintModel getHintModel() {
        HintModel hintModel = new HintModel();
        hintModel.setIdHint("" + getHintId());
        hintModel.setType(getHintTypeId());
        hintModel.setLastUpdate(getModifiedAt());
        hintModel.setImageUrl(getImageUrl());
        hintModel.setCountView(0);
        return hintModel;
    }
}
