.class Lcom/coinbase/android/ui/CurrencySelectorLayout$1;
.super Ljava/lang/Object;
.source "CurrencySelectorLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/ui/CurrencySelectorLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/ui/CurrencySelectorLayout;


# direct methods
.method constructor <init>(Lcom/coinbase/android/ui/CurrencySelectorLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/ui/CurrencySelectorLayout;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout$1;->this$0:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout$1;->this$0:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    sget-object v1, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->setCurrency(Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;)V

    .line 94
    return-void
.end method
