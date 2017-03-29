.class Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$1;
.super Ljava/lang/Object;
.source "JumioAcceptableDocumentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 170
    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;

    iget-object v4, v4, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v4}, Lcom/coinbase/api/internal/entity/JumioDocument;->getSupportedIdTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    .line 174
    .local v2, "idType":Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;
    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;

    invoke-virtual {v4}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    .line 175
    .local v0, "activity":Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;
    invoke-virtual {v0, v5}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->setFrontBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    invoke-virtual {v0, v5}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->setBackBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;

    invoke-virtual {v4}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v3, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "jumio_doc_key"

    iget-object v5, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;

    iget-object v5, v5, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 182
    const-string v4, "jumio_doc_index_key"

    invoke-virtual {v1, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;

    invoke-virtual {v4}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;

    invoke-interface {v4, v3}, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;->verificationProfileAction(Landroid/content/Intent;)V

    .line 185
    return-void
.end method
