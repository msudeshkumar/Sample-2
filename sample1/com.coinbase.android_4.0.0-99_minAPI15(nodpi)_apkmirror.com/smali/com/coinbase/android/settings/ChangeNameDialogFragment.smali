.class public Lcom/coinbase/android/settings/ChangeNameDialogFragment;
.super Lcom/coinbase/android/dialog/InputTextDialogFragment;
.source "ChangeNameDialogFragment.java"


# instance fields
.field protected mTitle:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0701fb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x61

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/coinbase/android/settings/ChangeNameDialogFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onSubmit(Ljava/lang/String;)V
    .locals 4
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v1, Lcom/coinbase/v1/entity/User;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/User;-><init>()V

    .line 25
    .local v1, "user":Lcom/coinbase/v1/entity/User;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/User;->setName(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/coinbase/android/settings/UpdateUserTask;

    invoke-virtual {p0}, Lcom/coinbase/android/settings/ChangeNameDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "account_full_name"

    invoke-direct {v0, v2, v1, v3, p1}, Lcom/coinbase/android/settings/UpdateUserTask;-><init>(Landroid/content/Context;Lcom/coinbase/v1/entity/User;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .local v0, "task":Lcom/coinbase/android/settings/UpdateUserTask;
    invoke-virtual {v0}, Lcom/coinbase/android/settings/UpdateUserTask;->execute()V

    .line 28
    return-void
.end method
