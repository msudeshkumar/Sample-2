.class public Lcom/coinbase/api/internal/entity/PhoneNumberResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV2;
.source "PhoneNumberResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x7a7500aeb1ccc153L


# instance fields
.field _data:Lcom/coinbase/api/internal/entity/PhoneNumber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/coinbase/api/internal/entity/PhoneNumber;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/PhoneNumberResponse;->_data:Lcom/coinbase/api/internal/entity/PhoneNumber;

    return-object v0
.end method

.method public setData(Lcom/coinbase/api/internal/entity/PhoneNumber;)V
    .locals 0
    .param p1, "data"    # Lcom/coinbase/api/internal/entity/PhoneNumber;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/PhoneNumberResponse;->_data:Lcom/coinbase/api/internal/entity/PhoneNumber;

    .line 15
    return-void
.end method
