.class public Lcom/coinbase/api/internal/entity/OAuthAccessGrant;
.super Ljava/lang/Object;
.source "OAuthAccessGrant.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;,
        Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5663ca504a729806L


# instance fields
.field _application:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;

.field _meta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

.field _redirectUri:Ljava/lang/String;

.field _responseType:Ljava/lang/String;

.field _scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplication()Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_application:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;

    return-object v0
.end method

.method public getMeta()Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_meta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_responseType:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_scope:Ljava/lang/String;

    return-object v0
.end method

.method public setApplication(Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;)V
    .locals 0
    .param p1, "application"    # Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_application:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;

    .line 105
    return-void
.end method

.method public setMeta(Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;)V
    .locals 0
    .param p1, "meta"    # Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_meta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    .line 97
    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_redirectUri:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setResponseType(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseType"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_responseType:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->_scope:Ljava/lang/String;

    .line 81
    return-void
.end method
