package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.texa.careapp.Constants;
import com.texa.careapp.utils.Utils;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = UserScheduleModel.TABLE_USER_SCHEDULE)
public class UserScheduleModel extends Model implements IScheduleModel {
    public static final String COLUMN_USER = "User";
    public static final String TABLE_USER_SCHEDULE = "UserSchedule";

    @Column
    private boolean archived;

    @Column
    private Date expireDate;

    @Column
    private Integer expireOdo;

    @Column
    private Integer startOdo;

    @Column
    private ScheduleType type;

    @Column
    private String uid;

    @Column(name = "User", onDelete = Column.ForeignKeyAction.CASCADE)
    private UserModel user;
    private boolean deletable = false;
    private boolean refreshable = false;

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public ScheduleType getType() {
        return this.type;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setType(ScheduleType scheduleType) {
        this.type = scheduleType;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public Date getExpireDate() {
        return this.expireDate;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setExpireDate(Date date) {
        this.expireDate = date;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public Integer getStartOdo() {
        return this.startOdo;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setStartOdo(Integer num) {
        this.startOdo = num;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public Integer getExpireOdo() {
        return this.expireOdo;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setExpireOdo(Integer num) {
        this.expireOdo = num;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isArchived() {
        return this.archived;
    }

    public void setArchived(boolean z) {
        this.archived = z;
    }

    public UserModel getUser() {
        return this.user;
    }

    public void setUser(UserModel userModel) {
        this.user = userModel;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isDeletable() {
        return this.deletable;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setDeletable(boolean z) {
        this.deletable = z;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isRefreshable() {
        return this.refreshable;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setRefreshable(boolean z) {
        this.refreshable = z;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void archive() {
        this.archived = true;
    }

    public int compareByDate(Date date) {
        if (getExpireDate() == null) {
            return 1;
        }
        if (date != null && this.expireDate.getTime() >= date.getTime()) {
            return this.expireDate.getTime() == date.getTime() ? 0 : 1;
        }
        return -1;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public long daysToExpire() {
        return Utils.daysToExpire(this.expireDate);
    }

    public Date getLimitDate(int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, i);
        return calendar.getTime();
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public int getExpiringStatusByDays(int i) {
        return compareByDate(getLimitDate(i)) >= 0 ? compareByDate(getLimitDate(Constants.LIMIT_DAYS_FOR_FAR_SCHEDULE)) >= 0 ? 2 : 1 : compareByDate(new Date()) == -1 ? -1 : 0;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public int getExpiringStatus() {
        if (getExpireOdo() == null && getExpireDate() == null) {
            return 2;
        }
        return getExpiringStatusByDays(30);
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public String getDesciption() {
        UserModel user = getUser();
        return user == null ? "" : user.formatName();
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isExpired() {
        return getExpiringStatus() == -1;
    }
}
