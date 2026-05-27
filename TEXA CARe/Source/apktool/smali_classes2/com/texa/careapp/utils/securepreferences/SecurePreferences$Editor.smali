.class public Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/securepreferences/SecurePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    invoke-static {}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$300()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/utils/securepreferences/SecurePreferences$1;)V
    .locals 0

    .line 444
    invoke-direct {p0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 510
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 503
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 489
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 497
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 496
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 457
    invoke-static {p2}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 456
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putStringNoEncrypted(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
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

    .line 477
    new-instance v0, Ljava/util/HashSet;

    .line 478
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 479
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 480
    invoke-static {v1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_0
    iget-object p2, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
