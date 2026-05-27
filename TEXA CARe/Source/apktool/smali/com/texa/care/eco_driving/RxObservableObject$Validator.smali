.class public Lcom/texa/care/eco_driving/RxObservableObject$Validator;
.super Ljava/lang/Object;
.source "RxObservableObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/RxObservableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Validator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/care/eco_driving/RxObservableObject;


# direct methods
.method public constructor <init>(Lcom/texa/care/eco_driving/RxObservableObject;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/texa/care/eco_driving/RxObservableObject$Validator;->this$0:Lcom/texa/care/eco_driving/RxObservableObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
