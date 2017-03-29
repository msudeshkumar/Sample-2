.class public Lcom/coinbase/v1/entity/ResponseV2$Pagination;
.super Ljava/lang/Object;
.source "ResponseV2.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/ResponseV2;
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_after:Ljava/lang/String;

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_before:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_nextUri:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_order:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_previousUri:Ljava/lang/String;

    return-object v0
.end method

.method public setAfter(Ljava/lang/String;)V
    .locals 0
    .param p1, "after"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_after:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setBefore(Ljava/lang/String;)V
    .locals 0
    .param p1, "before"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_before:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNextUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextUri"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_nextUri:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_order:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPreviousUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "previousUri"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResponseV2$Pagination;->_previousUri:Ljava/lang/String;

    .line 53
    return-void
.end method
