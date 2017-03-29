.class Lcom/coinbase/android/pin/PINSettingDialogFragment$1;
.super Ljava/lang/Object;
.source "PINSettingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pin/PINSettingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pin/PINSettingDialogFragment;

.field final synthetic val$optionsList:Landroid/widget/ListView;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pin/PINSettingDialogFragment;Landroid/widget/ListView;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pin/PINSettingDialogFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/coinbase/android/pin/PINSettingDialogFragment$1;->this$0:Lcom/coinbase/android/pin/PINSettingDialogFragment;

    iput-object p2, p0, Lcom/coinbase/android/pin/PINSettingDialogFragment$1;->val$optionsList:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/coinbase/android/pin/PINSettingDialogFragment$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 82
    const/4 v3, 0x0

    .line 85
    .local v3, "pinEnabled":Z
    iget-object v4, p0, Lcom/coinbase/android/pin/PINSettingDialogFragment$1;->val$optionsList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 86
    .local v2, "options":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 87
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/coinbase/android/pin/PINSettingDialogFragment$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/coinbase/android/pin/PINSettingDialogFragment$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v5, "account_pin"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 93
    const-string v4, "account_pin"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v4, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 97
    sget-object v4, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    iget-object v4, p0, Lcom/coinbase/android/pin/PINSettingDialogFragment$1;->this$0:Lcom/coinbase/android/pin/PINSettingDialogFragment;

    iget-object v4, v4, Lcom/coinbase/android/pin/PINSettingDialogFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v5, Lcom/coinbase/android/event/UserDataUpdatedEvent;

    invoke-direct {v5}, Lcom/coinbase/android/event/UserDataUpdatedEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 104
    return-void
.end method
