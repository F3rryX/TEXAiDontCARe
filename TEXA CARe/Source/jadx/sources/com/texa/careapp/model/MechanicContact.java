package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = MechanicContact.TABLE_MECHANIC_CONTACT)
public class MechanicContact extends Model {
    public static final String COLUMN_ID_CONTACT = "uuid";
    public static final String COLUMN_ID_MECHANIC = "Mechanic";
    public static final String COLUMN_PRIMARY_CONTACT = "primaryContact";
    public static final String TABLE_MECHANIC_CONTACT = "MechanicContact";

    @SerializedName("primary")
    @Column(name = COLUMN_PRIMARY_CONTACT)
    @Expose
    public boolean isPrimary;

    @Column(name = "Mechanic", onDelete = Column.ForeignKeyAction.CASCADE, uniqueGroups = {"key"})
    private MechanicModel mechanicModel;

    @Column
    @Expose
    public String type;

    @Column(name = "uuid", onUniqueConflict = Column.ConflictAction.REPLACE, unique = true)
    public String uuid = UUID.randomUUID().toString();

    @Column
    @Expose
    public String value;

    public String getUuid() {
        return this.uuid;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public boolean isPrimary() {
        return this.isPrimary;
    }

    public void setPrimary(boolean z) {
        this.isPrimary = z;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public MechanicModel getMechanicModel() {
        return this.mechanicModel;
    }

    public void setMechanicModel(MechanicModel mechanicModel) {
        this.mechanicModel = mechanicModel;
    }
}
