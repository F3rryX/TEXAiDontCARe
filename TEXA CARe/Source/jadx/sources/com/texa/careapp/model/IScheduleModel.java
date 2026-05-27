package com.texa.careapp.model;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public interface IScheduleModel {
    void archive();

    long daysToExpire();

    String getDesciption();

    Date getExpireDate();

    Integer getExpireOdo();

    int getExpiringStatus();

    int getExpiringStatusByDays(int i);

    Integer getStartOdo();

    ScheduleType getType();

    boolean isArchived();

    boolean isDeletable();

    boolean isExpired();

    boolean isRefreshable();

    void setDeletable(boolean z);

    void setExpireDate(Date date);

    void setExpireOdo(Integer num);

    void setRefreshable(boolean z);

    void setStartOdo(Integer num);

    void setType(ScheduleType scheduleType);
}
