.class public Lcom/robotium/solo/Illustration;
.super Ljava/lang/Object;
.source "Illustration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/robotium/solo/Illustration$Builder;
    }
.end annotation


# instance fields
.field private final points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/PressurePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final toolType:I


# direct methods
.method private constructor <init>(Lcom/robotium/solo/Illustration$Builder;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/robotium/solo/Illustration$Builder;->access$000(Lcom/robotium/solo/Illustration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/robotium/solo/Illustration;->toolType:I

    .line 19
    invoke-static {p1}, Lcom/robotium/solo/Illustration$Builder;->access$100(Lcom/robotium/solo/Illustration$Builder;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/robotium/solo/Illustration;->points:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/robotium/solo/Illustration$Builder;Lcom/robotium/solo/Illustration$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/robotium/solo/Illustration;-><init>(Lcom/robotium/solo/Illustration$Builder;)V

    return-void
.end method


# virtual methods
.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/PressurePoint;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/robotium/solo/Illustration;->points:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getToolType()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/robotium/solo/Illustration;->toolType:I

    return v0
.end method
