.class public final Lcom/activeandroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static sEnabled:Z = false

.field private static sTag:Ljava/lang/String; = "ActiveAndroid"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    .line 79
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 86
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 100
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 93
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    .line 163
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 170
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 184
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 177
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    .line 107
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 114
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 128
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 121
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnabled()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    return v0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    return v0
.end method

.method public static setEnabled(Z)V
    .locals 0

    .line 43
    sput-boolean p0, Lcom/activeandroid/util/Log;->sEnabled:Z

    return-void
.end method

.method public static varargs t(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    .line 191
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "test"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1

    .line 51
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 58
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 72
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 65
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1

    .line 135
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 142
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 156
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 149
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
