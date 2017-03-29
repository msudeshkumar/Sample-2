.class public Lcom/coinbase/api/internal/models/auth/Error;
.super Ljava/lang/Object;
.source "Error.java"


# instance fields
.field private _2faAuthentication:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "2fa_authentication"
    .end annotation
.end field

.field private error:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field private success:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
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
.method public get2faAuthentication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/coinbase/api/internal/models/auth/Error;->_2faAuthentication:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/coinbase/api/internal/models/auth/Error;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/coinbase/api/internal/models/auth/Error;->success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public set2faAuthentication(Ljava/lang/String;)V
    .locals 0
    .param p1, "_2faAuthentication"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/coinbase/api/internal/models/auth/Error;->_2faAuthentication:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/coinbase/api/internal/models/auth/Error;->error:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/coinbase/api/internal/models/auth/Error;->success:Ljava/lang/Boolean;

    .line 37
    return-void
.end method
