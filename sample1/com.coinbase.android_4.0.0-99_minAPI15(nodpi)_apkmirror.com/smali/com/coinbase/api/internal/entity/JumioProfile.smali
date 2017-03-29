.class public Lcom/coinbase/api/internal/entity/JumioProfile;
.super Ljava/lang/Object;
.source "JumioProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/api/internal/entity/JumioProfile$Country;,
        Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x662cb6818a946a02L


# instance fields
.field _country:Lcom/coinbase/api/internal/entity/JumioProfile$Country;

.field _dob:Ljava/lang/String;

.field _failureReason:Ljava/lang/String;

.field _firstName:Ljava/lang/String;

.field _id:Ljava/lang/String;

.field _lastName:Ljava/lang/String;

.field _status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

.field _type:Lcom/coinbase/api/internal/entity/JumioProfileType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountry()Lcom/coinbase/api/internal/entity/JumioProfile$Country;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_country:Lcom/coinbase/api/internal/entity/JumioProfile$Country;

    return-object v0
.end method

.method public getDob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_dob:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_failureReason:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    return-object v0
.end method

.method public getType()Lcom/coinbase/api/internal/entity/JumioProfileType;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_type:Lcom/coinbase/api/internal/entity/JumioProfileType;

    return-object v0
.end method

.method public setCountry(Lcom/coinbase/api/internal/entity/JumioProfile$Country;)V
    .locals 0
    .param p1, "country"    # Lcom/coinbase/api/internal/entity/JumioProfile$Country;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_country:Lcom/coinbase/api/internal/entity/JumioProfile$Country;

    .line 129
    return-void
.end method

.method public setDob(Ljava/lang/String;)V
    .locals 0
    .param p1, "dob"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_dob:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setFailureReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "failureReason"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_failureReason:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_firstName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_id:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_lastName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setStatus(Lcom/coinbase/api/internal/entity/JumioProfile$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 97
    return-void
.end method

.method public setType(Lcom/coinbase/api/internal/entity/JumioProfileType;)V
    .locals 0
    .param p1, "type"    # Lcom/coinbase/api/internal/entity/JumioProfileType;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfile;->_type:Lcom/coinbase/api/internal/entity/JumioProfileType;

    .line 105
    return-void
.end method
