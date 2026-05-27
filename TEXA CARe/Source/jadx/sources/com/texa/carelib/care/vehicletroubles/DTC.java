package com.texa.carelib.care.vehicletroubles;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.carelib.care.vehicletroubles.DTCInfo;
import com.texa.carelib.core.utils.internal.Check;
import com.texa.carelib.webservices.internal.HttpServiceDTCResolutionProcedure;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DTC {
    private static final Locale DEFAULT_LOCALE = Locale.ENGLISH;
    public static final String TAG = "DTC";

    @SerializedName("timestamp")
    @Expose
    private Date mAcquisitionDate;

    @SerializedName("code")
    @Expose
    private String mCode;

    @SerializedName("descriptions")
    @Expose
    private LinkedHashMap<Locale, DTCInfo> mDescriptionLangs;

    @SerializedName("ecu")
    @Expose
    private String mECU;

    @SerializedName("dtc_id")
    @Expose
    private String mID;

    @SerializedName("occurrences")
    @Expose
    private Long mOccurrences;

    @SerializedName("source_node")
    @Expose
    private Long mSourceNode;

    @SerializedName("status")
    @Expose
    private DTCStatus mStatus;

    @SerializedName(HttpServiceDTCResolutionProcedure.KEY_DTC_TOKEN)
    @Expose
    private String mToken;

    public DTC() {
        this.mID = null;
        this.mAcquisitionDate = null;
        this.mCode = null;
        this.mECU = null;
        this.mStatus = DTCStatus.Unsupported;
        this.mToken = null;
        this.mOccurrences = null;
        this.mSourceNode = null;
        this.mDescriptionLangs = new LinkedHashMap<>();
    }

    public DTC(DTC dtc) {
        this();
        if (dtc != null) {
            this.mID = dtc.mID;
            if (dtc.getAcquisitionDate() != null) {
                this.mAcquisitionDate = (Date) dtc.mAcquisitionDate.clone();
            }
            this.mCode = dtc.mCode;
            if (dtc.mDescriptionLangs != null) {
                this.mDescriptionLangs = new LinkedHashMap<>(dtc.mDescriptionLangs);
            }
            this.mECU = dtc.mECU;
            this.mToken = dtc.mToken;
            this.mStatus = dtc.mStatus;
            this.mSourceNode = dtc.mSourceNode;
            this.mOccurrences = dtc.mOccurrences;
        }
    }

    public Builder edit() {
        return new Builder(this);
    }

    public String getID() {
        return this.mID;
    }

    public String getToken() {
        return this.mToken;
    }

    public String getCode() {
        return this.mCode;
    }

    public String getECU() {
        return this.mECU;
    }

    public DTCStatus getStatus() {
        return this.mStatus;
    }

    public Date getAcquisitionDate() {
        return this.mAcquisitionDate;
    }

    public Map<Locale, DTCInfo> getDescriptionLangs() {
        return Collections.unmodifiableMap(this.mDescriptionLangs);
    }

    public Long getSourceNode() {
        return this.mSourceNode;
    }

    public Long getOccurrences() {
        return this.mOccurrences;
    }

    public String getHelp() {
        Locale next;
        Iterator<Locale> it = this.mDescriptionLangs.keySet().iterator();
        Locale locale = null;
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (locale != null) {
                break;
            }
            locale = next;
        }
        if (locale == null) {
            return null;
        }
        if (next == null) {
            next = locale;
        }
        return getHelp(locale, next);
    }

    public String getHelp(Locale locale) {
        Check.notNull(locale);
        return getHelp(locale, DEFAULT_LOCALE);
    }

    public String getHelp(Locale locale, Locale locale2) {
        Check.notNull(locale);
        Check.notNull(locale2);
        DTCInfo dTCInfo = getDTCInfo(this.mDescriptionLangs, locale, locale2);
        if (dTCInfo == null) {
            return null;
        }
        return dTCInfo.getHelp();
    }

    public String getDetail() {
        Locale next;
        Iterator<Locale> it = this.mDescriptionLangs.keySet().iterator();
        Locale locale = null;
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (locale != null) {
                break;
            }
            locale = next;
        }
        if (locale == null) {
            return null;
        }
        if (next == null) {
            next = locale;
        }
        return getDetail(locale, next);
    }

    public String getDetail(Locale locale) {
        Check.notNull(locale);
        return getDetail(locale, DEFAULT_LOCALE);
    }

    public String getDetail(Locale locale, Locale locale2) {
        Check.notNull(locale);
        Check.notNull(locale2);
        DTCInfo dTCInfo = getDTCInfo(this.mDescriptionLangs, locale, locale2);
        if (dTCInfo == null) {
            return null;
        }
        return dTCInfo.getDetail();
    }

    public int hashCode() {
        String str = this.mToken;
        if (str == null) {
            return super.hashCode();
        }
        return str.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DTC)) {
            return false;
        }
        DTC dtc = (DTC) obj;
        String str = this.mID;
        if (str == null) {
            if (dtc.mID != null) {
                return false;
            }
        } else if (!str.equals(dtc.mID)) {
            return false;
        }
        String str2 = this.mToken;
        if (str2 == null) {
            if (dtc.mToken != null) {
                return false;
            }
        } else if (!str2.equals(dtc.mToken)) {
            return false;
        }
        if (this.mStatus != dtc.getStatus()) {
            return false;
        }
        Long l = this.mOccurrences;
        if (l == null) {
            if (dtc.mOccurrences != null) {
                return false;
            }
        } else if (!l.equals(dtc.mOccurrences)) {
            return false;
        }
        Long l2 = this.mSourceNode;
        if (l2 == null) {
            if (dtc.mSourceNode != null) {
                return false;
            }
        } else if (!l2.equals(dtc.mSourceNode)) {
            return false;
        }
        Date date = this.mAcquisitionDate;
        if (date == null) {
            return dtc.mAcquisitionDate == null;
        }
        return date.equals(dtc.mAcquisitionDate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DTCInfo getDTCInfo(Map<Locale, DTCInfo> map, Locale locale) {
        if (map.containsKey(locale)) {
            return map.get(locale);
        }
        DTCInfo dTCInfoByLanguage = getDTCInfoByLanguage(map, locale);
        if (dTCInfoByLanguage != null) {
            return dTCInfoByLanguage;
        }
        return null;
    }

    private DTCInfo getDTCInfo(Map<Locale, DTCInfo> map, Locale locale, Locale locale2) {
        DTCInfo dTCInfo = getDTCInfo(map, locale);
        return dTCInfo != null ? dTCInfo : getDTCInfo(map, locale2);
    }

    private DTCInfo getDTCInfoByLanguage(Map<Locale, DTCInfo> map, Locale locale) {
        for (Locale locale2 : map.keySet()) {
            if (locale2.getLanguage() != null && locale2.getLanguage().equals(locale.getLanguage())) {
                return map.get(locale2);
            }
        }
        return null;
    }

    public String toString() {
        return "DTC{mID=" + this.mID + ", mToken='" + this.mToken + "', mCode='" + this.mCode + "', mECU='" + this.mECU + "', mStatus='" + this.mStatus + "', mAcquisitionDate=" + this.mAcquisitionDate + ", mDescriptionLangs=" + this.mDescriptionLangs + '}';
    }

    public static class Builder {
        private DTC mDTC;

        public Builder() {
            this(new DTC());
        }

        public Builder(DTC dtc) {
            this.mDTC = dtc;
        }

        public DTC build() {
            return this.mDTC;
        }

        public Builder setID(String str) {
            this.mDTC.mID = str;
            return this;
        }

        public Builder setToken(String str) {
            this.mDTC.mToken = str;
            return this;
        }

        public Builder setCode(String str) {
            this.mDTC.mCode = str;
            return this;
        }

        public Builder setECU(String str) {
            this.mDTC.mECU = str;
            return this;
        }

        public Builder setStatus(DTCStatus dTCStatus) {
            this.mDTC.mStatus = dTCStatus;
            return this;
        }

        public Builder setAcquisitionDate(Date date) {
            this.mDTC.mAcquisitionDate = date;
            return this;
        }

        public Builder setOccurrences(Long l) {
            this.mDTC.mOccurrences = l;
            return this;
        }

        public Builder setSourceNode(Long l) {
            this.mDTC.mSourceNode = l;
            return this;
        }

        public Builder addDetail(Locale locale, String str) {
            DTCInfo dTCInfoBuild;
            DTC dtc = this.mDTC;
            DTCInfo dTCInfo = dtc.getDTCInfo(dtc.mDescriptionLangs, locale);
            if (dTCInfo == null) {
                dTCInfoBuild = new DTCInfo.Builder().setDetail(str).build();
            } else {
                dTCInfoBuild = dTCInfo.builder().setDetail(str).build();
                this.mDTC.mDescriptionLangs.put(locale, dTCInfoBuild);
            }
            this.mDTC.mDescriptionLangs.put(locale, dTCInfoBuild);
            return this;
        }

        public Builder addHelp(Locale locale, String str) {
            DTCInfo dTCInfoBuild;
            DTC dtc = this.mDTC;
            DTCInfo dTCInfo = dtc.getDTCInfo(dtc.mDescriptionLangs, locale);
            if (dTCInfo == null) {
                dTCInfoBuild = new DTCInfo.Builder().setHelp(str).build();
            } else {
                dTCInfoBuild = dTCInfo.builder().setHelp(str).build();
                this.mDTC.mDescriptionLangs.put(locale, dTCInfoBuild);
            }
            this.mDTC.mDescriptionLangs.put(locale, dTCInfoBuild);
            return this;
        }
    }
}
