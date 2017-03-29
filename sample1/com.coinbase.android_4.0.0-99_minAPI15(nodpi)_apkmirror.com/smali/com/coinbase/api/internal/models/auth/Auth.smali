.class public Lcom/coinbase/api/internal/models/auth/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
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
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/api/internal/models/auth/Auth;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/coinbase/api/internal/models/auth/Auth;->success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/coinbase/api/internal/models/auth/Auth;->code:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/coinbase/api/internal/models/auth/Auth;->success:Ljava/lang/Boolean;

    .line 34
    return-void
.end method
