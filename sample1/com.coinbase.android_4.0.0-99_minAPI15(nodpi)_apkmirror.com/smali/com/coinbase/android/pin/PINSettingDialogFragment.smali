.class public Lcom/coinbase/android/pin/PINSettingDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "PINSettingDialogFragment.java"


# instance fields
.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPinManager:Lcom/coinbase/android/pin/PINManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 43
    .local v5, "li":Landroid/view/LayoutInflater;
    const v11, 0x7f03007d

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 45
    .local v9, "rootView":Landroid/view/View;
    const/4 v11, 0x4

    new-array v3, v11, [Ljava/lang/Integer;

    const/4 v11, 0x0

    const v12, 0x7f0701c1

    .line 46
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const v12, 0x7f0701c9

    .line 47
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const/4 v11, 0x2

    const v12, 0x7f0701c2

    .line 48
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const/4 v11, 0x3

    const v12, 0x7f0701c8

    .line 49
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    .line 52
    .local v3, "items":[Ljava/lang/Integer;
    array-length v11, v3

    new-array v4, v11, [Ljava/lang/String;

    .line 53
    .local v4, "itemsText":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v11, v3

    if-ge v2, v11, :cond_0

    .line 54
    aget-object v11, v3, v2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const v11, 0x7f0d01f0

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 58
    .local v10, "titleView":Landroid/widget/TextView;
    const v11, 0x7f070101

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const v11, 0x7f0d01f1

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 61
    .local v6, "optionsList":Landroid/widget/ListView;
    new-instance v11, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const v13, 0x1090010

    invoke-direct {v11, v12, v13, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 66
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 69
    .local v7, "pinEnabled":Z
    sget-object v12, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    array-length v13, v12

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_1

    aget-object v0, v12, v11

    .line 70
    .local v0, "KEY":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-interface {v8, v0, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    or-int/2addr v7, v14

    .line 69
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 73
    .end local v0    # "KEY":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    array-length v11, v3

    if-ge v2, v11, :cond_3

    .line 74
    if-nez v7, :cond_2

    const/4 v11, 0x1

    :goto_3
    sget-object v12, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    aget-object v12, v12, v2

    const/4 v13, 0x0

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v6, v2, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 74
    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 78
    const-string v11, ""

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    const v11, 0x7f07019f

    new-instance v12, Lcom/coinbase/android/pin/PINSettingDialogFragment$1;

    invoke-direct {v12, p0, v6, v8}, Lcom/coinbase/android/pin/PINSettingDialogFragment$1;-><init>(Lcom/coinbase/android/pin/PINSettingDialogFragment;Landroid/widget/ListView;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    const v11, 0x7f0700b4

    new-instance v12, Lcom/coinbase/android/pin/PINSettingDialogFragment$2;

    invoke-direct {v12, p0}, Lcom/coinbase/android/pin/PINSettingDialogFragment$2;-><init>(Lcom/coinbase/android/pin/PINSettingDialogFragment;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onStart()V

    .line 121
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 122
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 125
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 126
    return-void
.end method
