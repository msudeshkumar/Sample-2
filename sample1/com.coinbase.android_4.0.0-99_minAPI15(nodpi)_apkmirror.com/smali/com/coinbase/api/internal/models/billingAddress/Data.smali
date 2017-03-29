.class public Lcom/coinbase/api/internal/models/billingAddress/Data;
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

.field private country:Lcom/coinbase/api/internal/models/Country;
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

.field private line2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "line2"
    .end annotation
.end field

.field private line3:Ljava/lang/String;
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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Lcom/coinbase/api/internal/models/Country;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->country:Lcom/coinbase/api/internal/models/Country;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->line1:Ljava/lang/String;

    return-object v0
.end method

.method public getLine2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->line2:Ljava/lang/String;

    return-object v0
.end method

.method public getLine3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->line3:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->city:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCountry(Lcom/coinbase/api/internal/models/Country;)V
    .locals 0
    .param p1, "country"    # Lcom/coinbase/api/internal/models/Country;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->country:Lcom/coinbase/api/internal/models/Country;

    .line 185
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLine1(Ljava/lang/String;)V
    .locals 0
    .param p1, "line1"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->line1:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setLine2(Ljava/lang/String;)V
    .locals 0
    .param p1, "line2"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->line2:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setLine3(Ljava/lang/String;)V
    .locals 0
    .param p1, "line3"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->line3:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->postalCode:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->resource:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->resourcePath:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/Data;->state:Ljava/lang/String;

    .line 149
    return-void
.end method
