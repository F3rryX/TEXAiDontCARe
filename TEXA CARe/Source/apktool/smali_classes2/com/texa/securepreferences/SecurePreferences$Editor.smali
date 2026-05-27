.class public Lcom/texa/securepreferences/SecurePreferences$Editor;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/securepreferences/SecurePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/texa/securepreferences/SecurePreferences;


# direct methods
.method private constructor <init>(Lcom/texa/securepreferences/SecurePreferences;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->this$0:Lcom/texa/securepreferences/SecurePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->access$100(Lcom/texa/securepreferences/SecurePreferences;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/securepreferences/SecurePreferences;Lcom/texa/securepreferences/SecurePreferences$1;)V
    .locals 0

    .line 545
    invoke-direct {p0, p1}, Lcom/texa/securepreferences/SecurePreferences$Editor;-><init>(Lcom/texa/securepreferences/SecurePreferences;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->this$0:Lcom/texa/securepreferences/SecurePreferences;

    .line 612
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/texa/securepreferences/SecurePreferences;->access$200(Lcom/texa/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 611
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->this$0:Lcom/texa/securepreferences/SecurePreferences;

    .line 605
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/texa/securepreferences/SecurePreferences;->access$200(Lcom/texa/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 604
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->this$0:Lcom/texa/securepreferences/SecurePreferences;

    .line 591
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/texa/securepreferences/SecurePreferences;->access$200(Lcom/texa/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 590
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->this$0:Lcom/texa/securepreferences/SecurePreferences;

    .line 598
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/texa/securepreferences/SecurePreferences;->access$200(Lcom/texa/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 597
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->this$0:Lcom/texa/securepreferences/SecurePreferences;

    .line 558
    invoke-static {v1, p2}, Lcom/texa/securepreferences/SecurePreferences;->access$200(Lcom/texa/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 557
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 3
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

    .line 578
    new-instance v0, Ljava/util/HashSet;

    .line 579
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 580
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 581
    iget-object v2, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->this$0:Lcom/texa/securepreferences/SecurePreferences;

    invoke-static {v2, v1}, Lcom/texa/securepreferences/SecurePreferences;->access$200(Lcom/texa/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    :cond_0
    iget-object p2, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putUnencryptedString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
