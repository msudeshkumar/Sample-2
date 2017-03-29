.class Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1$1;
.super Ljava/lang/Object;
.source "WidgetChooseCurrencyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;

.field final synthetic val$currencies:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1$1;->this$1:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;

    iput-object p2, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1$1;->val$currencies:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1$1;->this$1:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;

    iget-object v0, v0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;->this$0:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    iget-object v1, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1$1;->val$currencies:Ljava/util/List;

    # invokes: Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->loadCurrencies(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->access$100(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;Ljava/util/List;)V

    .line 52
    return-void
.end method
