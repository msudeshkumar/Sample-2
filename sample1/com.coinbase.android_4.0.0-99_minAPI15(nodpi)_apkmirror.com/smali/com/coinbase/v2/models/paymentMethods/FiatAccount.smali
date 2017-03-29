.class public Lcom/coinbase/v2/models/paymentMethods/FiatAccount;
.super Ljava/lang/Object;
.source "FiatAccount.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
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
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/FiatAccount;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/FiatAccount;->id:Ljava/lang/String;

    .line 32
    return-void
.end method
