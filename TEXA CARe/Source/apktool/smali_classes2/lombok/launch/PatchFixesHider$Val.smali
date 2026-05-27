.class public final Llombok/launch/PatchFixesHider$Val;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Val"
.end annotation


# static fields
.field private static final HANDLE_VAL_FOR_FOR_EACH:Ljava/lang/reflect/Method;

.field private static final HANDLE_VAL_FOR_LOCAL_DECLARATION:Ljava/lang/reflect/Method;

.field private static final SKIP_RESOLVE_INITIALIZER_IF_ALREADY_CALLED:Ljava/lang/reflect/Method;

.field private static final SKIP_RESOLVE_INITIALIZER_IF_ALREADY_CALLED2:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "lombok.eclipse.agent.PatchVal"

    .line 244
    invoke-static {v0}, Llombok/launch/PatchFixesHider$Util;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 245
    const-class v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "skipResolveInitializerIfAlreadyCalled"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$Val;->SKIP_RESOLVE_INITIALIZER_IF_ALREADY_CALLED:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    .line 246
    const-class v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aput-object v3, v2, v4

    const-class v3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    aput-object v3, v2, v5

    const-class v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    aput-object v3, v2, v1

    const-string v3, "skipResolveInitializerIfAlreadyCalled2"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$Val;->SKIP_RESOLVE_INITIALIZER_IF_ALREADY_CALLED2:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    .line 247
    const-class v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    aput-object v3, v2, v4

    const-class v3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    aput-object v3, v2, v5

    const-string v3, "handleValForLocalDeclaration"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$Val;->HANDLE_VAL_FOR_LOCAL_DECLARATION:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Class;

    .line 248
    const-class v2, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    aput-object v2, v1, v4

    const-class v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    aput-object v2, v1, v5

    const-string v2, "handleValForForEach"

    invoke-static {v0, v2, v1}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Llombok/launch/PatchFixesHider$Val;->HANDLE_VAL_FOR_FOR_EACH:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleValForForEach(Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 3

    .line 264
    sget-object v0, Llombok/launch/PatchFixesHider$Val;->HANDLE_VAL_FOR_FOR_EACH:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static handleValForLocalDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 3

    .line 260
    sget-object v0, Llombok/launch/PatchFixesHider$Val;->HANDLE_VAL_FOR_LOCAL_DECLARATION:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static skipResolveInitializerIfAlreadyCalled(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    .line 252
    sget-object v0, Llombok/launch/PatchFixesHider$Val;->SKIP_RESOLVE_INITIALIZER_IF_ALREADY_CALLED:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0
.end method

.method public static skipResolveInitializerIfAlreadyCalled2(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    .line 256
    sget-object v0, Llombok/launch/PatchFixesHider$Val;->SKIP_RESOLVE_INITIALIZER_IF_ALREADY_CALLED2:Ljava/lang/reflect/Method;

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
