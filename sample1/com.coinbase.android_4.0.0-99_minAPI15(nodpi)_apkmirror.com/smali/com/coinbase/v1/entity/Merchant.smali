.class public Lcom/coinbase/v1/entity/Merchant;
.super Ljava/lang/Object;
.source "Merchant.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/Merchant$Logo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x238a8765974e6ac8L


# instance fields
.field private _companyName:Ljava/lang/String;

.field private _logo:Lcom/coinbase/v1/entity/Merchant$Logo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/coinbase/v1/entity/Merchant;->_companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Lcom/coinbase/v1/entity/Merchant$Logo;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/coinbase/v1/entity/Merchant;->_logo:Lcom/coinbase/v1/entity/Merchant$Logo;

    return-object v0
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/coinbase/v1/entity/Merchant;->_companyName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setLogo(Lcom/coinbase/v1/entity/Merchant$Logo;)V
    .locals 0
    .param p1, "logo"    # Lcom/coinbase/v1/entity/Merchant$Logo;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/coinbase/v1/entity/Merchant;->_logo:Lcom/coinbase/v1/entity/Merchant$Logo;

    .line 55
    return-void
.end method
