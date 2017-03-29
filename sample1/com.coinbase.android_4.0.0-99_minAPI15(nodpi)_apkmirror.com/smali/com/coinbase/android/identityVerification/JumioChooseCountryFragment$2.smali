.class Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$2;
.super Ljava/lang/Object;
.source "JumioChooseCountryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$2;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v5, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$2;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v5, v5, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mJumioDocuments:Ljava/util/List;

    if-nez v5, :cond_0

    .line 219
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$2;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-virtual {v5}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0d01c5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 210
    .local v4, "sp":Landroid/widget/Spinner;
    const-string v5, "Coinbase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Spinner selected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 212
    .local v3, "nPos":I
    iget-object v5, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$2;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v5, v5, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mJumioDocuments:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/entity/JumioDocument;

    .line 214
    .local v0, "doc":Lcom/coinbase/api/internal/entity/JumioDocument;
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$2;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-virtual {v5}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v1, "extras":Landroid/os/Bundle;
    const-string v5, "jumio_doc_key"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 217
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 218
    iget-object v5, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$2;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-virtual {v5}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;

    invoke-interface {v5, v2}, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;->verificationProfileAction(Landroid/content/Intent;)V

    goto :goto_0
.end method
