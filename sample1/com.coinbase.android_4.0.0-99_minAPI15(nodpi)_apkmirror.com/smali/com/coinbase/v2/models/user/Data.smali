.class public Lcom/coinbase/v2/models/user/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
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

.field private profileBio:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_bio"
    .end annotation
.end field

.field private profileLocation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_location"
    .end annotation
.end field

.field private profileUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_url"
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

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->profileBio:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->profileLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->profileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/coinbase/v2/models/user/Data;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->avatarUrl:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->email:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setProfileBio(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileBio"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->profileBio:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setProfileLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileLocation"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->profileLocation:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setProfileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileUrl"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->profileUrl:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->resource:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->resourcePath:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/coinbase/v2/models/user/Data;->username:Ljava/lang/String;

    .line 93
    return-void
.end method
