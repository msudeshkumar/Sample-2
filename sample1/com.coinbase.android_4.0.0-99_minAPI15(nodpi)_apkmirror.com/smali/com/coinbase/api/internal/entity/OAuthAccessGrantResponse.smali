.class public Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV1;
.source "OAuthAccessGrantResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x2a2bef1e8a65c34dL


# instance fields
.field _accessGrant:Lcom/coinbase/api/internal/entity/OAuthAccessGrant;

.field _authorized:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV1;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessGrant()Lcom/coinbase/api/internal/entity/OAuthAccessGrant;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->_accessGrant:Lcom/coinbase/api/internal/entity/OAuthAccessGrant;

    return-object v0
.end method

.method public getAuthorized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->_authorized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAccessGrant(Lcom/coinbase/api/internal/entity/OAuthAccessGrant;)V
    .locals 0
    .param p1, "accessGrant"    # Lcom/coinbase/api/internal/entity/OAuthAccessGrant;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->_accessGrant:Lcom/coinbase/api/internal/entity/OAuthAccessGrant;

    .line 24
    return-void
.end method

.method public setAuthorized(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "authorized"    # Ljava/lang/Boolean;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->_authorized:Ljava/lang/Boolean;

    .line 16
    return-void
.end method
