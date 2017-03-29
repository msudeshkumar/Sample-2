.class public Lcom/coinbase/api/internal/entity/AchSetupSession;
.super Ljava/lang/Object;
.source "AchSetupSession.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1250a182b7d7345dL


# instance fields
.field private _accounts:[Lcom/coinbase/v1/entity/Account;

.field private _id:Ljava/lang/String;

.field private _status:Ljava/lang/String;

.field private mfa:Lcom/coinbase/api/internal/entity/MFA;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/coinbase/api/internal/deserializer/MFALifter;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccounts()[Lcom/coinbase/v1/entity/Account;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchSetupSession;->_accounts:[Lcom/coinbase/v1/entity/Account;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchSetupSession;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMfa()Lcom/coinbase/api/internal/entity/MFA;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchSetupSession;->mfa:Lcom/coinbase/api/internal/entity/MFA;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchSetupSession;->_status:Ljava/lang/String;

    return-object v0
.end method

.method public setAccounts([Lcom/coinbase/v1/entity/Account;)V
    .locals 0
    .param p1, "accounts"    # [Lcom/coinbase/v1/entity/Account;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchSetupSession;->_accounts:[Lcom/coinbase/v1/entity/Account;

    .line 45
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchSetupSession;->_id:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setMfa(Lcom/coinbase/api/internal/entity/MFA;)V
    .locals 0
    .param p1, "mfa"    # Lcom/coinbase/api/internal/entity/MFA;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchSetupSession;->mfa:Lcom/coinbase/api/internal/entity/MFA;

    .line 53
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchSetupSession;->_status:Ljava/lang/String;

    .line 37
    return-void
.end method
