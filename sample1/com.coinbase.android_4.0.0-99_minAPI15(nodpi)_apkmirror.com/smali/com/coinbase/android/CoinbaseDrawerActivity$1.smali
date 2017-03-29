.class Lcom/coinbase/android/CoinbaseDrawerActivity$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "CoinbaseDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/CoinbaseDrawerActivity;->initDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/CoinbaseDrawerActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/CoinbaseDrawerActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 6
    .param p1, "this$0"    # Lcom/coinbase/android/CoinbaseDrawerActivity;
    .param p2, "arg0"    # Landroid/app/Activity;
    .param p3, "arg1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "arg2"    # Landroid/support/v7/widget/Toolbar;
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lcom/coinbase/android/CoinbaseDrawerActivity$1;->this$0:Lcom/coinbase/android/CoinbaseDrawerActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity$1;->this$0:Lcom/coinbase/android/CoinbaseDrawerActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onDrawerClosed()V

    .line 121
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity$1;->this$0:Lcom/coinbase/android/CoinbaseDrawerActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onDrawerOpened()V

    .line 116
    return-void
.end method
