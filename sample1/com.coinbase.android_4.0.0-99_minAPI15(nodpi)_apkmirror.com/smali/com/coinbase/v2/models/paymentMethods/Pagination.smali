.class public Lcom/coinbase/v2/models/paymentMethods/Pagination;
.super Ljava/lang/Object;
.source "Pagination.java"


# instance fields
.field private endingBefore:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ending_before"
    .end annotation
.end field

.field private limit:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limit"
    .end annotation
.end field

.field private nextUri:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next_uri"
    .end annotation
.end field

.field private order:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order"
    .end annotation
.end field

.field private previousUri:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previous_uri"
    .end annotation
.end field

.field private startingAfter:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "starting_after"
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
.method public getEndingBefore()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->endingBefore:Ljava/lang/Object;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextUri()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->nextUri:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousUri()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->previousUri:Ljava/lang/Object;

    return-object v0
.end method

.method public getStartingAfter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->startingAfter:Ljava/lang/Object;

    return-object v0
.end method

.method public setEndingBefore(Ljava/lang/Object;)V
    .locals 0
    .param p1, "endingBefore"    # Ljava/lang/Object;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->endingBefore:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "limit"    # Ljava/lang/Integer;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->limit:Ljava/lang/Integer;

    .line 100
    return-void
.end method

.method public setNextUri(Ljava/lang/Object;)V
    .locals 0
    .param p1, "nextUri"    # Ljava/lang/Object;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->nextUri:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->order:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPreviousUri(Ljava/lang/Object;)V
    .locals 0
    .param p1, "previousUri"    # Ljava/lang/Object;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->previousUri:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public setStartingAfter(Ljava/lang/Object;)V
    .locals 0
    .param p1, "startingAfter"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Pagination;->startingAfter:Ljava/lang/Object;

    .line 64
    return-void
.end method
