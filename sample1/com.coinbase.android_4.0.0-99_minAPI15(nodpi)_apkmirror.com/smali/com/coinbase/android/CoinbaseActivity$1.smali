.class Lcom/coinbase/android/CoinbaseActivity$1;
.super Ljava/lang/Object;
.source "CoinbaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/CoinbaseActivity;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/CoinbaseActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/CoinbaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/CoinbaseActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/coinbase/android/CoinbaseActivity$1;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseActivity$1;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 174
    return-void
.end method
