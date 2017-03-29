.class public Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private answers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "answers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mask:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mask"
    .end annotation
.end field

.field private question:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "question"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;, "Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->answers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;, "Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data<TT;>;"
    iget-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->answers:Ljava/util/List;

    return-object v0
.end method

.method public getMask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;, "Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data<TT;>;"
    iget-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->mask:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;, "Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data<TT;>;"
    iget-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;, "Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data<TT;>;"
    iget-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;, "Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data<TT;>;"
    .local p1, "answers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->answers:Ljava/util/List;

    .line 92
    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0
    .param p1, "mask"    # Ljava/lang/String;

    .prologue
    .line 109
    .local p0, "this":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;, "Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data<TT;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->mask:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0
    .param p1, "question"    # Ljava/lang/String;

    .prologue
    .line 73
    .local p0, "this":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;, "Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data<TT;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->question:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 127
    .local p0, "this":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;, "Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data<TT;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->type:Ljava/lang/String;

    .line 128
    return-void
.end method
