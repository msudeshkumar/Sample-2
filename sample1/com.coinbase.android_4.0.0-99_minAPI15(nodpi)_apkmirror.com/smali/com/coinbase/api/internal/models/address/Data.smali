.class public Lcom/coinbase/api/internal/models/address/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field private country:Lcom/coinbase/api/internal/models/address/Country;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private line1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "line1"
    .end annotation
.end field

.field private line2:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "line2"
    .end annotation
.end field

.field private line3:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "line3"
    .end annotation
.end field

.field private postalCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postal_code"
    .end annotation
.end field

.field private resource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource"
    .end annotation
.end field

.field private resourcePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource_path"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Lcom/coinbase/api/internal/models/address/Country;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->country:Lcom/coinbase/api/internal/models/address/Country;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->line1:Ljava/lang/String;

    return-object v0
.end method

.method public getLine2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->line2:Ljava/lang/Object;

    return-object v0
.end method

.method public getLine3()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->line3:Ljava/lang/Object;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Data;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->city:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setCountry(Lcom/coinbase/api/internal/models/address/Country;)V
    .locals 0
    .param p1, "country"    # Lcom/coinbase/api/internal/models/address/Country;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->country:Lcom/coinbase/api/internal/models/address/Country;

    .line 184
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->id:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setLine1(Ljava/lang/String;)V
    .locals 0
    .param p1, "line1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->line1:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setLine2(Ljava/lang/Object;)V
    .locals 0
    .param p1, "line2"    # Ljava/lang/Object;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->line2:Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public setLine3(Ljava/lang/Object;)V
    .locals 0
    .param p1, "line3"    # Ljava/lang/Object;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->line3:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->postalCode:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->resource:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->resourcePath:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Data;->state:Ljava/lang/String;

    .line 148
    return-void
.end method
