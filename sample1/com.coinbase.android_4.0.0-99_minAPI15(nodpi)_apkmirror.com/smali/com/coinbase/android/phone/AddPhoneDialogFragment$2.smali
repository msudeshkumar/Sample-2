.class Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;
.super Ljava/lang/Object;
.source "AddPhoneDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/phone/AddPhoneDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/AddPhoneDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    iget-object v0, v0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mPhoneNumberInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    const v2, 0x7f0702dd

    invoke-virtual {v1, v2}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    iget-object v0, v0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mPhoneNumberInput:Landroid/widget/EditText;

    .line 132
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    .line 133
    # getter for: Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mShowTfa:Z
    invoke-static {v0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->access$000(Lcom/coinbase/android/phone/AddPhoneDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    iget-object v0, v0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->m2faInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    iget-object v0, v0, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->mCountryInput:Landroid/widget/Spinner;

    .line 134
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;

    invoke-virtual {v0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->getAlpha2()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v2, v3, v1, v0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->onUserConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->dismiss()V

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1
.end method
