package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.google.gson.annotations.Expose;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = BusinessTime.TABLE_MECHANIC_BUSINESS_TIME)
public class BusinessTime extends Model {
    public static final String COLUMN_ID_BUSINESS_TIME = "uuid";
    public static final String COLUMN_ID_MECHANIC = "Mechanic";
    public static final String TABLE_MECHANIC_BUSINESS_TIME = "MechanicBusinessTime";

    @Column
    @Expose
    public Integer am_pm;

    @Column
    @Expose
    public String close_time;

    @Column(name = "Mechanic", onDelete = Column.ForeignKeyAction.CASCADE, uniqueGroups = {"key"})
    private MechanicModel mechanicModel;

    @Column
    @Expose
    public String open_time;

    @Column(name = "uuid", onUniqueConflict = Column.ConflictAction.REPLACE, unique = true)
    public String uuid = UUID.randomUUID().toString();

    @Column
    @Expose
    public Integer week_day;

    public Integer getWeek_day() {
        return this.week_day;
    }

    public void setWeek_day(Integer num) {
        this.week_day = num;
    }

    public Integer getAm_pm() {
        return this.am_pm;
    }

    public void setAm_pm(Integer num) {
        this.am_pm = num;
    }

    public String getOpen_time() {
        return this.open_time;
    }

    public void setOpen_time(String str) {
        this.open_time = str;
    }

    public String getClose_time() {
        return this.close_time;
    }

    public void setClose_time(String str) {
        this.close_time = str;
    }

    public MechanicModel getMechanicModel() {
        return this.mechanicModel;
    }

    public void setMechanicModel(MechanicModel mechanicModel) {
        this.mechanicModel = mechanicModel;
    }
}
