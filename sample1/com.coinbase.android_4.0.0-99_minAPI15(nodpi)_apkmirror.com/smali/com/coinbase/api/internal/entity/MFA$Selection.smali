.class public Lcom/coinbase/api/internal/entity/MFA$Selection;
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
    name = "Selection"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6cfe97a5ba7ac21eL


# instance fields
.field private _answers:[Ljava/lang/String;

.field private _question:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFA$Selection;->_answers:[Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFA$Selection;->_question:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswers([Ljava/lang/String;)V
    .locals 0
    .param p1, "answers"    # [Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFA$Selection;->_answers:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0
    .param p1, "question"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFA$Selection;->_question:Ljava/lang/String;

    .line 50
    return-void
.end method
