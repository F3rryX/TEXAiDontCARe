.class public final synthetic Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/logging/LogcatLoggerTree$DoLog;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
