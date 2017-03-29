.class Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$1;
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
    .line 107
    iput-object p1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$1;->this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 111
    .local v7, "position":I
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$1;->this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-virtual {v0, v7}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coinbase/api/internal/models/phoneNumber/Data;

    .line 112
    .local v6, "number":Lcom/coinbase/api/internal/models/phoneNumber/Data;
    iget-object v8, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$1;->this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    new-instance v0, Lcom/coinbase/android/phone/DeletePhoneTask;

    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$1;->this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    iget-object v1, v1, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$1;->this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-virtual {v2}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v6}, Lcom/coinbase/api/internal/models/phoneNumber/Data;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v6}, Lcom/coinbase/api/internal/models/phoneNumber/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/phone/DeletePhoneTask;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, v8, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->mDeletePhoneTask:Lcom/coinbase/android/phone/DeletePhoneTask;

    .line 113
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter$1;->this$1:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    iget-object v0, v0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->mDeletePhoneTask:Lcom/coinbase/android/phone/DeletePhoneTask;

    invoke-virtual {v0}, Lcom/coinbase/android/phone/DeletePhoneTask;->deletePhoneNumber()V

    .line 114
    return-void
.end method
