.class public Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "SimulatedEmergencyCallActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field private static final AUDIO_RES:Ljava/lang/String; = "AUDIO_RES_KEY"

.field private static final IMAGE_RES:Ljava/lang/String; = "IMAGE_RES_KEY"

.field private static final TAG:Ljava/lang/String; = "SimulatedEmergencyCallActivity"

.field public static mProfile:Lcom/texa/carelib/profile/Profile;


# instance fields
.field private mAudioRes:I

.field private mImageRes:I

.field protected mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;Lcom/texa/carelib/profile/Profile;II)Landroid/content/Intent;
    .locals 2

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "AUDIO_RES_KEY"

    .line 37
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "IMAGE_RES_KEY"

    .line 38
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    sput-object p1, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 42
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 44
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p1
.end method

.method private complete()V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->finish()V

    return-void
.end method

.method private playAudioFile()V
    .locals 3

    .line 75
    :try_start_0
    iget v0, p0, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->mAudioRes:I

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 76
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    sget-object v1, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->TAG:Ljava/lang/String;

    const-string v2, "ignored"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$com-texa-careapp-calling-SimulatedEmergencyCallActivity(Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->finish()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->complete()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003d

    .line 53
    invoke-virtual {p0, p1}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AUDIO_RES_KEY"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->mAudioRes:I

    const-string v0, "IMAGE_RES_KEY"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->mImageRes:I

    const v1, 0x7f0a0410

    .line 59
    invoke-virtual {p0, v1}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const p1, 0x7f0a00a2

    .line 62
    invoke-virtual {p0, p1}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->playAudioFile()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onStop()V

    .line 96
    invoke-virtual {p0}, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->stopPlayer()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stopPlayer()V
    .locals 1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/calling/SimulatedEmergencyCallActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
