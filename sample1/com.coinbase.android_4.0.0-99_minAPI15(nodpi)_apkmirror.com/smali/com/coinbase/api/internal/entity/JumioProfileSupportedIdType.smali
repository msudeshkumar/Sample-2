.class public Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;
.super Ljava/lang/Object;
.source "JumioProfileSupportedIdType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonRootName;
    value = "supported_id_type"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3701d81b9f8cf9dfL


# instance fields
.field public _backsideImageRequired:Z

.field public _type:Lcom/coinbase/api/internal/entity/JumioProfileType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/coinbase/api/internal/entity/JumioProfileType;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->_type:Lcom/coinbase/api/internal/entity/JumioProfileType;

    return-object v0
.end method

.method public isBacksideImageRequired()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->_backsideImageRequired:Z

    return v0
.end method

.method public setBacksideImageRequired(Z)V
    .locals 0
    .param p1, "backsideImageRequired"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->_backsideImageRequired:Z

    .line 34
    return-void
.end method

.method public setType(Lcom/coinbase/api/internal/entity/JumioProfileType;)V
    .locals 0
    .param p1, "type"    # Lcom/coinbase/api/internal/entity/JumioProfileType;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->_type:Lcom/coinbase/api/internal/entity/JumioProfileType;

    .line 26
    return-void
.end method
