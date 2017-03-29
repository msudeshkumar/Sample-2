.class Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AddPlaidAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BankAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/api/internal/entity/Institution;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Lcom/coinbase/api/internal/entity/Institution;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Lcom/coinbase/api/internal/entity/Institution;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 41
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v1, 0x7f0d02b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/Institution;

    invoke-static {v2}, Lcom/coinbase/android/utils/Utils;->getInstitutionLogo(Lcom/coinbase/api/internal/entity/Institution;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    return-object p2
.end method
