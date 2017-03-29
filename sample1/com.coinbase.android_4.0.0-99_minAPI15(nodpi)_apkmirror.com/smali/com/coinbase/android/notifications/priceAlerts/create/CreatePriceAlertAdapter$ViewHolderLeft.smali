.class public Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderLeft;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CreatePriceAlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderLeft"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderLeft;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;

    .line 95
    invoke-direct {p0, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 97
    iput-object p2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderLeft;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method
