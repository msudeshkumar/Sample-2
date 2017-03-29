.class public Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;
.super Ljava/lang/Object;
.source "ResponseV2.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/api/internal/entity/ResponseV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pagination"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f79ea58afadd693L


# instance fields
.field _after:Ljava/lang/String;

.field _before:Ljava/lang/String;

.field _nextUri:Ljava/lang/String;

.field _order:Ljava/lang/String;

.field _previousUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_after:Ljava/lang/String;

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_before:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_nextUri:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_order:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_previousUri:Ljava/lang/String;

    return-object v0
.end method

.method public setAfter(Ljava/lang/String;)V
    .locals 0
    .param p1, "after"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_after:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setBefore(Ljava/lang/String;)V
    .locals 0
    .param p1, "before"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_before:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setNextUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextUri"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_nextUri:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_order:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPreviousUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "previousUri"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;->_previousUri:Ljava/lang/String;

    .line 54
    return-void
.end method
