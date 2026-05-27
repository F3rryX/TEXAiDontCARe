.class public final Lcom/eftimoff/mylibrary/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eftimoff/mylibrary/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PathView:[I

.field public static final PathView_pathColor:I = 0x0

.field public static final PathView_pathWidth:I = 0x1

.field public static final PathView_svg:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/eftimoff/mylibrary/R$styleable;->PathView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0401d3
        0x7f0401d4
        0x7f040227
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
