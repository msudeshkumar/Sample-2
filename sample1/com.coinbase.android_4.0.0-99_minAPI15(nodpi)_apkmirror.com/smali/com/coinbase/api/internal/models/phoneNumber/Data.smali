.class public Lcom/coinbase/api/internal/models/phoneNumber/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private primary:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary"
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

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field

.field private verified:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verified"
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
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->createdAt:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->id:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->number:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->primary:Ljava/lang/Boolean;

    .line 89
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->resource:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->resourcePath:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->updatedAt:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setVerified(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "verified"    # Ljava/lang/Boolean;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/coinbase/api/internal/models/phoneNumber/Data;->verified:Ljava/lang/Boolean;

    .line 107
    return-void
.end method
