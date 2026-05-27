.class public Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;
.super Ljava/lang/Object;
.source "UpdateConfigurationIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationUpdateErrorEvent"
.end annotation


# instance fields
.field private final exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;->exception:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;->exception:Ljava/lang/Throwable;

    return-object v0
.end method
