.class Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$1;
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


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    iget-object v0, v0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 103
    return-void
.end method
