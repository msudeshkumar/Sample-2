.class public Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;
.super Lroboguice/fragment/RoboFragment;
.source "AddPlaidAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;
    }
.end annotation


# static fields
.field private static final INTENT_ADD:I = 0x2711


# instance fields
.field mAccountGrid:Landroid/widget/GridView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0176
    .end annotation
.end field

.field private mAdapter:Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;

.field mOtherBank:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0177
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/coinbase/api/internal/entity/Institution;->values()[Lcom/coinbase/api/internal/entity/Institution;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;-><init>(Landroid/content/Context;[Lcom/coinbase/api/internal/entity/Institution;)V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;

    .line 65
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->mAccountGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->mAccountGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->mOtherBank:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 92
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "manual"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Bank account is not on the list"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const v0, 0x7f03005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "PlaidAccountLoginActivity_Institution"

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;

    invoke-virtual {v2, p3}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    const/16 v2, 0x2711

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property: Bank Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;

    invoke-virtual {v2, p3}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment$BankAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/Institution;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/Institution;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "property":Ljava/lang/String;
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const-string v3, "Event - Bank account selected"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    return-void
.end method
