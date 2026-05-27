.class public final Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;
.super Ljava/lang/Object;
.source "SecureSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/SecureSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private clear:Z

.field private final internalEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;


# direct methods
.method private constructor <init>(Lat/favre/lib/armadillo/SecureSharedPreferences;)V
    .locals 1

    .line 431
    iput-object p1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 428
    iput-boolean v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->clear:Z

    .line 432
    invoke-static {p1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$100(Lat/favre/lib/armadillo/SecureSharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/armadillo/SecureSharedPreferences;Lat/favre/lib/armadillo/SecureSharedPreferences$1;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;-><init>(Lat/favre/lib/armadillo/SecureSharedPreferences;)V

    return-void
.end method

.method private handlePossibleClear()V
    .locals 1

    .line 530
    iget-boolean v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->clear:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$500(Lat/favre/lib/armadillo/SecureSharedPreferences;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 525
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 526
    invoke-direct {p0}, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->handlePossibleClear()V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 509
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->clear:Z

    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 517
    :try_start_0
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-direct {p0}, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->handlePossibleClear()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->handlePossibleClear()V

    throw v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 496
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v0

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 497
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$300(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object v2

    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->from(B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    invoke-static {v1, p1, v2, p2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$400(Lat/favre/lib/armadillo/SecureSharedPreferences;Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method putEncryptedBase64(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 448
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method putEncryptedStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 489
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v0

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$300(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object v2

    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->from(F)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    invoke-static {v1, p1, v2, p2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$400(Lat/favre/lib/armadillo/SecureSharedPreferences;Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 475
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v0

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 476
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$300(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object v2

    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->from(I)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    invoke-static {v1, p1, v2, p2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$400(Lat/favre/lib/armadillo/SecureSharedPreferences;Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 482
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v0

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 483
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$300(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object v2

    invoke-static {p2, p3}, Lat/favre/lib/bytes/Bytes;->from(J)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    invoke-static {v1, p1, v2, p2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$400(Lat/favre/lib/armadillo/SecureSharedPreferences;Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 437
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v0

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    .line 440
    iget-object p2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v0

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 442
    :cond_0
    iget-object p1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$300(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object v2

    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    invoke-static {v1, v0, v2, p2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$400(Lat/favre/lib/armadillo/SecureSharedPreferences;Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v0

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    .line 457
    iget-object p2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v0

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 459
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 460
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 461
    iget-object v2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$300(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object v3

    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v1

    invoke-static {v2, v0, v3, v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$400(Lat/favre/lib/armadillo/SecureSharedPreferences;Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    :cond_1
    iget-object p2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 503
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->internalEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->this$0:Lat/favre/lib/armadillo/SecureSharedPreferences;

    invoke-static {v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v1

    invoke-interface {v1, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
