.class public Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;
.super Ljava/lang/Object;
.source "SosFeatureDefaultManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateButton"
.end annotation


# instance fields
.field sosStatus:I

.field final synthetic this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;I)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;->sosStatus:I

    return-void
.end method


# virtual methods
.method public getSosStatus()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;->sosStatus:I

    return v0
.end method
