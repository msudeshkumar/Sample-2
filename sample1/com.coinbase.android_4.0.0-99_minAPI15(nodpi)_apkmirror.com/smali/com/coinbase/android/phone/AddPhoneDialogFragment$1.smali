.class Lcom/coinbase/android/phone/AddPhoneDialogFragment$1;
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
    .line 115
    iput-object p1, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$1;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$1;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->dismiss()V

    .line 119
    return-void
.end method
