.class public Lcom/coinbase/v2/models/errors/ErrorBody;
.super Ljava/lang/Object;
.source "ErrorBody.java"


# instance fields
.field private id:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v2/models/errors/ErrorBody;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/coinbase/v2/models/errors/ErrorBody;->message:Ljava/lang/String;

    return-object v0
.end method
