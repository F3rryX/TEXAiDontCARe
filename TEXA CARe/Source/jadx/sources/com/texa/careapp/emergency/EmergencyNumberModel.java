package com.texa.careapp.emergency;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = EmergencyNumberModel.TABLE_EMERGENCY_NUMBERS)
public class EmergencyNumberModel extends Model implements EmergencyNumber {
    public static final String COLUMN_COUNTRY = "country";
    public static final String TABLE_EMERGENCY_NUMBERS = "EmergencyNumbers";

    @Column(name = "country")
    private String country;

    @Column
    private ContactType type;

    @Column
    private String value;

    @Override // com.texa.careapp.emergency.EmergencyNumber
    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    @Override // com.texa.careapp.emergency.EmergencyNumber
    public ContactType getType() {
        return this.type;
    }

    public void setType(ContactType contactType) {
        this.type = contactType;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public static EmergencyNumberModel from(String str, EmergencyNumberResponse emergencyNumberResponse) {
        EmergencyNumberModel emergencyNumberModel = new EmergencyNumberModel();
        emergencyNumberModel.setCountry(str);
        emergencyNumberModel.setValue(emergencyNumberResponse.getValue());
        emergencyNumberModel.setType(emergencyNumberResponse.getType() != null ? emergencyNumberResponse.getType() : ContactType.GENERAL);
        return emergencyNumberModel;
    }
}
