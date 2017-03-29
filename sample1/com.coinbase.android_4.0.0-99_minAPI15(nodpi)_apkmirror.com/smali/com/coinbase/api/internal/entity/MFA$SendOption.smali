.class public Lcom/coinbase/api/internal/entity/MFA$SendOption;
.super Ljava/lang/Object;
.source "MFA.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/api/internal/entity/MFA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5a876355a566d138L


# instance fields
.field private _mask:Ljava/lang/String;

.field private _type:Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFA$SendOption;->_mask:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFA$SendOption;->_type:Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;

    return-object v0
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0
    .param p1, "_mask"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFA$SendOption;->_mask:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setType(Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFA$SendOption;->_type:Lcom/coinbase/api/internal/entity/MFA$SendOption$Type;

    .line 110
    return-void
.end method
