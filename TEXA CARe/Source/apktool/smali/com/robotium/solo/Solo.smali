.class public Lcom/robotium/solo/Solo;
.super Ljava/lang/Object;
.source "Solo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/robotium/solo/Solo$Config;
    }
.end annotation


# static fields
.field public static final CLOSED:I = 0x0

.field public static final DELETE:I = 0x43

.field public static final DOWN:I = 0x14

.field public static final ENTER:I = 0x42

.field public static final LANDSCAPE:I = 0x0

.field public static final LEFT:I = 0x15

.field public static final MENU:I = 0x52

.field public static final OPENED:I = 0x1

.field public static final PORTRAIT:I = 0x1

.field public static final RIGHT:I = 0x16

.field public static final UP:I = 0x13


# instance fields
.field protected final activityUtils:Lcom/robotium/solo/ActivityUtils;

.field protected final asserter:Lcom/robotium/solo/Asserter;

.field protected final checker:Lcom/robotium/solo/Checker;

.field protected final clicker:Lcom/robotium/solo/Clicker;

.field private final config:Lcom/robotium/solo/Solo$Config;

.field protected final dialogUtils:Lcom/robotium/solo/DialogUtils;

.field protected final getter:Lcom/robotium/solo/Getter;

.field protected final illustrator:Lcom/robotium/solo/Illustrator;

.field protected final instrumentation:Landroid/app/Instrumentation;

.field protected final presser:Lcom/robotium/solo/Presser;

.field protected final rotator:Lcom/robotium/solo/Rotator;

.field protected final screenshotTaker:Lcom/robotium/solo/ScreenshotTaker;

.field protected final scroller:Lcom/robotium/solo/Scroller;

.field protected final searcher:Lcom/robotium/solo/Searcher;

.field protected final sender:Lcom/robotium/solo/Sender;

.field protected final setter:Lcom/robotium/solo/Setter;

.field protected final sleeper:Lcom/robotium/solo/Sleeper;

.field protected final swiper:Lcom/robotium/solo/Swiper;

.field protected final systemUtils:Lcom/robotium/solo/SystemUtils;

.field protected final tapper:Lcom/robotium/solo/Tapper;

.field protected final textEnterer:Lcom/robotium/solo/TextEnterer;

.field protected final viewFetcher:Lcom/robotium/solo/ViewFetcher;

.field protected final waiter:Lcom/robotium/solo/Waiter;

.field protected webUrl:Ljava/lang/String;

.field protected final webUtils:Lcom/robotium/solo/WebUtils;

.field protected final zoomer:Lcom/robotium/solo/Zoomer;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 3

    .line 284
    new-instance v0, Lcom/robotium/solo/Solo$Config;

    invoke-direct {v0}, Lcom/robotium/solo/Solo$Config;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/robotium/solo/Solo;-><init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Landroid/app/Activity;)V

    .line 286
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Solo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;Landroid/app/Activity;)V
    .locals 3

    .line 99
    new-instance v0, Lcom/robotium/solo/Solo$Config;

    invoke-direct {v0}, Lcom/robotium/solo/Solo$Config;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/robotium/solo/Solo;-><init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Landroid/app/Activity;)V

    .line 101
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Solo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;Lcom/robotium/solo/Solo$Config;)V
    .locals 3

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p2, p1, v0}, Lcom/robotium/solo/Solo;-><init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Landroid/app/Activity;)V

    .line 116
    iget-boolean v0, p2, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p2, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Solo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;Lcom/robotium/solo/Solo$Config;Landroid/app/Activity;)V
    .locals 3

    .line 131
    invoke-direct {p0, p2, p1, p3}, Lcom/robotium/solo/Solo;-><init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Landroid/app/Activity;)V

    .line 133
    iget-boolean v0, p2, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p2, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Solo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v1, p3

    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 76
    iput-object v2, v0, Lcom/robotium/solo/Solo;->webUrl:Ljava/lang/String;

    .line 149
    iget-boolean v2, v7, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, v7, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Solo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v7, :cond_1

    .line 153
    new-instance v2, Lcom/robotium/solo/Solo$Config;

    invoke-direct {v2}, Lcom/robotium/solo/Solo$Config;-><init>()V

    goto :goto_0

    :cond_1
    move-object v2, v7

    :goto_0
    iput-object v2, v0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    .line 154
    iput-object v10, v0, Lcom/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    .line 155
    new-instance v11, Lcom/robotium/solo/Sleeper;

    iget v2, v7, Lcom/robotium/solo/Solo$Config;->sleepDuration:I

    iget v3, v7, Lcom/robotium/solo/Solo$Config;->sleepMiniDuration:I

    invoke-direct {v11, v2, v3}, Lcom/robotium/solo/Sleeper;-><init>(II)V

    iput-object v11, v0, Lcom/robotium/solo/Solo;->sleeper:Lcom/robotium/solo/Sleeper;

    .line 156
    new-instance v8, Lcom/robotium/solo/Sender;

    invoke-direct {v8, v10, v11}, Lcom/robotium/solo/Sender;-><init>(Landroid/app/Instrumentation;Lcom/robotium/solo/Sleeper;)V

    iput-object v8, v0, Lcom/robotium/solo/Solo;->sender:Lcom/robotium/solo/Sender;

    .line 157
    new-instance v12, Lcom/robotium/solo/ActivityUtils;

    invoke-direct {v12, v7, v10, v1, v11}, Lcom/robotium/solo/ActivityUtils;-><init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Landroid/app/Activity;Lcom/robotium/solo/Sleeper;)V

    iput-object v12, v0, Lcom/robotium/solo/Solo;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    .line 158
    new-instance v13, Lcom/robotium/solo/ViewFetcher;

    invoke-direct {v13, v10, v11}, Lcom/robotium/solo/ViewFetcher;-><init>(Landroid/app/Instrumentation;Lcom/robotium/solo/Sleeper;)V

    iput-object v13, v0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 159
    new-instance v9, Lcom/robotium/solo/ScreenshotTaker;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move-object v5, v13

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/robotium/solo/ScreenshotTaker;-><init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sleeper;)V

    iput-object v9, v0, Lcom/robotium/solo/Solo;->screenshotTaker:Lcom/robotium/solo/ScreenshotTaker;

    .line 160
    new-instance v14, Lcom/robotium/solo/DialogUtils;

    invoke-direct {v14, v10, v12, v13, v11}, Lcom/robotium/solo/DialogUtils;-><init>(Landroid/app/Instrumentation;Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sleeper;)V

    iput-object v14, v0, Lcom/robotium/solo/Solo;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    .line 161
    new-instance v9, Lcom/robotium/solo/WebUtils;

    invoke-direct {v9, v7, v10, v13, v11}, Lcom/robotium/solo/WebUtils;-><init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sleeper;)V

    iput-object v9, v0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    .line 162
    new-instance v6, Lcom/robotium/solo/Scroller;

    invoke-direct {v6, v7, v10, v13, v11}, Lcom/robotium/solo/Scroller;-><init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sleeper;)V

    iput-object v6, v0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    .line 163
    new-instance v5, Lcom/robotium/solo/Searcher;

    invoke-direct {v5, v13, v9, v6, v11}, Lcom/robotium/solo/Searcher;-><init>(Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/WebUtils;Lcom/robotium/solo/Scroller;Lcom/robotium/solo/Sleeper;)V

    iput-object v5, v0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    .line 164
    new-instance v15, Lcom/robotium/solo/Waiter;

    move-object v1, v15

    move-object/from16 v2, p2

    move-object v3, v12

    move-object v4, v13

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/robotium/solo/Waiter;-><init>(Landroid/app/Instrumentation;Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Searcher;Lcom/robotium/solo/Scroller;Lcom/robotium/solo/Sleeper;)V

    iput-object v15, v0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    .line 165
    new-instance v7, Lcom/robotium/solo/Getter;

    invoke-direct {v7, v10, v12, v15}, Lcom/robotium/solo/Getter;-><init>(Landroid/app/Instrumentation;Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/Waiter;)V

    iput-object v7, v0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    .line 166
    new-instance v6, Lcom/robotium/solo/Clicker;

    move-object v1, v6

    move-object v2, v12

    move-object v3, v13

    move-object v4, v8

    move-object/from16 v5, p2

    move-object v8, v6

    move-object v6, v11

    move-object/from16 v16, v11

    move-object v11, v7

    move-object v7, v15

    move-object v10, v8

    move-object v8, v9

    move-object v9, v14

    invoke-direct/range {v1 .. v9}, Lcom/robotium/solo/Clicker;-><init>(Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sender;Landroid/app/Instrumentation;Lcom/robotium/solo/Sleeper;Lcom/robotium/solo/Waiter;Lcom/robotium/solo/WebUtils;Lcom/robotium/solo/DialogUtils;)V

    iput-object v10, v0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    .line 167
    new-instance v1, Lcom/robotium/solo/Setter;

    invoke-direct {v1, v12, v11, v10, v15}, Lcom/robotium/solo/Setter;-><init>(Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/Getter;Lcom/robotium/solo/Clicker;Lcom/robotium/solo/Waiter;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->setter:Lcom/robotium/solo/Setter;

    .line 168
    new-instance v1, Lcom/robotium/solo/Asserter;

    invoke-direct {v1, v12, v15}, Lcom/robotium/solo/Asserter;-><init>(Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/Waiter;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->asserter:Lcom/robotium/solo/Asserter;

    .line 169
    new-instance v1, Lcom/robotium/solo/Checker;

    invoke-direct {v1, v13, v15}, Lcom/robotium/solo/Checker;-><init>(Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Waiter;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    .line 170
    new-instance v1, Lcom/robotium/solo/Zoomer;

    move-object/from16 v8, p2

    move-object v9, v10

    invoke-direct {v1, v8}, Lcom/robotium/solo/Zoomer;-><init>(Landroid/app/Instrumentation;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->zoomer:Lcom/robotium/solo/Zoomer;

    .line 171
    new-instance v1, Lcom/robotium/solo/Swiper;

    invoke-direct {v1, v8}, Lcom/robotium/solo/Swiper;-><init>(Landroid/app/Instrumentation;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->swiper:Lcom/robotium/solo/Swiper;

    .line 172
    new-instance v1, Lcom/robotium/solo/Tapper;

    invoke-direct {v1, v8}, Lcom/robotium/solo/Tapper;-><init>(Landroid/app/Instrumentation;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->tapper:Lcom/robotium/solo/Tapper;

    .line 173
    new-instance v1, Lcom/robotium/solo/Illustrator;

    invoke-direct {v1, v8}, Lcom/robotium/solo/Illustrator;-><init>(Landroid/app/Instrumentation;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->illustrator:Lcom/robotium/solo/Illustrator;

    .line 174
    new-instance v1, Lcom/robotium/solo/Rotator;

    invoke-direct {v1, v8}, Lcom/robotium/solo/Rotator;-><init>(Landroid/app/Instrumentation;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->rotator:Lcom/robotium/solo/Rotator;

    .line 175
    new-instance v10, Lcom/robotium/solo/Presser;

    move-object v1, v10

    move-object v2, v13

    move-object v3, v9

    move-object/from16 v4, p2

    move-object/from16 v5, v16

    move-object v6, v15

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/robotium/solo/Presser;-><init>(Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Clicker;Landroid/app/Instrumentation;Lcom/robotium/solo/Sleeper;Lcom/robotium/solo/Waiter;Lcom/robotium/solo/DialogUtils;)V

    iput-object v10, v0, Lcom/robotium/solo/Solo;->presser:Lcom/robotium/solo/Presser;

    .line 176
    new-instance v1, Lcom/robotium/solo/TextEnterer;

    invoke-direct {v1, v8, v9, v14}, Lcom/robotium/solo/TextEnterer;-><init>(Landroid/app/Instrumentation;Lcom/robotium/solo/Clicker;Lcom/robotium/solo/DialogUtils;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->textEnterer:Lcom/robotium/solo/TextEnterer;

    .line 177
    new-instance v1, Lcom/robotium/solo/SystemUtils;

    invoke-direct {v1, v8}, Lcom/robotium/solo/SystemUtils;-><init>(Landroid/app/Instrumentation;)V

    iput-object v1, v0, Lcom/robotium/solo/Solo;->systemUtils:Lcom/robotium/solo/SystemUtils;

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/robotium/solo/Solo;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 3963
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3964
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget v0, v0, Lcom/robotium/solo/Solo$Config;->timeout_large:I

    const-string v1, "solo_large_timeout"

    invoke-static {v1, v0}, Lcom/robotium/solo/Solo;->initializeTimeout(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/robotium/solo/Timeout;->setLargeTimeout(I)V

    .line 3968
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget v0, v0, Lcom/robotium/solo/Solo$Config;->timeout_small:I

    const-string v1, "solo_small_timeout"

    invoke-static {v1, v0}, Lcom/robotium/solo/Solo;->initializeTimeout(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/robotium/solo/Timeout;->setSmallTimeout(I)V

    return-void
.end method

.method private static initializeTimeout(Ljava/lang/String;I)I
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 3993
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 3994
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 3995
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3996
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method


# virtual methods
.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3

    .line 996
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertCurrentActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->asserter:Lcom/robotium/solo/Asserter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 3

    .line 1034
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertCurrentActivity(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->asserter:Lcom/robotium/solo/Asserter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 979
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertCurrentActivity(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->asserter:Lcom/robotium/solo/Asserter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1015
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertCurrentActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->asserter:Lcom/robotium/solo/Asserter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public assertMemoryNotLow()V
    .locals 2

    .line 1047
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "assertMemoryNotLow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->asserter:Lcom/robotium/solo/Asserter;

    invoke-virtual {v0}, Lcom/robotium/solo/Asserter;->assertMemoryNotLow()V

    return-void
.end method

.method public clearEditText(I)V
    .locals 3

    .line 2794
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearEditText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->textEnterer:Lcom/robotium/solo/TextEnterer;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/EditText;

    invoke-virtual {v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/TextEnterer;->setEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method public clearEditText(Landroid/widget/EditText;)V
    .locals 3

    .line 2808
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2809
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearEditText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2813
    iget-object v0, p0, Lcom/robotium/solo/Solo;->textEnterer:Lcom/robotium/solo/TextEnterer;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/TextEnterer;->setEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method public clearLog()V
    .locals 2

    .line 3759
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3760
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "clearLog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0}, Lcom/robotium/solo/Waiter;->clearLog()V

    return-void
.end method

.method public clearTextInWebElement(Lcom/robotium/solo/By;)V
    .locals 3

    .line 2823
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2824
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearTextInWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/WebUtils;->enterTextIntoWebElement(Lcom/robotium/solo/By;Ljava/lang/String;)V

    return-void
.end method

.method public clickInList(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1692
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickInList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Clicker;->clickInList(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickInList(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1709
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickInList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInList(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickInList(III)V
    .locals 8

    .line 1725
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickInList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInList(IIIZI)Ljava/util/ArrayList;

    return-void
.end method

.method public clickInRecyclerView(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1793
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickInRecyclerView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Clicker;->clickInRecyclerView(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickInRecyclerView(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1810
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickInRecyclerView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInRecyclerView(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickInRecyclerView(III)V
    .locals 8

    .line 1826
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickInRecyclerView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInRecyclerView(IIIZI)Ljava/util/ArrayList;

    return-void
.end method

.method public clickLongInList(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1741
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongInList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInList(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickLongInList(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1758
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongInList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInList(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickLongInList(III)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1776
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongInList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInList(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickLongInRecycleView(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1842
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongInRecycleView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInRecyclerView(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickLongInRecycleView(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongInRecycleView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInRecyclerView(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickLongInRecycleView(III)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1877
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongInRecycleView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickInRecyclerView(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickLongOnScreen(FF)V
    .locals 3

    .line 1171
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongOnScreen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/robotium/solo/Clicker;->clickLongOnScreen(FFILandroid/view/View;)V

    return-void
.end method

.method public clickLongOnScreen(FFI)V
    .locals 3

    .line 1187
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongOnScreen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/robotium/solo/Clicker;->clickLongOnScreen(FFILandroid/view/View;)V

    return-void
.end method

.method public clickLongOnText(Ljava/lang/String;)V
    .locals 8

    .line 1554
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongOnText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public clickLongOnText(Ljava/lang/String;I)V
    .locals 8

    .line 1570
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongOnText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public clickLongOnText(Ljava/lang/String;II)V
    .locals 8

    .line 1604
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongOnText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    move v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public clickLongOnText(Ljava/lang/String;IZ)V
    .locals 8

    .line 1587
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongOnText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public clickLongOnTextAndPress(Ljava/lang/String;I)V
    .locals 3

    .line 1620
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongOnTextAndPress(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Clicker;->clickLongOnTextAndPress(Ljava/lang/String;I)V

    return-void
.end method

.method public clickLongOnView(Landroid/view/View;)V
    .locals 3

    .line 1475
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongOnView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 1480
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    return-void
.end method

.method public clickLongOnView(Landroid/view/View;I)V
    .locals 3

    .line 1492
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLongOnView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    return-void
.end method

.method public clickOnActionBarHomeButton()V
    .locals 2

    .line 1903
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "clickOnActionBarHomeButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    new-instance v1, Lcom/robotium/solo/Solo$1;

    invoke-direct {v1, p0}, Lcom/robotium/solo/Solo$1;-><init>(Lcom/robotium/solo/Solo;)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clickOnActionBarItem(I)V
    .locals 3

    .line 1891
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnActionBarItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Clicker;->clickOnActionBarItem(I)V

    return-void
.end method

.method public clickOnButton(I)V
    .locals 3

    .line 1634
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnButton("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    return-void
.end method

.method public clickOnButton(Ljava/lang/String;)V
    .locals 3

    .line 1202
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public clickOnCheckBox(I)V
    .locals 3

    .line 1662
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnCheckBox("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const-class v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    return-void
.end method

.method public clickOnEditText(I)V
    .locals 3

    .line 1676
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnEditText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    return-void
.end method

.method public clickOnImage(I)V
    .locals 3

    .line 2837
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2838
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnImage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    return-void
.end method

.method public clickOnImageButton(I)V
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnImageButton("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const-class v1, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    return-void
.end method

.method public clickOnMenuItem(Ljava/lang/String;)V
    .locals 3

    .line 1246
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnMenuItem(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Clicker;->clickOnMenuItem(Ljava/lang/String;)V

    return-void
.end method

.method public clickOnMenuItem(Ljava/lang/String;Z)V
    .locals 3

    .line 1262
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnMenuItem(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Clicker;->clickOnMenuItem(Ljava/lang/String;Z)V

    return-void
.end method

.method public clickOnRadioButton(I)V
    .locals 3

    .line 1648
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnRadioButton("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const-class v1, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    return-void
.end method

.method public clickOnScreen(FF)V
    .locals 3

    .line 1135
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnScreen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 1140
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/robotium/solo/Clicker;->clickOnScreen(FFLandroid/view/View;)V

    return-void
.end method

.method public clickOnScreen(FFI)V
    .locals 4

    .line 1152
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnScreen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/robotium/solo/Solo;->tapper:Lcom/robotium/solo/Tapper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    invoke-virtual {v0, p3, v1}, Lcom/robotium/solo/Tapper;->generateTapGesture(I[Landroid/graphics/PointF;)V

    return-void

    .line 1157
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "clickOnScreen(float x, float y, int numberOfClicks) requires API level >= 14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clickOnText(Ljava/lang/String;)V
    .locals 8

    .line 1508
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public clickOnText(Ljava/lang/String;I)V
    .locals 8

    .line 1523
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public clickOnText(Ljava/lang/String;IZ)V
    .locals 8

    .line 1539
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public clickOnToggleButton(Ljava/lang/String;)V
    .locals 3

    .line 1231
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnToggleButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const-class v1, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public clickOnView(Landroid/view/View;)V
    .locals 3

    .line 1440
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 1445
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    return-void
.end method

.method public clickOnView(Landroid/view/View;Z)V
    .locals 3

    .line 1456
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 1461
    iget-object p2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {p2, p1}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    goto :goto_0

    .line 1463
    :cond_1
    iget-object p2, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 1464
    iget-object p2, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {p2, p1}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public clickOnWebElement(Lcom/robotium/solo/By;)V
    .locals 3

    .line 1293
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1297
    invoke-virtual {p0, p1, v0, v1}, Lcom/robotium/solo/Solo;->clickOnWebElement(Lcom/robotium/solo/By;IZ)V

    return-void
.end method

.method public clickOnWebElement(Lcom/robotium/solo/By;I)V
    .locals 3

    .line 1308
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1312
    invoke-virtual {p0, p1, p2, v0}, Lcom/robotium/solo/Solo;->clickOnWebElement(Lcom/robotium/solo/By;IZ)V

    return-void
.end method

.method public clickOnWebElement(Lcom/robotium/solo/By;IZ)V
    .locals 3

    .line 1324
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v1, v1, Lcom/robotium/solo/Solo$Config;->useJavaScriptToClickWebElements:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/robotium/solo/Clicker;->clickOnWebElement(Lcom/robotium/solo/By;IZZ)V

    return-void
.end method

.method public clickOnWebElement(Lcom/robotium/solo/WebElement;)V
    .locals 3

    .line 1276
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickOnWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "WebElement is null and can therefore not be clicked!"

    .line 1281
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {p1}, Lcom/robotium/solo/WebElement;->getLocationX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/robotium/solo/WebElement;->getLocationY()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/robotium/solo/Clicker;->clickOnScreen(FFLandroid/view/View;)V

    return-void
.end method

.method public createIllustrationBuilder()Lcom/robotium/solo/Illustration$Builder;
    .locals 2

    .line 1920
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "createIllustrationBuilder()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_0
    new-instance v0, Lcom/robotium/solo/Illustration$Builder;

    invoke-direct {v0}, Lcom/robotium/solo/Illustration$Builder;-><init>()V

    return-object v0
.end method

.method public drag(FFFFI)V
    .locals 10

    .line 1963
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/robotium/solo/DialogUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 1968
    iget-object v4, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/robotium/solo/Scroller;->drag(FFFFI)V

    return-void
.end method

.method public enterText(ILjava/lang/String;)V
    .locals 3

    .line 2665
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2666
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->textEnterer:Lcom/robotium/solo/TextEnterer;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/EditText;

    invoke-virtual {v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/TextEnterer;->setEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method public enterText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3

    .line 2680
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2681
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2685
    iget-object v0, p0, Lcom/robotium/solo/Solo;->textEnterer:Lcom/robotium/solo/TextEnterer;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/TextEnterer;->setEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method public enterTextInWebElement(Lcom/robotium/solo/By;Ljava/lang/String;)V
    .locals 3

    .line 2696
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterTextInWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Lcom/robotium/solo/Waiter;->waitForWebElement(Lcom/robotium/solo/By;IIZ)Lcom/robotium/solo/WebElement;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebElement with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 2703
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/WebUtils;->enterTextIntoWebElement(Lcom/robotium/solo/By;Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3821
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3822
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->finalize()V

    return-void
.end method

.method public finishOpenedActivities()V
    .locals 2

    .line 3833
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3834
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "finishOpenedActivities()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->finishOpenedActivities()V

    return-void
.end method

.method public getActivityMonitor()Landroid/app/Instrumentation$ActivityMonitor;
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "getActivityMonitor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->getActivityMonitor()Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 3

    .line 2867
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2868
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getButton("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    return-object p1
.end method

.method public getButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 2961
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2962
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    return-object p1
.end method

.method public getButton(Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 3

    .line 2978
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2979
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1, p2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    return-object p1
.end method

.method public getConfig()Lcom/robotium/solo/Solo$Config;
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "getConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "getCurrentActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViews()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 3225
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3226
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "getCurrentViews()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3240
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3241
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentViews("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentViews(Ljava/lang/Class;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3272
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3273
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentViews("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;ZLandroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3256
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3257
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentViews("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentViews(Ljava/lang/Class;ZLandroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3288
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3289
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentViews("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;ZLandroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentWebElements()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .line 3331
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3332
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "getCurrentWebElements()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/robotium/solo/WebUtils;->getWebElements(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebElements(Lcom/robotium/solo/By;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/robotium/solo/By;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .line 3346
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3347
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentWebElements("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/WebUtils;->getWebElements(Lcom/robotium/solo/By;Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 3

    .line 2852
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2853
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEditText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    return-object p1
.end method

.method public getEditText(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 3

    .line 2994
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2995
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEditText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    return-object p1
.end method

.method public getEditText(Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 3

    .line 3011
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3012
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEditText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    return-object p1
.end method

.method public getImage(I)Landroid/widget/ImageView;
    .locals 3

    .line 2897
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2898
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public getImageButton(I)Landroid/widget/ImageButton;
    .locals 3

    .line 2912
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2913
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageButton("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 3775
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3776
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Getter;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3791
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3792
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Getter;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(I)Landroid/widget/TextView;
    .locals 3

    .line 2882
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 2928
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2929
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public getText(Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 3

    .line 2945
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2946
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public getTopParent(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopParent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/ViewFetcher;->getTopParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(I)Landroid/view/View;
    .locals 3

    .line 3026
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3027
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 3030
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Solo;->getView(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(II)Landroid/view/View;
    .locals 5

    .line 3042
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    const-string v1, ")"

    if-eqz v0, :cond_0

    .line 3043
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Getter;->getView(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3050
    :try_start_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3052
    :catch_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v2, v2, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to get resource entry name for ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    :goto_0
    const/4 v2, 0x1

    add-int/2addr p2, v2

    const-string v3, "\', resource name: \'"

    if-le p2, v2, :cond_1

    .line 3057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Views with id: \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' are not found!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_1

    .line 3060
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View with id: \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getView(Ljava/lang/Class;I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 3159
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3160
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p2, p1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .line 3074
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3075
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 3078
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Solo;->getView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Ljava/lang/Object;I)Landroid/view/View;
    .locals 3

    .line 3090
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3091
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    if-le p2, v1, :cond_1

    .line 3099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Views with id: \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' are not found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 3102
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View with id: \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 3116
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3117
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 3120
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Solo;->getView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Ljava/lang/String;I)Landroid/view/View;
    .locals 3

    .line 3132
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3133
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->getter:Lcom/robotium/solo/Getter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    if-le p2, v1, :cond_1

    .line 3141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Views with id: \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' are not found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 3144
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View with id: \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v1, v1, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v1, v1, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v2, "getViews()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 334
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getViews(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "getViews()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 354
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWebElement(Lcom/robotium/solo/By;I)Lcom/robotium/solo/WebElement;
    .locals 4

    .line 3175
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3176
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 3180
    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/robotium/solo/Waiter;->waitForWebElement(Lcom/robotium/solo/By;IIZ)Lcom/robotium/solo/WebElement;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, ": \'"

    if-le p2, v0, :cond_1

    .line 3184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " WebElements with "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' are not found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 3187
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WebElement with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getWebElements()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .line 3302
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3303
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "getWebElements()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/WebUtils;->getWebElements(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebElements(Lcom/robotium/solo/By;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/robotium/solo/By;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .line 3317
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWebElements("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->webUtils:Lcom/robotium/solo/WebUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/WebUtils;->getWebElements(Lcom/robotium/solo/By;Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 3

    .line 3200
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "getWebUrl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v1, 0x0

    const-class v2, Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-nez v0, :cond_1

    const-string v1, "WebView is not found!"

    .line 3207
    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 3209
    :cond_1
    iget-object v1, p0, Lcom/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    new-instance v2, Lcom/robotium/solo/Solo$2;

    invoke-direct {v2, p0, v0}, Lcom/robotium/solo/Solo$2;-><init>(Lcom/robotium/solo/Solo;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 3214
    iget-object v0, p0, Lcom/robotium/solo/Solo;->webUrl:Ljava/lang/String;

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .line 1119
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "goBack()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lcom/robotium/solo/Solo;->hideSoftKeyboard()V

    .line 1124
    iget-object v0, p0, Lcom/robotium/solo/Solo;->sender:Lcom/robotium/solo/Sender;

    invoke-virtual {v0}, Lcom/robotium/solo/Sender;->goBack()V

    return-void
.end method

.method public goBackToActivity(Ljava/lang/String;)V
    .locals 3

    .line 3561
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3562
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goBackToActivity(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/ActivityUtils;->goBackToActivity(Ljava/lang/String;)V

    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 4

    .line 3511
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3512
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "hideSoftKeyboard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/robotium/solo/DialogUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    return-void
.end method

.method public illustrate(Lcom/robotium/solo/Illustration;)V
    .locals 3

    .line 1943
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illustrate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->illustrator:Lcom/robotium/solo/Illustrator;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Illustrator;->illustrate(Lcom/robotium/solo/Illustration;)V

    return-void
.end method

.method public isCheckBoxChecked(I)Z
    .locals 3

    .line 3394
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3395
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCheckBoxChecked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    const-class v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;I)Z

    move-result p1

    return p1
.end method

.method public isCheckBoxChecked(Ljava/lang/String;)Z
    .locals 3

    .line 3442
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3443
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCheckBoxChecked(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    const-class v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRadioButtonChecked(I)Z
    .locals 3

    .line 3362
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3363
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioButtonChecked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    const-class v1, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;I)Z

    move-result p1

    return p1
.end method

.method public isRadioButtonChecked(Ljava/lang/String;)Z
    .locals 3

    .line 3378
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3379
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioButtonChecked(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    const-class v1, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSpinnerTextSelected(ILjava/lang/String;)Z
    .locals 3

    .line 3499
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3500
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpinnerTextSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Checker;->isSpinnerTextSelected(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSpinnerTextSelected(Ljava/lang/String;)Z
    .locals 3

    .line 3482
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3483
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpinnerTextSelected(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Checker;->isSpinnerTextSelected(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isTextChecked(Ljava/lang/String;)Z
    .locals 5

    .line 3458
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3459
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTextChecked(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/CompoundButton;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/robotium/solo/Waiter;->waitForViews(Z[Ljava/lang/Class;)Z

    .line 3464
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v1, Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1, v4}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Checker;->isCheckedTextChecked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 3467
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v1, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1, v4}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    const-class v1, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v4

    :cond_2
    return v3
.end method

.method public isToggleButtonChecked(I)Z
    .locals 3

    .line 3426
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3427
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isToggleButtonChecked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    const-class v1, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;I)Z

    move-result p1

    return p1
.end method

.method public isToggleButtonChecked(Ljava/lang/String;)Z
    .locals 3

    .line 3410
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3411
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isToggleButtonChecked(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->checker:Lcom/robotium/solo/Checker;

    const-class v1, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pinchToZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    .line 2411
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2412
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pinchToZoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2418
    iget-object v0, p0, Lcom/robotium/solo/Solo;->zoomer:Lcom/robotium/solo/Zoomer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/robotium/solo/Zoomer;->generateZoomGesture(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void

    .line 2416
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "pinchToZoom() requires API level >= 14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pressMenuItem(I)V
    .locals 3

    .line 1340
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pressMenuItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->presser:Lcom/robotium/solo/Presser;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Presser;->pressMenuItem(I)V

    return-void
.end method

.method public pressMenuItem(II)V
    .locals 3

    .line 1357
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pressMenuItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->presser:Lcom/robotium/solo/Presser;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Presser;->pressMenuItem(II)V

    return-void
.end method

.method public pressSoftKeyboardDoneButton()V
    .locals 2

    .line 1409
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "pressSoftKeyboardDoneButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->presser:Lcom/robotium/solo/Presser;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Presser;->pressSoftKeyboard(I)V

    return-void
.end method

.method public pressSoftKeyboardGoButton()V
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "pressSoftKeyboardGoButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->presser:Lcom/robotium/solo/Presser;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Presser;->pressSoftKeyboard(I)V

    return-void
.end method

.method public pressSoftKeyboardNextButton()V
    .locals 2

    .line 1373
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "pressSoftKeyboardNextButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->presser:Lcom/robotium/solo/Presser;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Presser;->pressSoftKeyboard(I)V

    return-void
.end method

.method public pressSoftKeyboardSearchButton()V
    .locals 2

    .line 1385
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "pressSoftKeyboardSearchButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->presser:Lcom/robotium/solo/Presser;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Presser;->pressSoftKeyboard(I)V

    return-void
.end method

.method public pressSpinnerItem(II)V
    .locals 3

    .line 1426
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pressSpinnerItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->presser:Lcom/robotium/solo/Presser;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Presser;->pressSpinnerItem(II)V

    return-void
.end method

.method public rotateLarge(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    .line 2452
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateLarge("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2459
    iget-object v0, p0, Lcom/robotium/solo/Solo;->rotator:Lcom/robotium/solo/Rotator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/robotium/solo/Rotator;->generateRotateGesture(ILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void

    .line 2457
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "rotateLarge(PointF center1, PointF center2) requires API level >= 14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rotateSmall(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    .line 2471
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateSmall("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2478
    iget-object v0, p0, Lcom/robotium/solo/Solo;->rotator:Lcom/robotium/solo/Rotator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/robotium/solo/Rotator;->generateRotateGesture(ILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void

    .line 2476
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "rotateSmall(PointF center1, PointF center2) requires API level >= 14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scrollDown()Z
    .locals 8

    .line 1980
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "scrollDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(ZI)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 1987
    iget-object v5, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/widget/AbsListView;

    aput-object v7, v6, v2

    const-class v7, Landroid/widget/ScrollView;

    aput-object v7, v6, v1

    const-class v7, Landroid/webkit/WebView;

    aput-object v7, v6, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {v5, v1, v6}, Lcom/robotium/solo/Waiter;->waitForViews(Z[Ljava/lang/Class;)Z

    goto :goto_0

    .line 1990
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/AbsListView;

    aput-object v5, v4, v2

    const-class v5, Landroid/widget/ScrollView;

    aput-object v5, v4, v1

    const-class v5, Landroid/webkit/WebView;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Lcom/robotium/solo/Waiter;->waitForViews(Z[Ljava/lang/Class;)Z

    .line 1992
    :goto_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v0, v2}, Lcom/robotium/solo/Scroller;->scroll(I)Z

    move-result v0

    return v0
.end method

.method public scrollDownList(I)Z
    .locals 3

    .line 2127
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollDownList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result p1

    return p1
.end method

.method public scrollDownList(Landroid/widget/AbsListView;)Z
    .locals 3

    .line 2067
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollDownList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result p1

    return p1
.end method

.method public scrollDownRecyclerView(I)Z
    .locals 3

    .line 2218
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollDownRecyclerView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->shouldScroll:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 2226
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(II)Landroid/view/ViewGroup;

    move-result-object p1

    .line 2228
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Scroller;->scrollView(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public scrollListToBottom(I)Z
    .locals 3

    .line 2142
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollListToBottom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result p1

    return p1
.end method

.method public scrollListToBottom(Landroid/widget/AbsListView;)Z
    .locals 3

    .line 2082
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollListToBottom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result p1

    return p1
.end method

.method public scrollListToLine(II)V
    .locals 3

    .line 2202
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2203
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollListToLine("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/AbsListView;

    invoke-virtual {v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public scrollListToLine(Landroid/widget/AbsListView;I)V
    .locals 3

    .line 2187
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollListToLine("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public scrollListToTop(I)Z
    .locals 3

    .line 2172
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollListToTop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result p1

    return p1
.end method

.method public scrollListToTop(Landroid/widget/AbsListView;)Z
    .locals 3

    .line 2112
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollListToTop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result p1

    return p1
.end method

.method public scrollRecyclerViewToBottom(I)Z
    .locals 3

    .line 2240
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2241
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollRecyclerViewToBottom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->shouldScroll:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 2248
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(II)Landroid/view/ViewGroup;

    move-result-object p1

    .line 2250
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Scroller;->scrollViewAllTheWay(Landroid/view/View;I)V

    return v1
.end method

.method public scrollRecyclerViewToTop(I)Z
    .locals 3

    .line 2284
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2285
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollRecyclerViewToTop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->shouldScroll:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2292
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(II)Landroid/view/ViewGroup;

    move-result-object p1

    .line 2294
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/robotium/solo/Scroller;->scrollViewAllTheWay(Landroid/view/View;I)V

    return v1
.end method

.method public scrollToBottom()V
    .locals 8

    .line 2001
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "scrollToBottom()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(ZI)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 2007
    iget-object v5, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/widget/AbsListView;

    aput-object v7, v6, v2

    const-class v7, Landroid/widget/ScrollView;

    aput-object v7, v6, v1

    const-class v7, Landroid/webkit/WebView;

    aput-object v7, v6, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {v5, v1, v6}, Lcom/robotium/solo/Waiter;->waitForViews(Z[Ljava/lang/Class;)Z

    goto :goto_0

    .line 2010
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/AbsListView;

    aput-object v5, v4, v2

    const-class v5, Landroid/widget/ScrollView;

    aput-object v5, v4, v1

    const-class v5, Landroid/webkit/WebView;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Lcom/robotium/solo/Waiter;->waitForViews(Z[Ljava/lang/Class;)Z

    .line 2012
    :goto_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v0, v2, v1}, Lcom/robotium/solo/Scroller;->scroll(IZ)Z

    return-void
.end method

.method public scrollToSide(I)V
    .locals 3

    .line 2340
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2341
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToSide("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v0, 0x3f400000    # 0.75f

    .line 2344
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Solo;->scrollToSide(IF)V

    return-void
.end method

.method public scrollToSide(IF)V
    .locals 3

    .line 2326
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2327
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToSide("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x14

    .line 2330
    invoke-virtual {p0, p1, p2, v0}, Lcom/robotium/solo/Solo;->scrollToSide(IFI)V

    return-void
.end method

.method public scrollToSide(IFI)V
    .locals 3

    .line 2308
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2309
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToSide("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2313
    :cond_1
    iget-object p1, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    sget-object v0, Lcom/robotium/solo/Scroller$Side;->RIGHT:Lcom/robotium/solo/Scroller$Side;

    invoke-virtual {p1, v0, p2, p3}, Lcom/robotium/solo/Scroller;->scrollToSide(Lcom/robotium/solo/Scroller$Side;FI)V

    goto :goto_0

    .line 2314
    :cond_2
    iget-object p1, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    sget-object v0, Lcom/robotium/solo/Scroller$Side;->LEFT:Lcom/robotium/solo/Scroller$Side;

    invoke-virtual {p1, v0, p2, p3}, Lcom/robotium/solo/Scroller;->scrollToSide(Lcom/robotium/solo/Scroller$Side;FI)V

    :goto_0
    return-void
.end method

.method public scrollToTop()V
    .locals 8

    .line 2045
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "scrollToTop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(ZI)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 2051
    iget-object v5, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/widget/AbsListView;

    aput-object v7, v6, v2

    const-class v2, Landroid/widget/ScrollView;

    aput-object v2, v6, v1

    const-class v2, Landroid/webkit/WebView;

    aput-object v2, v6, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {v5, v1, v6}, Lcom/robotium/solo/Waiter;->waitForViews(Z[Ljava/lang/Class;)Z

    goto :goto_0

    .line 2054
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/AbsListView;

    aput-object v5, v4, v2

    const-class v2, Landroid/widget/ScrollView;

    aput-object v2, v4, v1

    const-class v2, Landroid/webkit/WebView;

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Lcom/robotium/solo/Waiter;->waitForViews(Z[Ljava/lang/Class;)Z

    .line 2056
    :goto_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v0, v1, v1}, Lcom/robotium/solo/Scroller;->scroll(IZ)Z

    return-void
.end method

.method public scrollUp()Z
    .locals 8

    .line 2025
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "scrollUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(ZI)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 2031
    iget-object v5, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/widget/AbsListView;

    aput-object v7, v6, v2

    const-class v2, Landroid/widget/ScrollView;

    aput-object v2, v6, v1

    const-class v2, Landroid/webkit/WebView;

    aput-object v2, v6, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {v5, v1, v6}, Lcom/robotium/solo/Waiter;->waitForViews(Z[Ljava/lang/Class;)Z

    goto :goto_0

    .line 2034
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/AbsListView;

    aput-object v5, v4, v2

    const-class v2, Landroid/widget/ScrollView;

    aput-object v2, v4, v1

    const-class v2, Landroid/webkit/WebView;

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Lcom/robotium/solo/Waiter;->waitForViews(Z[Ljava/lang/Class;)Z

    .line 2036
    :goto_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Scroller;->scroll(I)Z

    move-result v0

    return v0
.end method

.method public scrollUpList(I)Z
    .locals 3

    .line 2157
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollUpList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result p1

    return p1
.end method

.method public scrollUpList(Landroid/widget/AbsListView;)Z
    .locals 3

    .line 2097
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollUpList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result p1

    return p1
.end method

.method public scrollUpRecyclerView(I)Z
    .locals 3

    .line 2263
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollUpRecyclerView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->shouldScroll:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 2271
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(II)Landroid/view/ViewGroup;

    move-result-object p1

    .line 2273
    iget-object v0, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Scroller;->scrollView(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public scrollViewToSide(Landroid/view/View;I)V
    .locals 3

    .line 2393
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollViewToSide("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x3f333333    # 0.7f

    .line 2397
    invoke-virtual {p0, p1, p2, v0}, Lcom/robotium/solo/Solo;->scrollViewToSide(Landroid/view/View;IF)V

    return-void
.end method

.method public scrollViewToSide(Landroid/view/View;IF)V
    .locals 3

    .line 2378
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollViewToSide("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x14

    .line 2382
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/robotium/solo/Solo;->scrollViewToSide(Landroid/view/View;IFI)V

    return-void
.end method

.method public scrollViewToSide(Landroid/view/View;IFI)V
    .locals 3

    .line 2357
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollViewToSide("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :cond_0
    invoke-virtual {p0, p1}, Lcom/robotium/solo/Solo;->waitForView(Landroid/view/View;)Z

    .line 2362
    iget-object v0, p0, Lcom/robotium/solo/Solo;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleep()V

    const/16 v0, 0x15

    if-eq p2, v0, :cond_2

    const/16 v0, 0x16

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 2364
    :cond_1
    iget-object p2, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    sget-object v0, Lcom/robotium/solo/Scroller$Side;->RIGHT:Lcom/robotium/solo/Scroller$Side;

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/robotium/solo/Scroller;->scrollViewToSide(Landroid/view/View;Lcom/robotium/solo/Scroller$Side;FI)V

    goto :goto_0

    .line 2365
    :cond_2
    iget-object p2, p0, Lcom/robotium/solo/Solo;->scroller:Lcom/robotium/solo/Scroller;

    sget-object v0, Lcom/robotium/solo/Scroller$Side;->LEFT:Lcom/robotium/solo/Scroller$Side;

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/robotium/solo/Scroller;->scrollViewToSide(Landroid/view/View;Lcom/robotium/solo/Scroller$Side;FI)V

    :goto_0
    return-void
.end method

.method public searchButton(Ljava/lang/String;)Z
    .locals 8

    .line 749
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/Button;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchButton(Ljava/lang/String;I)Z
    .locals 8

    .line 801
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/Button;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchButton(Ljava/lang/String;IZ)Z
    .locals 8

    .line 821
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/Button;

    const/4 v6, 0x1

    move-object v4, p1

    move v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchButton(Ljava/lang/String;Z)Z
    .locals 8

    .line 766
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/Button;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchEditText(Ljava/lang/String;)Z
    .locals 8

    .line 732
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchEditText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/EditText;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchText(Ljava/lang/String;)Z
    .locals 8

    .line 856
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchText(Ljava/lang/String;I)Z
    .locals 8

    .line 892
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/TextView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchText(Ljava/lang/String;IZ)Z
    .locals 8

    .line 912
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchText(Ljava/lang/String;IZZ)Z
    .locals 8

    .line 933
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/TextView;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchText(Ljava/lang/String;Z)Z
    .locals 8

    .line 873
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchToggleButton(Ljava/lang/String;)Z
    .locals 8

    .line 782
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchToggleButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public searchToggleButton(Ljava/lang/String;I)Z
    .locals 8

    .line 840
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchToggleButton(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->searcher:Lcom/robotium/solo/Searcher;

    const-class v3, Landroid/widget/ToggleButton;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method public sendKey(I)V
    .locals 3

    .line 3547
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3548
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendKey("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->sender:Lcom/robotium/solo/Sender;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Sender;->sendKeyCode(I)V

    return-void
.end method

.method public setActivityOrientation(I)V
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivityOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/ActivityUtils;->setActivityOrientation(I)V

    return-void
.end method

.method public setDatePicker(IIII)V
    .locals 3

    .line 2522
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2523
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDatePicker("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v1, Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/DatePicker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/robotium/solo/Solo;->setDatePicker(Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public setDatePicker(Landroid/widget/DatePicker;III)V
    .locals 3

    .line 2539
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDatePicker("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/DatePicker;

    .line 2544
    iget-object v0, p0, Lcom/robotium/solo/Solo;->setter:Lcom/robotium/solo/Setter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/robotium/solo/Setter;->setDatePicker(Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public setMobileData(Ljava/lang/Boolean;)V
    .locals 3

    .line 2489
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2490
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->systemUtils:Lcom/robotium/solo/SystemUtils;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/SystemUtils;->setMobileData(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNavigationDrawer(I)V
    .locals 3

    .line 2618
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNavigationDrawer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->setter:Lcom/robotium/solo/Setter;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Setter;->setNavigationDrawer(I)V

    return-void
.end method

.method public setProgressBar(II)V
    .locals 3

    .line 2588
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgressBar("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v1, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, p2}, Lcom/robotium/solo/Solo;->setProgressBar(Landroid/widget/ProgressBar;I)V

    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;I)V
    .locals 3

    .line 2603
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2604
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgressBar("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 2608
    iget-object v0, p0, Lcom/robotium/solo/Solo;->setter:Lcom/robotium/solo/Setter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Setter;->setProgressBar(Landroid/widget/ProgressBar;I)V

    return-void
.end method

.method public setSlidingDrawer(II)V
    .locals 3

    .line 2633
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlidingDrawer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v1, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SlidingDrawer;

    invoke-virtual {p0, p1, p2}, Lcom/robotium/solo/Solo;->setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V

    return-void
.end method

.method public setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V
    .locals 3

    .line 2649
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlidingDrawer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SlidingDrawer;

    .line 2654
    iget-object v0, p0, Lcom/robotium/solo/Solo;->setter:Lcom/robotium/solo/Setter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Setter;->setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V

    return-void
.end method

.method public setTimePicker(III)V
    .locals 3

    .line 2556
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimePicker("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v1, Landroid/widget/TimePicker;

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TimePicker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/robotium/solo/Solo;->setTimePicker(Landroid/widget/TimePicker;II)V

    return-void
.end method

.method public setTimePicker(Landroid/widget/TimePicker;II)V
    .locals 3

    .line 2572
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimePicker("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TimePicker;

    .line 2577
    iget-object v0, p0, Lcom/robotium/solo/Solo;->setter:Lcom/robotium/solo/Setter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/robotium/solo/Setter;->setTimePicker(Landroid/widget/TimePicker;II)V

    return-void
.end method

.method public setWiFiData(Ljava/lang/Boolean;)V
    .locals 3

    .line 2504
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWiFiData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->systemUtils:Lcom/robotium/solo/SystemUtils;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/SystemUtils;->setWiFiData(Ljava/lang/Boolean;)V

    return-void
.end method

.method public sleep(I)V
    .locals 3

    .line 3806
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3807
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    return-void
.end method

.method public startScreenshotSequence(Ljava/lang/String;)V
    .locals 3

    .line 3901
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3902
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScreenshotSequence(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x50

    const/16 v1, 0x190

    const/16 v2, 0x64

    .line 3905
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/robotium/solo/Solo;->startScreenshotSequence(Ljava/lang/String;III)V

    return-void
.end method

.method public startScreenshotSequence(Ljava/lang/String;III)V
    .locals 3

    .line 3935
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3936
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScreenshotSequence(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->screenshotTaker:Lcom/robotium/solo/ScreenshotTaker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/robotium/solo/ScreenshotTaker;->startScreenshotSequence(Ljava/lang/String;III)V

    return-void
.end method

.method public stopScreenshotSequence()V
    .locals 2

    .line 3950
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3951
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "stopScreenshotSequence()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->screenshotTaker:Lcom/robotium/solo/ScreenshotTaker;

    invoke-virtual {v0}, Lcom/robotium/solo/ScreenshotTaker;->stopScreenshotSequence()V

    return-void
.end method

.method public swipe(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    .line 2432
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2433
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swipe("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2439
    iget-object v0, p0, Lcom/robotium/solo/Solo;->swiper:Lcom/robotium/solo/Swiper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/robotium/solo/Swiper;->generateSwipeGesture(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void

    .line 2437
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "swipe() requires API level >= 14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public takeScreenshot()V
    .locals 2

    .line 3846
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3847
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string v1, "takeScreenshot()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 3850
    invoke-virtual {p0, v0}, Lcom/robotium/solo/Solo;->takeScreenshot(Ljava/lang/String;)V

    return-void
.end method

.method public takeScreenshot(Ljava/lang/String;)V
    .locals 3

    .line 3861
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3862
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeScreenshot(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x64

    .line 3865
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Solo;->takeScreenshot(Ljava/lang/String;I)V

    return-void
.end method

.method public takeScreenshot(Ljava/lang/String;I)V
    .locals 3

    .line 3877
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3878
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeScreenshot(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->screenshotTaker:Lcom/robotium/solo/ScreenshotTaker;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/ScreenshotTaker;->takeScreenshot(Ljava/lang/String;I)V

    return-void
.end method

.method public typeText(ILjava/lang/String;)V
    .locals 3

    .line 2714
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2715
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "typeText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->textEnterer:Lcom/robotium/solo/TextEnterer;

    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/EditText;

    invoke-virtual {v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/TextEnterer;->typeText(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method public typeText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3

    .line 2729
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2730
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "typeText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2734
    iget-object v0, p0, Lcom/robotium/solo/Solo;->textEnterer:Lcom/robotium/solo/TextEnterer;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/TextEnterer;->typeText(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method public typeTextInWebElement(Lcom/robotium/solo/By;Ljava/lang/String;)V
    .locals 3

    .line 2745
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2746
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "typeTextInWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 2749
    invoke-virtual {p0, p1, p2, v0}, Lcom/robotium/solo/Solo;->typeTextInWebElement(Lcom/robotium/solo/By;Ljava/lang/String;I)V

    return-void
.end method

.method public typeTextInWebElement(Lcom/robotium/solo/By;Ljava/lang/String;I)V
    .locals 3

    .line 2761
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2762
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "typeTextInWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p3, v2, v1}, Lcom/robotium/solo/Clicker;->clickOnWebElement(Lcom/robotium/solo/By;IZZ)V

    .line 2766
    iget-object p1, p0, Lcom/robotium/solo/Solo;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v2, v2}, Lcom/robotium/solo/DialogUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 2767
    iget-object p1, p0, Lcom/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p1, p2}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    return-void
.end method

.method public typeTextInWebElement(Lcom/robotium/solo/WebElement;Ljava/lang/String;)V
    .locals 3

    .line 2778
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 2779
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "typeTextInWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_0
    invoke-virtual {p0, p1}, Lcom/robotium/solo/Solo;->clickOnWebElement(Lcom/robotium/solo/WebElement;)V

    .line 2783
    iget-object p1, p0, Lcom/robotium/solo/Solo;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/robotium/solo/DialogUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 2784
    iget-object p1, p0, Lcom/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p1, p2}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    return-void
.end method

.method public unlockScreen()V
    .locals 3

    .line 3523
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3524
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string/jumbo v1, "unlockScreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    .line 3528
    iget-object v1, p0, Lcom/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    new-instance v2, Lcom/robotium/solo/Solo$3;

    invoke-direct {v2, p0, v0}, Lcom/robotium/solo/Solo$3;-><init>(Lcom/robotium/solo/Solo;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public waitForActivity(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .line 3608
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3609
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForActivity(Ljava/lang/Class;I)Z

    move-result p1

    return p1
.end method

.method public waitForActivity(Ljava/lang/Class;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)Z"
        }
    .end annotation

    .line 3625
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3626
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Waiter;->waitForActivity(Ljava/lang/Class;I)Z

    move-result p1

    return p1
.end method

.method public waitForActivity(Ljava/lang/String;)Z
    .locals 3

    .line 3576
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3577
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForActivity(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForActivity(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public waitForActivity(Ljava/lang/String;I)Z
    .locals 3

    .line 3593
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3594
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForActivity(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Waiter;->waitForActivity(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public waitForCondition(Lcom/robotium/solo/Condition;I)Z
    .locals 3

    .line 717
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForCondition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Waiter;->waitForCondition(Lcom/robotium/solo/Condition;I)Z

    move-result p1

    return p1
.end method

.method public waitForDialogToClose()Z
    .locals 3

    .line 1075
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string/jumbo v1, "waitForDialogToClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/DialogUtils;->waitForDialogToClose(J)Z

    move-result v0

    return v0
.end method

.method public waitForDialogToClose(J)Z
    .locals 3

    .line 1105
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForDialogToClose("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/DialogUtils;->waitForDialogToClose(J)Z

    move-result p1

    return p1
.end method

.method public waitForDialogToOpen()Z
    .locals 4

    .line 1061
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const-string/jumbo v1, "waitForDialogToOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z

    move-result v0

    return v0
.end method

.method public waitForDialogToOpen(J)Z
    .locals 3

    .line 1090
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForDialogToOpen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z

    move-result p1

    return p1
.end method

.method public waitForEmptyActivityStack(I)Z
    .locals 3

    .line 3642
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3643
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForEmptyActivityStack("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    new-instance v1, Lcom/robotium/solo/Solo$4;

    invoke-direct {v1, p0}, Lcom/robotium/solo/Solo$4;-><init>(Lcom/robotium/solo/Solo;)V

    invoke-virtual {v0, v1, p1}, Lcom/robotium/solo/Waiter;->waitForCondition(Lcom/robotium/solo/Condition;I)Z

    move-result p1

    return p1
.end method

.method public waitForFragmentById(I)Z
    .locals 3

    .line 3694
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3695
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForFragmentById("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForFragment(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public waitForFragmentById(II)Z
    .locals 3

    .line 3710
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3711
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForFragmentById("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/robotium/solo/Waiter;->waitForFragment(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public waitForFragmentByTag(Ljava/lang/String;)Z
    .locals 3

    .line 3663
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3664
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForFragmentByTag(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/robotium/solo/Waiter;->waitForFragment(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public waitForFragmentByTag(Ljava/lang/String;I)Z
    .locals 3

    .line 3679
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3680
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForFragmentByTag(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/robotium/solo/Waiter;->waitForFragment(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public waitForLogMessage(Ljava/lang/String;)Z
    .locals 3

    .line 3728
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3729
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForLogMessage(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForLogMessage(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public waitForLogMessage(Ljava/lang/String;I)Z
    .locals 3

    .line 3747
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 3748
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForLogMessage(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2}, Lcom/robotium/solo/Waiter;->waitForLogMessage(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public waitForText(Ljava/lang/String;)Z
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public waitForText(Ljava/lang/String;IJ)Z
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJ)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public waitForText(Ljava/lang/String;IJZ)Z
    .locals 8

    .line 418
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public waitForText(Ljava/lang/String;IJZZ)Z
    .locals 12

    move-object v0, p0

    .line 437
    iget-object v1, v0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v1, v1, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, v0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v1, v1, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForText(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v7, p3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v3, p1

    move v6, p2

    move-wide v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    .line 441
    :goto_0
    iget-object v4, v0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v11, 0x1

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public waitForView(I)Z
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 456
    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/robotium/solo/Solo;->waitForView(IIIZ)Z

    move-result p1

    return p1
.end method

.method public waitForView(III)Z
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 473
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/robotium/solo/Solo;->waitForView(IIIZ)Z

    move-result p1

    return p1
.end method

.method public waitForView(IIIZ)Z
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1

    const/4 p2, 0x0

    .line 496
    :cond_1
    iget-object v2, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/robotium/solo/Waiter;->waitForView(IIIZ)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public waitForView(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public waitForView(Landroid/view/View;IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "IZ)Z"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    xor-int/lit8 v0, p3, 0x1

    .line 605
    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;IZZ)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public waitForView(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IIZ)Z

    move-result p1

    return p1
.end method

.method public waitForView(Ljava/lang/Class;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;II)Z"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ge p2, v0, :cond_1

    const/4 p2, 0x0

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IIZ)Z

    move-result p1

    return p1
.end method

.method public waitForView(Ljava/lang/Class;IIZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;IIZ)Z"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ge p2, v0, :cond_1

    const/4 p2, 0x0

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IIZ)Z

    move-result p1

    return p1
.end method

.method public waitForView(Ljava/lang/Object;)Z
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 511
    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/robotium/solo/Solo;->waitForView(Ljava/lang/Object;IIZ)Z

    move-result p1

    return p1
.end method

.method public waitForView(Ljava/lang/Object;II)Z
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 528
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/robotium/solo/Solo;->waitForView(Ljava/lang/Object;IIZ)Z

    move-result p1

    return p1
.end method

.method public waitForView(Ljava/lang/Object;IIZ)Z
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1

    const/4 p2, 0x0

    .line 552
    :cond_1
    iget-object v2, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/robotium/solo/Waiter;->waitForView(Ljava/lang/Object;IIZ)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public waitForWebElement(Lcom/robotium/solo/By;)Z
    .locals 4

    .line 666
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/robotium/solo/Waiter;->waitForWebElement(Lcom/robotium/solo/By;IIZ)Lcom/robotium/solo/WebElement;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public waitForWebElement(Lcom/robotium/solo/By;IIZ)Z
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/robotium/solo/Waiter;->waitForWebElement(Lcom/robotium/solo/By;IIZ)Lcom/robotium/solo/WebElement;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public waitForWebElement(Lcom/robotium/solo/By;IZ)Z
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/robotium/solo/Solo;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForWebElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Solo;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/robotium/solo/Waiter;->waitForWebElement(Lcom/robotium/solo/By;IIZ)Lcom/robotium/solo/WebElement;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
