.class public Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "AnnotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/AnnotationProcessorHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationProcessor"
.end annotation


# instance fields
.field private final instance:Ljavax/annotation/processing/AbstractProcessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 56
    invoke-static {}, Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;->createWrappedInstance()Ljavax/annotation/processing/AbstractProcessor;

    move-result-object v0

    iput-object v0, p0, Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;->instance:Ljavax/annotation/processing/AbstractProcessor;

    return-void
.end method

.method private static createWrappedInstance()Ljavax/annotation/processing/AbstractProcessor;
    .locals 3

    .line 107
    invoke-static {}, Llombok/launch/Main;->getShadowClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string v1, "lombok.core.AnnotationProcessor"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/AbstractProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 112
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 113
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method private disableJava9SillyWarning()V
    .locals 5

    .line 86
    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    const-string v2, "jdk.internal.module.IllegalAccessLogger"

    .line 90
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "logger"

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4, v1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public getCompletions(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/annotation/processing/Completion;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;->instance:Ljavax/annotation/processing/AbstractProcessor;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/annotation/processing/AbstractProcessor;->getCompletions(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedAnnotationTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;->instance:Ljavax/annotation/processing/AbstractProcessor;

    invoke-virtual {v0}, Ljavax/annotation/processing/AbstractProcessor;->getSupportedAnnotationTypes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;->instance:Ljavax/annotation/processing/AbstractProcessor;

    invoke-virtual {v0}, Ljavax/annotation/processing/AbstractProcessor;->getSupportedOptions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 67
    iget-object v0, p0, Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;->instance:Ljavax/annotation/processing/AbstractProcessor;

    invoke-virtual {v0}, Ljavax/annotation/processing/AbstractProcessor;->getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;->disableJava9SillyWarning()V

    const/4 v0, 0x1

    .line 72
    sput-boolean v0, Llombok/launch/AnnotationProcessorHider$AstModificationNotifierData;->lombokInvoked:Z

    .line 73
    iget-object v0, p0, Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;->instance:Ljavax/annotation/processing/AbstractProcessor;

    invoke-virtual {v0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 74
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    return-void
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Llombok/launch/AnnotationProcessorHider$AnnotationProcessor;->instance:Ljavax/annotation/processing/AbstractProcessor;

    invoke-virtual {v0, p1, p2}, Ljavax/annotation/processing/AbstractProcessor;->process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z

    move-result p1

    return p1
.end method
