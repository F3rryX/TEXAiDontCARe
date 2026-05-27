.class public final Llombok/launch/PatchFixesHider$LombokDeps;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LombokDeps"
.end annotation


# static fields
.field public static final ADD_LOMBOK_NOTES:Ljava/lang/reflect/Method;

.field public static final POST_COMPILER_BUFFEREDOUTPUTSTREAM_STRING_STRING:Ljava/lang/reflect/Method;

.field public static final POST_COMPILER_BYTES_STRING:Ljava/lang/reflect/Method;

.field public static final POST_COMPILER_OUTPUTSTREAM:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "lombok.eclipse.agent.PatchFixesShadowLoaded"

    .line 143
    invoke-static {v0}, Llombok/launch/PatchFixesHider$Util;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 144
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "addLombokNotesToEclipseAboutDialog"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$LombokDeps;->ADD_LOMBOK_NOTES:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    .line 145
    const-class v3, [B

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "runPostCompiler"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$LombokDeps;->POST_COMPILER_BYTES_STRING:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Class;

    .line 146
    const-class v6, Ljava/io/OutputStream;

    aput-object v6, v2, v4

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$LombokDeps;->POST_COMPILER_OUTPUTSTREAM:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    .line 147
    const-class v6, Ljava/io/BufferedOutputStream;

    aput-object v6, v2, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Llombok/launch/PatchFixesHider$LombokDeps;->POST_COMPILER_BUFFEREDOUTPUTSTREAM_STRING_STRING:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLombokNotesToEclipseAboutDialog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 152
    :try_start_0
    sget-object v0, Llombok/launch/PatchFixesHider$LombokDeps;->ADD_LOMBOK_NOTES:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object p0
.end method

.method public static runPostCompiler(Ljava/io/BufferedOutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    sget-object v0, Llombok/launch/PatchFixesHider$LombokDeps;->POST_COMPILER_BUFFEREDOUTPUTSTREAM_STRING_STRING:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/BufferedOutputStream;

    return-object p0
.end method

.method public static runPostCompiler(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    sget-object v0, Llombok/launch/PatchFixesHider$LombokDeps;->POST_COMPILER_OUTPUTSTREAM:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;

    return-object p0
.end method

.method public static runPostCompiler([BLjava/lang/String;)[B
    .locals 3

    .line 159
    sget-object v0, Llombok/launch/PatchFixesHider$LombokDeps;->POST_COMPILER_BYTES_STRING:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
