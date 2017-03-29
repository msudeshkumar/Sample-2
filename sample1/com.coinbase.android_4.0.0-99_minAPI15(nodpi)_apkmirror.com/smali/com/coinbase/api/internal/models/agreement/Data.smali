.class public Lcom/coinbase/api/internal/models/agreement/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private html:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "html"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/api/internal/models/agreement/Data;->html:Ljava/lang/String;

    return-object v0
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/coinbase/api/internal/models/agreement/Data;->html:Ljava/lang/String;

    .line 32
    return-void
.end method
