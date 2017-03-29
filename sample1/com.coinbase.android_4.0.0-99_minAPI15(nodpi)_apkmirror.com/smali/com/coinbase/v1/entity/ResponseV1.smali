.class public Lcom/coinbase/v1/entity/ResponseV1;
.super Lcom/coinbase/v1/entity/Response;
.source "ResponseV1.java"


# static fields
.field private static final serialVersionUID:J = -0x2f12eaf9642e2936L


# instance fields
.field private _currentPage:I

.field private _error:Ljava/lang/String;

.field private _errors:Ljava/lang/String;

.field private _numPages:I

.field private _success:Ljava/lang/Boolean;

.field private _totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_currentPage:I

    return v0
.end method

.method public getErrors()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_error:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_errors:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coinbase/v1/entity/ResponseV1;->_error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/v1/entity/ResponseV1;->_errors:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_error:Ljava/lang/String;

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_errors:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_numPages:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_totalCount:I

    return v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_error:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_errors:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/coinbase/v1/entity/ResponseV1;->_success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "currentPage"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/coinbase/v1/entity/ResponseV1;->_currentPage:I

    .line 53
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResponseV1;->_error:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0
    .param p1, "errors"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/ErrorsCollectorV1;
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResponseV1;->_errors:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNumPages(I)V
    .locals 0
    .param p1, "numPages"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/coinbase/v1/entity/ResponseV1;->_numPages:I

    .line 47
    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/coinbase/v1/entity/ResponseV1;->_success:Ljava/lang/Boolean;

    .line 59
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/coinbase/v1/entity/ResponseV1;->_totalCount:I

    .line 41
    return-void
.end method
