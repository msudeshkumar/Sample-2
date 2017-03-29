.class public Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;
.super Landroid/widget/RemoteViewsService;
.source "TransactionsRemoteViewsService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final WIDGET_TRANSACTION_LIMIT:Ljava/lang/String; = "10"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    new-instance v0, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "account_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/coinbase/android/widgets/TransactionsRemoteViewsService$TransactionsRemoteViewsFactory;-><init>(Lcom/coinbase/android/widgets/TransactionsRemoteViewsService;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
