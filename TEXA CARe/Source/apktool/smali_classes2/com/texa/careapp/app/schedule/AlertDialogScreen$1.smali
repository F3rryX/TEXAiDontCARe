.class synthetic Lcom/texa/careapp/app/schedule/AlertDialogScreen$1;
.super Ljava/lang/Object;
.source "AlertDialogScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/schedule/AlertDialogScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$careapp$model$ScheduleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/texa/careapp/model/ScheduleType;->values()[Lcom/texa/careapp/model/ScheduleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/app/schedule/AlertDialogScreen$1;->$SwitchMap$com$texa$careapp$model$ScheduleType:[I

    return-void
.end method
