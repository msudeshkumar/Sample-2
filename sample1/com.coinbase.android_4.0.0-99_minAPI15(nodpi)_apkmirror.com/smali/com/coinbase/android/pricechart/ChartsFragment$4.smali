.class Lcom/coinbase/android/pricechart/ChartsFragment$4;
.super Ljava/lang/Object;
.source "ChartsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pricechart/ChartsFragment;->updateAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pricechart/ChartsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pricechart/ChartsFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/coinbase/android/pricechart/ChartsFragment$4;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment$4;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    # invokes: Lcom/coinbase/android/pricechart/ChartsFragment;->hideRateNotice()V
    invoke-static {v0}, Lcom/coinbase/android/pricechart/ChartsFragment;->access$000(Lcom/coinbase/android/pricechart/ChartsFragment;)V

    .line 182
    return-void
.end method
