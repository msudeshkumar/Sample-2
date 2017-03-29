.class public Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;
.super Ljava/lang/Object;
.source "PaymentMethod.java"


# instance fields
.field private data:Lcom/coinbase/v2/models/paymentMethods/Data;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/coinbase/v2/models/paymentMethods/Data;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;->data:Lcom/coinbase/v2/models/paymentMethods/Data;

    return-object v0
.end method

.method public setData(Lcom/coinbase/v2/models/paymentMethods/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/coinbase/v2/models/paymentMethods/Data;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;->data:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 32
    return-void
.end method
