.class public Lcom/coinbase/api/internal/models/Pagination;
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
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndingBefore()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/coinbase/api/internal/models/Pagination;->endingBefore:Ljava/lang/Object;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/coinbase/api/internal/models/Pagination;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextUri()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/coinbase/api/internal/models/Pagination;->nextUri:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/coinbase/api/internal/models/Pagination;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousUri()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/coinbase/api/internal/models/Pagination;->previousUri:Ljava/lang/Object;

    return-object v0
.end method

.method public getStartingAfter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/coinbase/api/internal/models/Pagination;->startingAfter:Ljava/lang/Object;

    return-object v0
.end method

.method public setEndingBefore(Ljava/lang/Object;)V
    .locals 0
    .param p1, "endingBefore"    # Ljava/lang/Object;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/coinbase/api/internal/models/Pagination;->endingBefore:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "limit"    # Ljava/lang/Integer;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/coinbase/api/internal/models/Pagination;->limit:Ljava/lang/Integer;

    .line 99
    return-void
.end method

.method public setNextUri(Ljava/lang/Object;)V
    .locals 0
    .param p1, "nextUri"    # Ljava/lang/Object;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/coinbase/api/internal/models/Pagination;->nextUri:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/coinbase/api/internal/models/Pagination;->order:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPreviousUri(Ljava/lang/Object;)V
    .locals 0
    .param p1, "previousUri"    # Ljava/lang/Object;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/coinbase/api/internal/models/Pagination;->previousUri:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public setStartingAfter(Ljava/lang/Object;)V
    .locals 0
    .param p1, "startingAfter"    # Ljava/lang/Object;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/coinbase/api/internal/models/Pagination;->startingAfter:Ljava/lang/Object;

    .line 63
    return-void
.end method
