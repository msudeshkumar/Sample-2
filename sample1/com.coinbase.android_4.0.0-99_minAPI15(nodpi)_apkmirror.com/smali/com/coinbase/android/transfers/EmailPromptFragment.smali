.class public Lcom/coinbase/android/transfers/EmailPromptFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "EmailPromptFragment.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "EmailPromptFragment_Account"

.field public static final AMOUNT:Ljava/lang/String; = "EmailPromptFragment_Amount"

.field public static final NOTES:Ljava/lang/String; = "EmailPromptFragment_Notes"


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field mAccountId:Ljava/lang/String;

.field mAmount:Lorg/joda/money/Money;

.field protected mAutocompleteAdapter:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mNotes:Ljava/lang/String;

.field messageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f07026b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    .line 50
    return-void
.end method

.method public static newInstance(Lorg/joda/money/Money;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/android/transfers/EmailPromptFragment;
    .locals 3
    .param p0, "amount"    # Lorg/joda/money/Money;
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "notes"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Lcom/coinbase/android/transfers/EmailPromptFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transfers/EmailPromptFragment;-><init>()V

    .line 54
    .local v1, "dialog":Lcom/coinbase/android/transfers/EmailPromptFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "EmailPromptFragment_Amount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    const-string v2, "EmailPromptFragment_Notes"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "EmailPromptFragment_Account"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/coinbase/android/transfers/EmailPromptFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/EmailPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EmailPromptFragment_Notes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/transfers/EmailPromptFragment;->mNotes:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/EmailPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EmailPromptFragment_Amount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/joda/money/Money;

    iput-object v0, p0, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAmount:Lorg/joda/money/Money;

    .line 66
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/EmailPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EmailPromptFragment_Account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAccountId:Ljava/lang/String;

    .line 67
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 73
    iget-object v5, p0, Lcom/coinbase/android/transfers/EmailPromptFragment;->messageFormat:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAmount:Lorg/joda/money/Money;

    iget-object v8, p0, Lcom/coinbase/android/transfers/EmailPromptFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v8}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/EmailPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0300bd

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0d02fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "messageView":Landroid/widget/TextView;
    const v5, 0x7f0d02fd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 79
    .local v1, "field":Landroid/widget/AutoCompleteTextView;
    new-instance v5, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/EmailPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v9}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAutocompleteAdapter:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    .line 80
    iget-object v5, p0, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAutocompleteAdapter:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    invoke-virtual {v1, v9}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 83
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {}, Lcom/coinbase/android/utils/PlatformUtils;->hasHoneycomb()Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/EmailPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 91
    const v5, 0x7f07019f

    new-instance v6, Lcom/coinbase/android/transfers/EmailPromptFragment$1;

    invoke-direct {v6, p0, v1}, Lcom/coinbase/android/transfers/EmailPromptFragment$1;-><init>(Lcom/coinbase/android/transfers/EmailPromptFragment;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v5, 0x7f0700b4

    new-instance v6, Lcom/coinbase/android/transfers/EmailPromptFragment$2;

    invoke-direct {v6, p0}, Lcom/coinbase/android/transfers/EmailPromptFragment$2;-><init>(Lcom/coinbase/android/transfers/EmailPromptFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
