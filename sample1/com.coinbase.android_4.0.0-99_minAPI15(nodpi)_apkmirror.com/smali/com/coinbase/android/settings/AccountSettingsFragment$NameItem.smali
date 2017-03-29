.class Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameItem"
.end annotation


# instance fields
.field protected mName:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070054
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "account_full_name"

    invoke-virtual {p0, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;->getCachedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 146
    new-instance v1, Lcom/coinbase/android/settings/ChangeNameDialogFragment;

    invoke-direct {v1}, Lcom/coinbase/android/settings/ChangeNameDialogFragment;-><init>()V

    .line 147
    .local v1, "dialog":Landroid/support/v4/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "InputTextDialogFragment_Input"

    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 150
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "change_name"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 151
    return-void
.end method
