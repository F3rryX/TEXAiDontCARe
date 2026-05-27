.class public Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;
.super Ljava/lang/Object;
.source "CountryScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountrySelectedEvent"
.end annotation


# instance fields
.field private country:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;->country:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    return-void
.end method


# virtual methods
.method public getCountry()Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;->country:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    return-object v0
.end method
