.class Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$2;
.super Ljava/lang/Object;
.source "PhoneNumberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$2;->this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 121
    .local v2, "position":I
    iget-object v3, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$2;->this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-virtual {v3, v2}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/phoneNumber/Data;

    .line 122
    .local v1, "number":Lcom/coinbase/api/internal/models/phoneNumber/Data;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/phoneNumber/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v4, v4}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    move-result-object v0

    .line 123
    .local v0, "f":Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;
    iget-object v3, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$2;->this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    iget-object v3, v3, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "Verify"

    invoke-virtual {v0, v3, v4}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    return-void
.end method
