.class Lcom/coinbase/api/ProductionLoginManager$RevokeTokenTask;
.super Lroboguice/util/RoboAsyncTask;
.source "ProductionLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/api/ProductionLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevokeTokenTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/RoboAsyncTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mClient:Lcom/coinbase/Coinbase;

.field final synthetic this$0:Lcom/coinbase/api/ProductionLoginManager;


# direct methods
.method public constructor <init>(Lcom/coinbase/api/ProductionLoginManager;Lcom/coinbase/Coinbase;)V
    .locals 1
    .param p2, "client"    # Lcom/coinbase/Coinbase;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/coinbase/api/ProductionLoginManager$RevokeTokenTask;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    .line 50
    iget-object v0, p1, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-direct {p0, v0}, Lroboguice/util/RoboAsyncTask;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/coinbase/api/ProductionLoginManager$RevokeTokenTask;->mClient:Lcom/coinbase/Coinbase;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager$RevokeTokenTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coinbase/api/ProductionLoginManager$RevokeTokenTask;->mClient:Lcom/coinbase/Coinbase;

    invoke-virtual {v0}, Lcom/coinbase/Coinbase;->revokeToken()V

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method
