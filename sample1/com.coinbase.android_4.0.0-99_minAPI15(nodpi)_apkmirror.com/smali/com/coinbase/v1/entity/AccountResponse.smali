.class public Lcom/coinbase/v1/entity/AccountResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "AccountResponse.java"


# static fields
.field private static final serialVersionUID:J = -0xc24416f1aa3116fL


# instance fields
.field private _account:Lcom/coinbase/v1/entity/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/coinbase/v1/entity/Account;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountResponse;->_account:Lcom/coinbase/v1/entity/Account;

    return-object v0
.end method

.method public setAccount(Lcom/coinbase/v1/entity/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/coinbase/v1/entity/Account;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountResponse;->_account:Lcom/coinbase/v1/entity/Account;

    .line 17
    return-void
.end method
