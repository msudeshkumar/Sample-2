.class Lcom/coinbase/android/signin/TwoFactorActivity$3;
.super Ljava/lang/Object;
.source "TwoFactorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/TwoFactorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/TwoFactorActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/TwoFactorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/TwoFactorActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$3;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$3;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/TwoFactorActivity;->onBackPressed()V

    .line 129
    return-void
.end method
