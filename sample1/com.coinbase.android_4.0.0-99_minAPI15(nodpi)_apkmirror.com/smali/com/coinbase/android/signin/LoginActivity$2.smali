.class Lcom/coinbase/android/signin/LoginActivity$2;
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
    .line 211
    iput-object p1, p0, Lcom/coinbase/android/signin/LoginActivity$2;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    const-string v1, "https://www.coinbase.com/password_resets/new"

    .line 215
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 217
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$2;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v2, v0}, Lcom/coinbase/android/signin/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method
