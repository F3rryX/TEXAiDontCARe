.class public final enum Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;
.super Ljava/lang/Enum;
.source "BaseScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/score/BaseScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrivingProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

.field public static final enum CHAUFFEUR:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

.field public static final enum EXPERIENCED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

.field public static final enum NEWBIE:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

.field public static final enum UNDEFINED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 224
    new-instance v0, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->UNDEFINED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    .line 225
    new-instance v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    const-string v3, "CHAUFFEUR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->CHAUFFEUR:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    .line 226
    new-instance v3, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    const-string v5, "EXPERIENCED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->EXPERIENCED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    .line 227
    new-instance v5, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    const-string v7, "NEWBIE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->NEWBIE:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 223
    sput-object v7, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->$VALUES:[Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 232
    iput p3, p0, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;
    .locals 1

    .line 223
    const-class v0, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    return-object p0
.end method

.method public static values()[Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;
    .locals 1

    .line 223
    sget-object v0, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->$VALUES:[Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v0}, [Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    return-object v0
.end method


# virtual methods
.method public getNumericType()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->type:I

    return v0
.end method
