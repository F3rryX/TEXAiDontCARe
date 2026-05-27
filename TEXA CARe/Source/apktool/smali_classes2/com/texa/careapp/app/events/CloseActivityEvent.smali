.class public Lcom/texa/careapp/app/events/CloseActivityEvent;
.super Ljava/lang/Object;
.source "CloseActivityEvent.java"


# instance fields
.field private activity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/texa/careapp/base/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private activityCanonicalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/texa/careapp/base/BaseActivity;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/app/events/CloseActivityEvent;->activity:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/events/CloseActivityEvent;->activityCanonicalName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/texa/careapp/base/BaseActivity;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/app/events/CloseActivityEvent;->activity:Ljava/lang/Class;

    return-object v0
.end method

.method public getActivityTag()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/app/events/CloseActivityEvent;->activityCanonicalName:Ljava/lang/String;

    return-object v0
.end method
