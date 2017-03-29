.class public Lcom/coinbase/v1/entity/ApplicationResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "ApplicationResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x74dd9de812ab9a26L


# instance fields
.field private _application:Lcom/coinbase/v1/entity/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplication()Lcom/coinbase/v1/entity/Application;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/ApplicationResponse;->_application:Lcom/coinbase/v1/entity/Application;

    return-object v0
.end method

.method public setApplication(Lcom/coinbase/v1/entity/Application;)V
    .locals 0
    .param p1, "application"    # Lcom/coinbase/v1/entity/Application;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/ApplicationResponse;->_application:Lcom/coinbase/v1/entity/Application;

    .line 16
    return-void
.end method
