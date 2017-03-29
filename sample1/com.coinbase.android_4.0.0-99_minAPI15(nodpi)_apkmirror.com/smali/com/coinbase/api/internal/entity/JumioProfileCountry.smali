.class public Lcom/coinbase/api/internal/entity/JumioProfileCountry;
.super Ljava/lang/Object;
.source "JumioProfileCountry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonRootName;
    value = "country"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x573fadaff6b85dfaL


# instance fields
.field public _code:Ljava/lang/String;

.field public _image:Ljava/lang/String;

.field public _name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->_code:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->_image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->_code:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->_image:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->_name:Ljava/lang/String;

    .line 36
    return-void
.end method
