.class public Lcom/coinbase/android/transactions/TransactionListItems$TransactionHeaderItem;
.super Lcom/coinbase/android/transactions/AbstractTransactionListItem;
.source "TransactionListItems.java"

# interfaces
.implements Lcom/coinbase/android/transactions/TransactionListDisplayItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionListItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionHeaderItem"
.end annotation


# instance fields
.field private section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/coinbase/android/transactions/AbstractTransactionListItem;-><init>(Landroid/content/Context;Lcom/coinbase/api/LoginManager;Lcom/coinbase/v2/models/account/Data;Z)V

    .line 33
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionHeaderItem;->section:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public configureAmountView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "amountView"    # Landroid/widget/TextView;

    .prologue
    .line 50
    return-void
.end method

.method public configureProfileView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "profileView"    # Landroid/widget/ImageView;

    .prologue
    .line 54
    return-void
.end method

.method public configureStatusView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "statusView"    # Landroid/widget/TextView;

    .prologue
    .line 38
    return-void
.end method

.method public configureSummaryView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "summaryView"    # Landroid/widget/TextView;

    .prologue
    .line 46
    return-void
.end method

.method public configureTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 42
    return-void
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionListItems$TransactionHeaderItem;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction()Lcom/coinbase/v2/models/transactions/Data;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDelayed()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
