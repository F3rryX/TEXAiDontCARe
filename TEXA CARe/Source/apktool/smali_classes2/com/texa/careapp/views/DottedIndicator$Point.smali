.class final Lcom/texa/careapp/views/DottedIndicator$Point;
.super Ljava/lang/Object;
.source "DottedIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/views/DottedIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Point"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/views/DottedIndicator;

.field public x:F

.field public y:F


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/DottedIndicator;FF)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/careapp/views/DottedIndicator$Point;->this$0:Lcom/texa/careapp/views/DottedIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p2, p0, Lcom/texa/careapp/views/DottedIndicator$Point;->x:F

    .line 82
    iput p3, p0, Lcom/texa/careapp/views/DottedIndicator$Point;->y:F

    return-void
.end method
