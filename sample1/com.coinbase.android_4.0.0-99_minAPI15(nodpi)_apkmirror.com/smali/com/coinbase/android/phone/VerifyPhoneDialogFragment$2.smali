.class Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$2;
.super Ljava/lang/Object;
.source "VerifyPhoneDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

.field final synthetic val$codeInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    iput-object p2, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$2;->val$codeInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$2;->val$codeInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "input":Ljava/lang/String;
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mPhoneId:Ljava/lang/String;
    invoke-static {v1}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->access$000(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    # invokes: Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->createPhoneNumber(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->access$100(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$2;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    # invokes: Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->verifyPhoneNumber(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->access$200(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Phone number code entered"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 96
    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
