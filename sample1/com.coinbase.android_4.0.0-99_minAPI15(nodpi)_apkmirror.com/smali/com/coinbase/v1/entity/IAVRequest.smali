.class public Lcom/coinbase/v1/entity/IAVRequest;
.super Ljava/lang/Object;
.source "IAVRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    using = Lcom/coinbase/v1/serializer/IAVRequestSerializer;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d9d7b221af2baf8L


# instance fields
.field private _iavFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _verificationMethod:Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIavFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/coinbase/v1/entity/IAVRequest;->_iavFields:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVerificationMethod()Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/coinbase/v1/entity/IAVRequest;->_verificationMethod:Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;

    return-object v0
.end method

.method public setIavFields(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "iavFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/IAVRequest;->_iavFields:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method public setVerificationMethod(Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;)V
    .locals 0
    .param p1, "verificationMethod"    # Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/coinbase/v1/entity/IAVRequest;->_verificationMethod:Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;

    .line 23
    return-void
.end method
