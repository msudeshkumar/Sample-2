.class public Lcom/coinbase/api/internal/entity/ResponseV2;
.super Lcom/coinbase/v1/entity/Response;
.source "ResponseV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/api/internal/entity/ResponseV2$Pagination;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2bd482530850b4daL


# instance fields
.field private _errors:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV2;->_errors:Ljava/lang/String;

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/ResponseV2;->_errors:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0
    .param p1, "errors"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/ErrorsCollector;
    .end annotation

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/ResponseV2;->_errors:Ljava/lang/String;

    .line 16
    return-void
.end method
