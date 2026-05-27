.class public interface abstract Lcom/texa/careapp/model/IScheduleModel;
.super Ljava/lang/Object;
.source "IScheduleModel.java"


# virtual methods
.method public abstract archive()V
.end method

.method public abstract daysToExpire()J
.end method

.method public abstract getDesciption()Ljava/lang/String;
.end method

.method public abstract getExpireDate()Ljava/util/Date;
.end method

.method public abstract getExpireOdo()Ljava/lang/Integer;
.end method

.method public abstract getExpiringStatus()I
.end method

.method public abstract getExpiringStatusByDays(I)I
.end method

.method public abstract getStartOdo()Ljava/lang/Integer;
.end method

.method public abstract getType()Lcom/texa/careapp/model/ScheduleType;
.end method

.method public abstract isArchived()Z
.end method

.method public abstract isDeletable()Z
.end method

.method public abstract isExpired()Z
.end method

.method public abstract isRefreshable()Z
.end method

.method public abstract setDeletable(Z)V
.end method

.method public abstract setExpireDate(Ljava/util/Date;)V
.end method

.method public abstract setExpireOdo(Ljava/lang/Integer;)V
.end method

.method public abstract setRefreshable(Z)V
.end method

.method public abstract setStartOdo(Ljava/lang/Integer;)V
.end method

.method public abstract setType(Lcom/texa/careapp/model/ScheduleType;)V
.end method
