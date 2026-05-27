.class public Lcom/texa/careapp/tts/DefaultSpeaker;
.super Ljava/lang/Object;
.source "DefaultSpeaker.java"

# interfaces
.implements Lcom/texa/careapp/tts/Speaker;


# static fields
.field private static final CARE_CONNECTED_SPEECH_ID:Ljava/lang/String; = "care-connected"

.field private static final CONNECTION_LOST_SPEECH_ID:Ljava/lang/String; = "connection-lost"

.field private static final TRIP_END_SPEECH_ID:Ljava/lang/String; = "trip-end"

.field private static final TRIP_START_SPEECH_ID:Ljava/lang/String; = "trip-start"


# instance fields
.field protected mTextToSpeech:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeech;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/texa/careapp/tts/DefaultSpeaker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 26
    invoke-interface {p2}, Lcom/texa/careapp/carelib/ICareObserver;->tripStartSmart()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/tts/DefaultSpeaker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/tts/DefaultSpeaker$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/tts/DefaultSpeaker;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 28
    invoke-interface {p2}, Lcom/texa/careapp/carelib/ICareObserver;->careConnected()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/tts/DefaultSpeaker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/tts/DefaultSpeaker$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/tts/DefaultSpeaker;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 30
    invoke-interface {p2}, Lcom/texa/careapp/carelib/ICareObserver;->careNotConnected()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/tts/DefaultSpeaker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/tts/DefaultSpeaker$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/tts/DefaultSpeaker;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 32
    invoke-interface {p2}, Lcom/texa/careapp/carelib/ICareObserver;->observeTripStopInfo()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/tts/DefaultSpeaker$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/texa/careapp/tts/DefaultSpeaker$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/tts/DefaultSpeaker;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private speak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/tts/DefaultSpeaker;->speakLollipop(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/tts/DefaultSpeaker;->speakDefault(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private speakDefault(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object p2, p0, Lcom/texa/careapp/tts/DefaultSpeaker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method

.method private speakLollipop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/tts/DefaultSpeaker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-careapp-tts-DefaultSpeaker(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "buon viaggio!"

    const-string v0, "trip-start"

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/tts/DefaultSpeaker;->speak(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-careapp-tts-DefaultSpeaker(Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "dispositivo connesso"

    const-string v0, "care-connected"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/tts/DefaultSpeaker;->speak(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$2$com-texa-careapp-tts-DefaultSpeaker(Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "dispositivo non connesso"

    const-string v0, "connection-lost"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/tts/DefaultSpeaker;->speak(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$3$com-texa-careapp-tts-DefaultSpeaker(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo p1, "viaggio terminato"

    const-string v0, "trip-end"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/tts/DefaultSpeaker;->speak(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
