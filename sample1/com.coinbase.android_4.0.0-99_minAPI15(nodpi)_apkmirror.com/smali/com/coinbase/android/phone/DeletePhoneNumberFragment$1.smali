.class Lcom/coinbase/android/phone/DeletePhoneNumberFragment$1;
.super Ljava/lang/Object;
.source "DeletePhoneNumberFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/phone/DeletePhoneNumberFragment;

.field final synthetic val$userInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/DeletePhoneNumberFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/DeletePhoneNumberFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneNumberFragment;

    iput-object p2, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment$1;->val$userInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneNumberFragment;

    iget-object v1, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment$1;->val$userInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->onSubmit(Ljava/lang/String;)V

    .line 73
    return-void
.end method
