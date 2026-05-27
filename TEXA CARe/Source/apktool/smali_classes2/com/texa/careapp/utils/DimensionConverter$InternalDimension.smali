.class Lcom/texa/careapp/utils/DimensionConverter$InternalDimension;
.super Ljava/lang/Object;
.source "DimensionConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/DimensionConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalDimension"
.end annotation


# instance fields
.field unit:I

.field value:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/texa/careapp/utils/DimensionConverter$InternalDimension;->value:F

    .line 73
    iput p2, p0, Lcom/texa/careapp/utils/DimensionConverter$InternalDimension;->unit:I

    return-void
.end method
