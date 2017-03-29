.class public Lcom/coinbase/v1/entity/IAVField;
.super Ljava/lang/Object;
.source "IAVField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xb2145c25694918cL


# instance fields
.field _id:Ljava/lang/String;

.field _name:Ljava/lang/String;

.field _secure:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/IAVField;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/v1/entity/IAVField;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/v1/entity/IAVField;->_secure:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/v1/entity/IAVField;->_id:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/coinbase/v1/entity/IAVField;->_name:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSecure(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "secure"    # Ljava/lang/Boolean;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/coinbase/v1/entity/IAVField;->_secure:Ljava/lang/Boolean;

    .line 34
    return-void
.end method
