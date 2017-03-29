.class Lcom/coinbase/android/signin/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/LoginActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/LoginActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/coinbase/android/signin/LoginActivity$3;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$3;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/LoginActivity;->onBackPressed()V

    .line 225
    return-void
.end method
