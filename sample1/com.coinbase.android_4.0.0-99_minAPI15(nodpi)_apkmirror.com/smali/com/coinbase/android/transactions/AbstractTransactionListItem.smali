.class public abstract Lcom/coinbase/android/transactions/AbstractTransactionListItem;
.super Ljava/lang/Object;
.source "AbstractTransactionListItem.java"


# instance fields
.field private isSelected:Z

.field protected isVault:Z

.field protected mContext:Landroid/content/Context;

.field protected mLoginManager:Lcom/coinbase/api/LoginManager;

.field protected mSelectedAccount:Lcom/coinbase/v2/models/account/Data;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coinbase/api/LoginManager;Lcom/coinbase/v2/models/account/Data;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginManager"    # Lcom/coinbase/api/LoginManager;
    .param p3, "selectedAccount"    # Lcom/coinbase/v2/models/account/Data;
    .param p4, "vault"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/transactions/AbstractTransactionListItem;->isSelected:Z

    .line 17
    iput-object p1, p0, Lcom/coinbase/android/transactions/AbstractTransactionListItem;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/coinbase/android/transactions/AbstractTransactionListItem;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 19
    iput-object p3, p0, Lcom/coinbase/android/transactions/AbstractTransactionListItem;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 20
    iput-boolean p4, p0, Lcom/coinbase/android/transactions/AbstractTransactionListItem;->isVault:Z

    .line 21
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/coinbase/android/transactions/AbstractTransactionListItem;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/coinbase/android/transactions/AbstractTransactionListItem;->isSelected:Z

    .line 29
    return-void
.end method
