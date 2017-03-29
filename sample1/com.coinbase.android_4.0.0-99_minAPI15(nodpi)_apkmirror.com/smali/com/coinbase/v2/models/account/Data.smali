.class public Lcom/coinbase/v2/models/account/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v2/models/account/Data$Type;
    }
.end annotation


# instance fields
.field private active:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "active"
    .end annotation
.end field

.field private balance:Lcom/coinbase/v2/models/account/Balance;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "balance"
    .end annotation
.end field

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private nativeBalance:Lcom/coinbase/v2/models/account/NativeBalance;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_balance"
    .end annotation
.end field

.field private primary:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary"
    .end annotation
.end field

.field private ready:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ready"
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

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
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
.method public getActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBalance()Lcom/coinbase/v2/models/account/Balance;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->balance:Lcom/coinbase/v2/models/account/Balance;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->nativeBalance:Lcom/coinbase/v2/models/account/NativeBalance;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/coinbase/v2/models/account/Data;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "active"    # Ljava/lang/Boolean;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->active:Ljava/lang/Boolean;

    .line 316
    return-void
.end method

.method public setBalance(Lcom/coinbase/v2/models/account/Balance;)V
    .locals 0
    .param p1, "balance"    # Lcom/coinbase/v2/models/account/Balance;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->balance:Lcom/coinbase/v2/models/account/Balance;

    .line 189
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->createdAt:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->currency:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->id:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->name:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setNativeBalance(Lcom/coinbase/v2/models/account/NativeBalance;)V
    .locals 0
    .param p1, "nativeBalance"    # Lcom/coinbase/v2/models/account/NativeBalance;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->nativeBalance:Lcom/coinbase/v2/models/account/NativeBalance;

    .line 207
    return-void
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->primary:Ljava/lang/Boolean;

    .line 135
    return-void
.end method

.method public setReady(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "ready"    # Ljava/lang/Boolean;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->ready:Ljava/lang/Boolean;

    .line 297
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->resource:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->resourcePath:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->type:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/coinbase/v2/models/account/Data;->updatedAt:Ljava/lang/String;

    .line 243
    return-void
.end method
