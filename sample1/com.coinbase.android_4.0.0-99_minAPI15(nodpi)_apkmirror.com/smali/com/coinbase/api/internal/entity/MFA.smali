.class public Lcom/coinbase/api/internal/entity/MFA;
.super Ljava/lang/Object;
.source "MFA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/api/internal/entity/MFA$SendOption;,
        Lcom/coinbase/api/internal/entity/MFA$Selection;,
        Lcom/coinbase/api/internal/entity/MFA$Type;
    }
.end annotation


# instance fields
.field private _questions:[Ljava/lang/String;

.field private _selections:[Lcom/coinbase/api/internal/entity/MFA$Selection;

.field private _sendOptions:[Lcom/coinbase/api/internal/entity/MFA$SendOption;

.field private _type:Lcom/coinbase/api/internal/entity/MFA$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuestions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFA;->_questions:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelections()[Lcom/coinbase/api/internal/entity/MFA$Selection;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFA;->_selections:[Lcom/coinbase/api/internal/entity/MFA$Selection;

    return-object v0
.end method

.method public getSendOptions()[Lcom/coinbase/api/internal/entity/MFA$SendOption;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFA;->_sendOptions:[Lcom/coinbase/api/internal/entity/MFA$SendOption;

    return-object v0
.end method

.method public getType()Lcom/coinbase/api/internal/entity/MFA$Type;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFA;->_type:Lcom/coinbase/api/internal/entity/MFA$Type;

    return-object v0
.end method

.method public setQuestions([Ljava/lang/String;)V
    .locals 0
    .param p1, "questions"    # [Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFA;->_questions:[Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setSelections([Lcom/coinbase/api/internal/entity/MFA$Selection;)V
    .locals 0
    .param p1, "selections"    # [Lcom/coinbase/api/internal/entity/MFA$Selection;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFA;->_selections:[Lcom/coinbase/api/internal/entity/MFA$Selection;

    .line 138
    return-void
.end method

.method public setSendOptions([Lcom/coinbase/api/internal/entity/MFA$SendOption;)V
    .locals 0
    .param p1, "sendOptions"    # [Lcom/coinbase/api/internal/entity/MFA$SendOption;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFA;->_sendOptions:[Lcom/coinbase/api/internal/entity/MFA$SendOption;

    .line 154
    return-void
.end method

.method public setType(Lcom/coinbase/api/internal/entity/MFA$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/coinbase/api/internal/entity/MFA$Type;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/MFA;->_type:Lcom/coinbase/api/internal/entity/MFA$Type;

    .line 130
    return-void
.end method
