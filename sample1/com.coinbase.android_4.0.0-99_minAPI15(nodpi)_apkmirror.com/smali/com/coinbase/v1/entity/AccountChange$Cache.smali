.class public Lcom/coinbase/v1/entity/AccountChange$Cache;
.super Ljava/lang/Object;
.source "AccountChange.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/AccountChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x379c5b93d8f06469L


# instance fields
.field private _category:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

.field private _fiat:Ljava/lang/Boolean;

.field private _notes_present:Ljava/lang/Boolean;

.field private _other_account:Lcom/coinbase/v1/entity/Account;

.field private _other_user:Lcom/coinbase/v1/entity/User;

.field private _payment_method:Lcom/coinbase/v1/entity/PaymentMethod;

.field private _status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/coinbase/v1/entity/AccountChange$Cache$Category;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_category:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    return-object v0
.end method

.method public getOtherAccount()Lcom/coinbase/v1/entity/Account;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_other_account:Lcom/coinbase/v1/entity/Account;

    return-object v0
.end method

.method public getOtherUser()Lcom/coinbase/v1/entity/User;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_other_user:Lcom/coinbase/v1/entity/User;

    return-object v0
.end method

.method public getPaymentMethod()Lcom/coinbase/v1/entity/PaymentMethod;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_payment_method:Lcom/coinbase/v1/entity/PaymentMethod;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_status:Ljava/lang/String;

    return-object v0
.end method

.method public isFiat()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_fiat:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isNotesPresent()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_notes_present:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCategory(Lcom/coinbase/v1/entity/AccountChange$Cache$Category;)V
    .locals 0
    .param p1, "category"    # Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_category:Lcom/coinbase/v1/entity/AccountChange$Cache$Category;

    .line 67
    return-void
.end method

.method public setFiat(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "fiat"    # Ljava/lang/Boolean;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_fiat:Ljava/lang/Boolean;

    .line 75
    return-void
.end method

.method public setNotesPresent(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "notes_present"    # Ljava/lang/Boolean;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_notes_present:Ljava/lang/Boolean;

    .line 83
    return-void
.end method

.method public setOtherAccount(Lcom/coinbase/v1/entity/Account;)V
    .locals 0
    .param p1, "other_account"    # Lcom/coinbase/v1/entity/Account;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_other_account:Lcom/coinbase/v1/entity/Account;

    .line 115
    return-void
.end method

.method public setOtherUser(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "other_user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_other_user:Lcom/coinbase/v1/entity/User;

    .line 91
    return-void
.end method

.method public setPaymentMethod(Lcom/coinbase/v1/entity/PaymentMethod;)V
    .locals 0
    .param p1, "payment_method"    # Lcom/coinbase/v1/entity/PaymentMethod;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_payment_method:Lcom/coinbase/v1/entity/PaymentMethod;

    .line 99
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChange$Cache;->_status:Ljava/lang/String;

    .line 107
    return-void
.end method
