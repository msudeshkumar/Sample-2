.class public Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;
.super Ljava/lang/Object;
.source "OAuthAccessGrant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/api/internal/entity/OAuthAccessGrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field _iconUrl:Ljava/lang/String;

.field _name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;->_iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;->_iconUrl:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;->_name:Ljava/lang/String;

    .line 58
    return-void
.end method
