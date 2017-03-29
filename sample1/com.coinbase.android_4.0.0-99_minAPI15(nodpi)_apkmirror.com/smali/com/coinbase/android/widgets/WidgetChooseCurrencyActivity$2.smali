.class Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;
.super Landroid/widget/BaseAdapter;
.source "WidgetChooseCurrencyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->loadCurrencies(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

.field final synthetic val$currencies:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;->this$0:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    iput-object p2, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;->val$currencies:Ljava/util/List;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;->val$currencies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;->val$currencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;->getItem(I)Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/joda/money/CurrencyUnit;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;->val$currencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/money/CurrencyUnit;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v1, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;->this$0:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    .local v0, "text1":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;->getItem(I)Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-object p2
.end method
