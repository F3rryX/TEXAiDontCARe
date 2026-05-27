package com.texa.careapp.app.errorsDTC;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.DiagnosisType;
import com.texa.careapp.model.VehicleModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = LampStatus.TABLE_LAMP_STATUS)
public class LampStatus extends Model {
    public static final int COLOR_RED = 1;
    public static final int COLOR_YELLOW = 0;
    public static final String COLUMN_DATA_ID = "dataId";
    public static final String COLUMN_DATA_STATUS = "status";
    public static final String COLUMN_FILTERED = "filtered";
    public static final String COLUMN_VEHICLE = "vehicle";
    public static final String TABLE_LAMP_STATUS = "LampStatus";
    private LampColor color;

    @Column(name = "dataId", notNull = true)
    private Long dataId;

    @Column(name = COLUMN_FILTERED, notNull = true)
    private boolean filtered;
    private String headerTitle;

    @Column(name = "status", notNull = true)
    private boolean status;

    @SerializedName("timestamp")
    @Column
    @Expose
    private Date time;

    @Column(name = "vehicle", notNull = true, onDelete = Column.ForeignKeyAction.CASCADE)
    private VehicleModel vehicleModel;

    @Retention(RetentionPolicy.SOURCE)
    public @interface LampColor {
    }

    public void setColor(LampColor lampColor) {
        this.color = lampColor;
    }

    public void setDataId(Long l) {
        this.dataId = l;
    }

    public void setFiltered(boolean z) {
        this.filtered = z;
    }

    public void setHeaderTitle(String str) {
        this.headerTitle = str;
    }

    public void setStatus(boolean z) {
        this.status = z;
    }

    public void setTime(Date date) {
        this.time = date;
    }

    public void setVehicleModel(VehicleModel vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "LampStatus(dataId=" + getDataId() + ", status=" + isStatus() + ", filtered=" + isFiltered() + ", time=" + getTime() + ", vehicleModel=" + getVehicleModel() + ", color=" + getColor() + ", headerTitle=" + getHeaderTitle() + ")";
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof LampStatus;
    }

    @Override // com.activeandroid.Model
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LampStatus)) {
            return false;
        }
        LampStatus lampStatus = (LampStatus) obj;
        if (!lampStatus.canEqual(this)) {
            return false;
        }
        Long dataId = getDataId();
        Long dataId2 = lampStatus.getDataId();
        return dataId != null ? dataId.equals(dataId2) : dataId2 == null;
    }

    @Override // com.activeandroid.Model
    public int hashCode() {
        Long dataId = getDataId();
        return 59 + (dataId == null ? 43 : dataId.hashCode());
    }

    public Long getDataId() {
        return this.dataId;
    }

    public boolean isStatus() {
        return this.status;
    }

    public boolean isFiltered() {
        return this.filtered;
    }

    public Date getTime() {
        return this.time;
    }

    public VehicleModel getVehicleModel() {
        return this.vehicleModel;
    }

    public String getHeaderTitle() {
        return this.headerTitle;
    }

    public boolean isActive() {
        return isStatus();
    }

    public Integer getColor() {
        if (Constants.LAMP_COLORS.get(this.dataId.longValue()).intValue() == 0) {
            return Integer.valueOf(R.color.yellow_lamp);
        }
        return Integer.valueOf(R.color.error);
    }

    public DiagnosisType getDiagnosisType() {
        return Constants.LAMP_DIAGNOSIS.get(getDataId().longValue());
    }
}
