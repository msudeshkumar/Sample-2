.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PaymentMethodsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentMethodAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/v2/models/paymentMethods/Data;",
        ">;"
    }
.end annotation


# instance fields
.field private removeClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

.field private verifyClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 150
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$1;

    invoke-direct {v0, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$1;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;)V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$2;

    invoke-direct {v0, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$2;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;)V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->verifyClickListener:Landroid/view/View$OnClickListener;

    .line 127
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 131
    if-nez p2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 133
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300a3

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 136
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 137
    .local v1, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    const v4, 0x7f0d02d7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v4, 0x7f0d02d9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 139
    .local v2, "removeButton":Landroid/widget/Button;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v4, 0x7f0d02d8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 143
    .local v3, "verifyButton":Landroid/widget/Button;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 144
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->verifyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    return-object p2

    :cond_1
    move v4, v5

    .line 145
    goto :goto_0
.end method
