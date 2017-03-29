.class public Lcom/coinbase/v1/entity/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Serializable;


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
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/coinbase/v1/entity/Response;->_currentPage:I

    return v0
.end method

.method public getErrors()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/coinbase/v1/entity/Response;->_error:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/coinbase/v1/entity/Response;->_errors:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coinbase/v1/entity/Response;->_error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/v1/entity/Response;->_errors:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/coinbase/v1/entity/Response;->_error:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/coinbase/v1/entity/Response;->_errors:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/coinbase/v1/entity/Response;->_numPages:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/coinbase/v1/entity/Response;->_totalCount:I

    return v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/coinbase/v1/entity/Response;->_error:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/v1/entity/Response;->_errors:Ljava/lang/String;

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
    .line 67
    iget-object v0, p0, Lcom/coinbase/v1/entity/Response;->_success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "currentPage"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/coinbase/v1/entity/Response;->_currentPage:I

    .line 64
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/coinbase/v1/entity/Response;->_error:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0
    .param p1, "errors"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/ErrorsCollector;
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/coinbase/v1/entity/Response;->_errors:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setNumPages(I)V
    .locals 0
    .param p1, "numPages"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/coinbase/v1/entity/Response;->_numPages:I

    .line 56
    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/coinbase/v1/entity/Response;->_success:Ljava/lang/Boolean;

    .line 72
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/coinbase/v1/entity/Response;->_totalCount:I

    .line 48
    return-void
.end method
