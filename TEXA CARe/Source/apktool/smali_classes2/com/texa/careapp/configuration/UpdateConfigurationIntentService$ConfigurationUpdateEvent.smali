.class public Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;
.super Ljava/lang/Object;
.source "UpdateConfigurationIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationUpdateEvent"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mProgress:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;->mMessage:Ljava/lang/String;

    .line 340
    iput p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;->mProgress:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;->mProgress:I

    return v0
.end method
