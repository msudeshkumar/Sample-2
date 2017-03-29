.class public Lcom/coinbase/v1/entity/Merchant$Logo;
.super Ljava/lang/Object;
.source "Merchant.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/Merchant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1109e5d0e7aee59aL


# instance fields
.field private medium:Ljava/lang/String;

.field private small:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMedium()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/coinbase/v1/entity/Merchant$Logo;->medium:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/coinbase/v1/entity/Merchant$Logo;->small:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/v1/entity/Merchant$Logo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setMedium(Ljava/lang/String;)V
    .locals 0
    .param p1, "medium"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/coinbase/v1/entity/Merchant$Logo;->medium:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSmall(Ljava/lang/String;)V
    .locals 0
    .param p1, "small"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/coinbase/v1/entity/Merchant$Logo;->small:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/coinbase/v1/entity/Merchant$Logo;->url:Ljava/lang/String;

    .line 29
    return-void
.end method
