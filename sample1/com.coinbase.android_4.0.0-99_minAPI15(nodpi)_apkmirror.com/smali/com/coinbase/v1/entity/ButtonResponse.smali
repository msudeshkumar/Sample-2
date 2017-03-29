.class public Lcom/coinbase/v1/entity/ButtonResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "ButtonResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x1661ffd88ce09bc4L


# instance fields
.field private _button:Lcom/coinbase/v1/entity/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getButton()Lcom/coinbase/v1/entity/Button;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/ButtonResponse;->_button:Lcom/coinbase/v1/entity/Button;

    return-object v0
.end method

.method public setButton(Lcom/coinbase/v1/entity/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/coinbase/v1/entity/Button;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/ButtonResponse;->_button:Lcom/coinbase/v1/entity/Button;

    .line 16
    return-void
.end method
