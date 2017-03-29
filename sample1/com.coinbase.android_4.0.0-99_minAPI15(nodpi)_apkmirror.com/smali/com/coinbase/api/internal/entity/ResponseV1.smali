.class public Lcom/coinbase/api/internal/entity/ResponseV1;
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
    .line 7
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_currentPage:I

    return v0
.end method

.method public getErrors()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_error:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_errors:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_errors:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_error:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_errors:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_numPages:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_totalCount:I

    return v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_error:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_errors:Ljava/lang/String;

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
    .line 56
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "currentPage"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_currentPage:I

    .line 54
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_error:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0
    .param p1, "errors"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/api/internal/deserializer/ErrorsCollectorV1;
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_errors:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setNumPages(I)V
    .locals 0
    .param p1, "numPages"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_numPages:I

    .line 48
    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_success:Ljava/lang/Boolean;

    .line 60
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/coinbase/api/internal/entity/ResponseV1;->_totalCount:I

    .line 42
    return-void
.end method
