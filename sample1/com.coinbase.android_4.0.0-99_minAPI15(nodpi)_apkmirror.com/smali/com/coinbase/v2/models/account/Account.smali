.class public Lcom/coinbase/v2/models/account/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private data:Lcom/coinbase/v2/models/account/Data;
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
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/coinbase/v2/models/account/Data;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Account;->data:Lcom/coinbase/v2/models/account/Data;

    return-object v0
.end method

.method public setData(Lcom/coinbase/v2/models/account/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Account;->data:Lcom/coinbase/v2/models/account/Data;

    .line 31
    return-void
.end method
