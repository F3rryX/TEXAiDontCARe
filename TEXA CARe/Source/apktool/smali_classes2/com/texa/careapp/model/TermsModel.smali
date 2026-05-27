.class public Lcom/texa/careapp/model/TermsModel;
.super Lcom/activeandroid/Model;
.source "TermsModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Terms"
.end annotation


# static fields
.field public static final ACEPTATION_DATE:Ljava/lang/String; = "AceptationDate"

.field public static final COLUMN_USER:Ljava/lang/String; = "User"

.field public static final TABLE_TERM:Ljava/lang/String; = "Terms"

.field public static final TERM_TYPE:Ljava/lang/String; = "TermType"

.field public static final VERSION:Ljava/lang/String; = "Version"


# instance fields
.field public termsType:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "TermType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public timestamp:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "AceptationDate"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public user:Lcom/texa/careapp/model/UserModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "User"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public version:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Version"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Date;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/texa/careapp/model/TermsModel;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/model/TermsModel;->termsType:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/texa/careapp/model/TermsModel;->version:I

    .line 54
    iput-object p3, p0, Lcom/texa/careapp/model/TermsModel;->timestamp:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getUser()Lcom/texa/careapp/model/UserModel;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/model/TermsModel;->user:Lcom/texa/careapp/model/UserModel;

    return-object v0
.end method

.method public setUser(Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/model/TermsModel;->user:Lcom/texa/careapp/model/UserModel;

    return-void
.end method

.method public update(Lcom/texa/careapp/model/TermsModel;)V
    .locals 1

    .line 58
    iget v0, p1, Lcom/texa/careapp/model/TermsModel;->version:I

    iput v0, p0, Lcom/texa/careapp/model/TermsModel;->version:I

    .line 59
    iget-object p1, p1, Lcom/texa/careapp/model/TermsModel;->timestamp:Ljava/util/Date;

    iput-object p1, p0, Lcom/texa/careapp/model/TermsModel;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public update(Lcom/texa/careapp/model/TermsModel;Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/TermsModel;->update(Lcom/texa/careapp/model/TermsModel;)V

    .line 64
    iput-object p2, p0, Lcom/texa/careapp/model/TermsModel;->user:Lcom/texa/careapp/model/UserModel;

    return-void
.end method
