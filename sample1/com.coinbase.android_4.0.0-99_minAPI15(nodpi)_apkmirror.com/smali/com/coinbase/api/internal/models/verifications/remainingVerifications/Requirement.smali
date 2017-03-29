.class public Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;
.super Ljava/lang/Object;
.source "Requirement.java"


# instance fields
.field private required:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "required"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private step:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "step"
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
.method public getRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;->required:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;->step:Ljava/lang/String;

    return-object v0
.end method

.method public setRequired(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "required"    # Ljava/lang/Boolean;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;->required:Ljava/lang/Boolean;

    .line 72
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;->status:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "step"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;->step:Ljava/lang/String;

    .line 36
    return-void
.end method
