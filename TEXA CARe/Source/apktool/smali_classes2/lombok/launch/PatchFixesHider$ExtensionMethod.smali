.class public final Llombok/launch/PatchFixesHider$ExtensionMethod;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionMethod"
.end annotation


# static fields
.field private static final ERROR_NO_METHOD_FOR:Ljava/lang/reflect/Method;

.field private static final INVALID_METHOD:Ljava/lang/reflect/Method;

.field private static final INVALID_METHOD2:Ljava/lang/reflect/Method;

.field private static final RESOLVE_TYPE:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "lombok.eclipse.agent.PatchExtensionMethod"

    .line 275
    invoke-static {v0}, Llombok/launch/PatchFixesHider$Util;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 276
    const-class v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "resolveType"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$ExtensionMethod;->RESOLVE_TYPE:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    .line 277
    const-class v7, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    aput-object v7, v3, v4

    const-class v7, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    aput-object v7, v3, v5

    const-class v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v7, v3, v6

    const-class v7, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v7, v3, v1

    const-string v7, "errorNoMethodFor"

    invoke-static {v0, v7, v3}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Llombok/launch/PatchFixesHider$ExtensionMethod;->ERROR_NO_METHOD_FOR:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Class;

    .line 278
    const-class v7, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    aput-object v7, v3, v4

    const-class v7, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    aput-object v7, v3, v5

    const-class v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aput-object v7, v3, v6

    const-string v7, "invalidMethod"

    invoke-static {v0, v7, v3}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Llombok/launch/PatchFixesHider$ExtensionMethod;->INVALID_METHOD:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Class;

    .line 279
    const-class v3, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    aput-object v3, v2, v4

    const-class v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    aput-object v3, v2, v5

    const-class v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aput-object v3, v2, v6

    const-class v3, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    aput-object v3, v2, v1

    invoke-static {v0, v7, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->INVALID_METHOD2:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorNoMethodFor(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    .line 287
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->ERROR_NO_METHOD_FOR:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static invalidMethod(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 3

    .line 291
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->INVALID_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static invalidMethod(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 3

    .line 295
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->INVALID_METHOD2:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    .line 283
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->RESOLVE_TYPE:Ljava/lang/reflect/Method;

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

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0
.end method
