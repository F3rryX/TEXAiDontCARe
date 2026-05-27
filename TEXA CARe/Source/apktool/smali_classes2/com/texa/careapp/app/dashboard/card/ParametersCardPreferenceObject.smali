.class public Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;
.super Ljava/lang/Object;
.source "ParametersCardPreferenceObject.java"


# instance fields
.field private hwId:Ljava/lang/String;

.field private typeId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;->hwId:Ljava/lang/String;

    .line 15
    iput-wide p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;->typeId:J

    return-void
.end method


# virtual methods
.method public getHwId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;->hwId:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;->typeId:J

    return-wide v0
.end method

.method public setTypeId(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;->typeId:J

    return-void
.end method
