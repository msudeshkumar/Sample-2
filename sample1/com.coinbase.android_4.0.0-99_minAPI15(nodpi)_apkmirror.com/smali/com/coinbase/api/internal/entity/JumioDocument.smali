.class public Lcom/coinbase/api/internal/entity/JumioDocument;
.super Ljava/lang/Object;
.source "JumioDocument.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x12cd360c3152342L


# instance fields
.field private _country:Lcom/coinbase/api/internal/entity/JumioProfileCountry;

.field private _supportedIdTypes:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "supported_id_types"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioDocument;->_country:Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    return-object v0
.end method

.method public getSupportedIdTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioDocument;->_supportedIdTypes:Ljava/util/List;

    return-object v0
.end method

.method public setCountry(Lcom/coinbase/api/internal/entity/JumioProfileCountry;)V
    .locals 0
    .param p1, "country"    # Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioDocument;->_country:Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    .line 34
    return-void
.end method

.method public setSupportedIdTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "supportedIdTypes":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioDocument;->_supportedIdTypes:Ljava/util/List;

    .line 26
    return-void
.end method
