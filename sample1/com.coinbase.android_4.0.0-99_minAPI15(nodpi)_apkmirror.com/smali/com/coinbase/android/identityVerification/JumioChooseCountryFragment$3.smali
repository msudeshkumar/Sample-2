.class Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$3;
.super Landroid/widget/ArrayAdapter;
.source "JumioChooseCountryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->createAdapter(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/api/internal/entity/JumioDocument;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 234
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioDocument;>;"
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$3;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 238
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-object v0
.end method
