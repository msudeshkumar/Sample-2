.class public Lcom/coinbase/android/accounts/NewAccountDialogFragment;
.super Lcom/coinbase/android/dialog/InputTextDialogFragment;
.source "NewAccountDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const v0, 0x7f07014b

    invoke-virtual {p0, v0}, Lcom/coinbase/android/accounts/NewAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f070184

    invoke-virtual {p0, v0}, Lcom/coinbase/android/accounts/NewAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSubmit(Ljava/lang/String;)V
    .locals 2
    .param p1, "enteredValue"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/coinbase/android/accounts/CreateAccountTask;

    invoke-virtual {p0}, Lcom/coinbase/android/accounts/NewAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/coinbase/android/accounts/CreateAccountTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .local v0, "task":Lcom/coinbase/android/accounts/CreateAccountTask;
    invoke-virtual {v0}, Lcom/coinbase/android/accounts/CreateAccountTask;->createAccount()V

    .line 23
    return-void
.end method
