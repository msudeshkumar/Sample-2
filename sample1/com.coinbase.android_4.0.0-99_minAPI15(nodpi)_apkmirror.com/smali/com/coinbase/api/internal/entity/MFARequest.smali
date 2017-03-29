.class public Lcom/coinbase/api/internal/entity/MFARequest;
.super Ljava/lang/Object;
.source "MFARequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    using = Lcom/coinbase/api/internal/serializer/MFARequestSerializer;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x701ff7b2bb57a465L


# instance fields
.field private _answers:[Ljava/lang/String;

.field private _code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFARequest;->_answers:[Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFARequest;->_code:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswers([Ljava/lang/String;)V
    .locals 0
    .param p1, "answers"    # [Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFARequest;->_answers:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFARequest;->_code:Ljava/lang/String;

    .line 22
    return-void
.end method
