.class public Lcom/coinbase/android/transfers/TransferSendFragment;
.super Lroboguice/fragment/RoboFragment;
.source "TransferSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;,
        Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;,
        Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;,
        Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;,
        Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;,
        Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;,
        Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;
    }
.end annotation


# static fields
.field public static final DIALOG_FRAGMENT:I = 0x2713

.field private static final REQUEST_PIN:I = 0x2711

.field private static final REQUEST_QR:I = 0x2712

.field private static final TRANSFER_WITHOUT_CONFIRM_AMOUNT:D = 0.1


# instance fields
.field private contactsPermissionsDenied:Z

.field private mAddress:Ljava/lang/String;

.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mCBSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

.field private mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

.field mContactAvatar:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02a0
    .end annotation
.end field

.field mContactClearButton:Landroid/widget/ImageButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02a2
    .end annotation
.end field

.field mContactNameLabel:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02a1
    .end annotation
.end field

.field mContactSpacer:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02a3
    .end annotation
.end field

.field mContactView:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d029f
    .end annotation
.end field

.field private mContactsHeader:Landroid/widget/TextView;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mFilter:Ljava/lang/String;

.field private mGetCBSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;

.field private mGetGoogleSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;

.field private mGoogleSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

.field protected mIdem:Ljava/lang/String;

.field mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field mNotesDivider:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02a9
    .end annotation
.end field

.field mNotesLabel:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02a8
    .end annotation
.end field

.field mNotesView:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d001d
    .end annotation
.end field

.field protected mPinManager:Lcom/coinbase/android/pin/PINManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mQrScanButton:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02a5
    .end annotation
.end field

.field private mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

.field private mRecentContactsHeader:Landroid/widget/TextView;

.field mRecipientLabel:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d029e
    .end annotation
.end field

.field mRecipientView:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02a4
    .end annotation
.end field

.field private mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

.field private mSelectedAmount:Lorg/joda/money/BigMoney;

.field private mSelectedBTCAmount:Lorg/joda/money/BigMoney;

.field private mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

.field mSuggestionsList:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02aa
    .end annotation
.end field

.field private mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/transfers/TransferSendFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showSuggestionsList()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/transfers/TransferSendFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment;->setContactVisible(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;)Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p1, "x1"    # Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGetGoogleSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecentContactsHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/coinbase/android/transfers/TransferSendFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mCBSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/api/internal/entity/InstantExchangeQuote;)Lcom/coinbase/api/internal/entity/InstantExchangeQuote;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p1, "x1"    # Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/coinbase/android/transfers/TransferSendFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/coinbase/android/transfers/TransferSendFragment;)Lorg/joda/money/BigMoney;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAmount:Lorg/joda/money/BigMoney;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/coinbase/android/transfers/TransferSendFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showConfirmSendTransfer()V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/transfers/TransferSendFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment;->showNotes(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;)Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p1, "x1"    # Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment;->updateSuggestions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment;->handleRequestError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactsHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coinbase/android/transfers/TransferSendFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGoogleSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    return-object v0
.end method

.method private getEnteredNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mNotesView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnteredRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    iget-object v0, v0, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->email:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleRequestError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 780
    :cond_0
    if-nez p1, :cond_1

    .line 781
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 782
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initiateReceive()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 786
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->hideKeyboard()V

    .line 788
    iget-object v7, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAmount:Lorg/joda/money/BigMoney;

    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v7, v8}, Lorg/joda/money/BigMoney;->toMoney(Ljava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v5

    .line 790
    .local v5, "roundedAmount":Lorg/joda/money/Money;
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getEnteredRecipient()Ljava/lang/String;

    move-result-object v4

    .line 791
    .local v4, "recipient":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 793
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f070273

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 831
    :goto_0
    return-void

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/coinbase/android/utils/Utils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 800
    new-instance v6, Lcom/coinbase/v2/models/transactions/Data;

    invoke-direct {v6}, Lcom/coinbase/v2/models/transactions/Data;-><init>()V

    .line 801
    .local v6, "transaction":Lcom/coinbase/v2/models/transactions/Data;
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getEnteredNotes()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/coinbase/v2/models/transactions/Data;->setDescription(Ljava/lang/String;)V

    .line 802
    invoke-static {v5}, Lcom/coinbase/android/utils/TransactionUtils;->amountFromMoney(Lorg/joda/money/Money;)Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/coinbase/v2/models/transactions/Data;->setAmount(Lcom/coinbase/v2/models/transactions/Amount;)V

    .line 803
    new-instance v2, Lcom/coinbase/v2/models/transactions/Entity;

    invoke-direct {v2}, Lcom/coinbase/v2/models/transactions/Entity;-><init>()V

    .line 804
    .local v2, "from":Lcom/coinbase/v2/models/transactions/Entity;
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getEnteredRecipient()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/coinbase/v2/models/transactions/Entity;->setId(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v6, v2}, Lcom/coinbase/v2/models/transactions/Data;->setFrom(Lcom/coinbase/v2/models/transactions/Entity;)V

    .line 807
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 808
    .local v0, "args":Landroid/os/Bundle;
    sget-object v7, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->TRANSACTION:Ljava/lang/String;

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v1, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;-><init>()V

    .line 811
    .local v1, "f":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 812
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const-string v8, "delayed_request"

    invoke-virtual {v1, v7, v8}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "f":Landroid/support/v4/app/DialogFragment;
    .end local v2    # "from":Lcom/coinbase/v2/models/transactions/Entity;
    .end local v6    # "transaction":Lcom/coinbase/v2/models/transactions/Data;
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 818
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "to"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string v7, "amount"

    invoke-virtual {v5}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v7, "currency"

    invoke-virtual {v5}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v8

    invoke-virtual {v8}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v7, "description"

    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getEnteredNotes()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    new-instance v7, Lcom/coinbase/android/transfers/RequestMoneyTask;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/coinbase/android/transfers/RequestMoneyTask;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v8}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/coinbase/android/transfers/TransferSendFragment$9;

    invoke-direct {v9, p0}, Lcom/coinbase/android/transfers/TransferSendFragment$9;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    invoke-virtual {v7, v8, v3, v9}, Lcom/coinbase/android/transfers/RequestMoneyTask;->requestMoney(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    .line 830
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v7

    const-string v8, "Event - Request requested"

    new-array v9, v10, [Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initiateSend()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->hideKeyboard()V

    .line 634
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAmount:Lorg/joda/money/BigMoney;

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v6}, Lorg/joda/money/BigMoney;->toMoney(Ljava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v4

    .line 636
    .local v4, "roundedAmount":Lorg/joda/money/Money;
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getEnteredRecipient()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "recipient":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v6, 0x7f070273

    invoke-static {v1, v6, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 698
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v6, "input_method"

    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 645
    .local v10, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 647
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 650
    new-instance v13, Lcom/coinbase/v2/models/transactions/Data;

    invoke-direct {v13}, Lcom/coinbase/v2/models/transactions/Data;-><init>()V

    .line 651
    .local v13, "transaction":Lcom/coinbase/v2/models/transactions/Data;
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getEnteredNotes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/coinbase/v2/models/transactions/Data;->setDescription(Ljava/lang/String;)V

    .line 652
    invoke-static {v4}, Lcom/coinbase/android/utils/TransactionUtils;->amountFromMoney(Lorg/joda/money/Money;)Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/coinbase/v2/models/transactions/Data;->setAmount(Lcom/coinbase/v2/models/transactions/Amount;)V

    .line 653
    new-instance v12, Lcom/coinbase/v2/models/transactions/Entity;

    invoke-direct {v12}, Lcom/coinbase/v2/models/transactions/Entity;-><init>()V

    .line 654
    .local v12, "to":Lcom/coinbase/v2/models/transactions/Entity;
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getEnteredRecipient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/coinbase/v2/models/transactions/Entity;->setId(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v13, v12}, Lcom/coinbase/v2/models/transactions/Data;->setTo(Lcom/coinbase/v2/models/transactions/Entity;)V

    .line 657
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 658
    .local v8, "args":Landroid/os/Bundle;
    sget-object v0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->TRANSACTION:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v13}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-object v0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->ACCOUNT:Ljava/lang/String;

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    new-instance v9, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    invoke-direct {v9}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;-><init>()V

    .line 662
    .local v9, "f":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v9, v8}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 663
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "delayed_request"

    invoke-virtual {v9, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v9    # "f":Landroid/support/v4/app/DialogFragment;
    .end local v12    # "to":Lcom/coinbase/v2/models/transactions/Entity;
    .end local v13    # "transaction":Lcom/coinbase/v2/models/transactions/Data;
    :cond_2
    const/4 v5, 0x0

    .line 669
    .local v5, "fee":Lorg/joda/money/Money;
    const/4 v11, 0x1

    .line 670
    .local v11, "isFiat":Z
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 671
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-static {v1}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v1

    sget-object v6, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v1, v6, :cond_5

    move v11, v7

    .line 675
    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    .line 677
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->getFiat()Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 678
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAmount:Lorg/joda/money/BigMoney;

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/TransactionUtils;->calculateFee(Lorg/joda/money/BigMoney;Lcom/coinbase/api/internal/entity/InstantExchangeQuote;)Lorg/joda/money/Money;

    move-result-object v5

    .line 690
    :cond_4
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "id":Ljava/lang/String;
    new-instance v0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    .line 692
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getEnteredNotes()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;Ljava/lang/String;Lorg/joda/money/Money;Lorg/joda/money/Money;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    .line 694
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedBTCAmount:Lorg/joda/money/BigMoney;

    invoke-virtual {v0}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v6

    if-gez v0, :cond_7

    .line 695
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->sendTransferWithoutConfirm()V

    goto/16 :goto_0

    .end local v3    # "id":Ljava/lang/String;
    :cond_5
    move v11, v0

    .line 671
    goto :goto_1

    .line 683
    :cond_6
    new-instance v0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 684
    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getEnteredNotes()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;Ljava/lang/String;Lorg/joda/money/Money;Lorg/joda/money/Money;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    .line 685
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const v6, 0x7f07027c

    invoke-virtual {p0, v6}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 697
    .restart local v3    # "id":Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showConfirmSendTransfer()V

    goto/16 :goto_0
.end method

.method public static newInstance(Lorg/joda/money/BigMoney;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;)Lcom/coinbase/android/transfers/TransferSendFragment;
    .locals 5
    .param p0, "amount"    # Lorg/joda/money/BigMoney;
    .param p1, "selectedAccount"    # Lcom/coinbase/v2/models/account/Data;
    .param p2, "transferType"    # Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    .prologue
    .line 195
    new-instance v1, Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;-><init>()V

    .line 196
    .local v1, "f":Lcom/coinbase/android/transfers/TransferSendFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "TransferActivity_Amount"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 198
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 199
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "TransferActivity_Account"

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "TransferActivity_Transfer_Type"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 201
    invoke-virtual {v1, v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 202
    return-object v1
.end method

.method public static newInstance(Lorg/joda/money/BigMoney;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;Ljava/lang/String;Ljava/lang/String;Lorg/joda/money/BigMoney;)Lcom/coinbase/android/transfers/TransferSendFragment;
    .locals 5
    .param p0, "amount"    # Lorg/joda/money/BigMoney;
    .param p1, "selectedAccount"    # Lcom/coinbase/v2/models/account/Data;
    .param p2, "transferType"    # Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "btcAmount"    # Lorg/joda/money/BigMoney;

    .prologue
    .line 211
    new-instance v1, Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;-><init>()V

    .line 212
    .local v1, "f":Lcom/coinbase/android/transfers/TransferSendFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "TransferActivity_Amount"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 214
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 215
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "TransferActivity_Account"

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "TransferActivity_Transfer_Type"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 217
    const-string v3, "TransferActivity_Address"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 218
    const-string v3, "TransferActivity_Message"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 219
    const-string v3, "TransferActivity_btcAmoung"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 220
    invoke-virtual {v1, v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 221
    return-object v1
.end method

.method private sendTransferWithoutConfirm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 721
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f070276

    invoke-virtual {p0, v7}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 722
    const/4 v1, 0x0

    .line 723
    .local v1, "exchangeId":Ljava/lang/String;
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    if-eqz v5, :cond_0

    .line 724
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    invoke-virtual {v5}, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->getId()Ljava/lang/String;

    move-result-object v1

    .line 727
    :cond_0
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mIdem:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 728
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mIdem:Ljava/lang/String;

    .line 731
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 732
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "to"

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v6, v6, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->recipient:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v5, "amount"

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v6, v6, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->roundedAmount:Lorg/joda/money/Money;

    invoke-virtual {v6}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v5, "currency"

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v6, v6, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->roundedAmount:Lorg/joda/money/Money;

    invoke-virtual {v6}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v6

    invoke-virtual {v6}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v5, v5, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->fee:Lorg/joda/money/Money;

    if-eqz v5, :cond_2

    .line 736
    const-string v5, "fee"

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v6, v6, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->fee:Lorg/joda/money/Money;

    invoke-virtual {v6}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_2
    const-string v5, "description"

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v6, v6, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->notes:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v5, "idem"

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mIdem:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v5, "instant_exchange_quote"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v6, v6, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->roundedAmount:Lorg/joda/money/Money;

    invoke-virtual {v6}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v6

    invoke-virtual {v6}, Lorg/joda/money/CurrencyUnit;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v6, v6, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->roundedAmount:Lorg/joda/money/Money;

    .line 742
    invoke-virtual {v6}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "amount":Ljava/lang/String;
    const v5, 0x7f0700e3

    invoke-virtual {p0, v5}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v7, v7, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->recipient:Ljava/lang/String;

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v3, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v6, v6, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->id:Ljava/lang/String;

    new-instance v7, Lcom/coinbase/android/transfers/TransferSendFragment$8;

    invoke-direct {v7, p0, v3}, Lcom/coinbase/android/transfers/TransferSendFragment$8;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v4, v7}, Lcom/coinbase/api/internal/CoinbaseInternal;->sendMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 772
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v5

    const-string v6, "Event - Send without confirm"

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 773
    invoke-static {}, Lcom/coinbase/android/utils/KochavaTracking;->getInstance()Lcom/coinbase/android/utils/KochavaTracking;

    move-result-object v5

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coinbase/android/utils/KochavaTracking;->initializeKochava(Landroid/content/Context;)Lcom/kochava/android/tracker/Feature;

    move-result-object v2

    .line 774
    .local v2, "kFeature":Lcom/kochava/android/tracker/Feature;
    const-string v5, "Transfer"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lcom/kochava/android/tracker/Feature;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method private setContactVisible(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .prologue
    const v4, 0x7f02007f

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 436
    if-eqz p1, :cond_3

    .line 437
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactSpacer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 441
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "email":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "name":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_0

    .line 444
    move-object v1, v0

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactNameLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 448
    invoke-static {v0}, Lcom/coinbase/android/utils/Utils;->getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 449
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 450
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/utils/RoundedTransformation;

    const/high16 v4, 0x41700000    # 15.0f

    .line 451
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4, v6}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactAvatar:Landroid/widget/ImageView;

    .line 452
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 458
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :goto_2
    return-void

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    iget-object v0, v2, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->email:Ljava/lang/String;

    goto :goto_0

    .line 442
    .restart local v0    # "email":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    iget-object v1, v2, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->name:Ljava/lang/String;

    goto :goto_1

    .line 454
    .end local v0    # "email":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactSpacer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method private showConfirmSendTransfer()V
    .locals 8

    .prologue
    .line 701
    const/4 v6, 0x0

    .line 702
    .local v6, "exchangeId":Ljava/lang/String;
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;->getId()Ljava/lang/String;

    move-result-object v6

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v0, v0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->recipient:Ljava/lang/String;

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v1, v1, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v2, v2, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->roundedAmount:Lorg/joda/money/Money;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v3, v3, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->fee:Lorg/joda/money/Money;

    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-object v4, v4, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->notes:Ljava/lang/String;

    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    iget-boolean v5, v5, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->isFiat:Z

    .line 706
    invoke-static/range {v0 .. v6}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lorg/joda/money/Money;Lorg/joda/money/Money;Ljava/lang/String;ZLjava/lang/String;)Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    move-result-object v7

    .line 714
    .local v7, "dialog":Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;
    const/16 v0, 0x2713

    invoke-virtual {v7, p0, v0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 715
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "confirm"

    invoke-virtual {v7, v0, v1}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 717
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Sent requested"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method private showNotes(Z)V
    .locals 3
    .param p1, "requestFocusOnNotes"    # Z

    .prologue
    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSuggestionsList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mNotesView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mNotesLabel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mNotesDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    if-eqz p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mNotesView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 429
    :cond_0
    return-void
.end method

.method private showPINPrompt()V
    .locals 3

    .prologue
    .line 591
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/pin/PINPromptActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.coinbase.android.pin.ACTION_PROMPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 594
    return-void
.end method

.method private showRationaleDialog(ILpermissions/dispatcher/PermissionRequest;)V
    .locals 3
    .param p1, "messageResId"    # I
    .param p2, "request"    # Lpermissions/dispatcher/PermissionRequest;

    .prologue
    .line 971
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07009a

    new-instance v2, Lcom/coinbase/android/transfers/TransferSendFragment$11;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/android/transfers/TransferSendFragment$11;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Lpermissions/dispatcher/PermissionRequest;)V

    .line 972
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07009b

    new-instance v2, Lcom/coinbase/android/transfers/TransferSendFragment$10;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/android/transfers/TransferSendFragment$10;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Lpermissions/dispatcher/PermissionRequest;)V

    .line 978
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 984
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 985
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 986
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 987
    return-void
.end method

.method private showSuggestionsList()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSuggestionsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 433
    return-void
.end method

.method private updateSuggestions(Ljava/lang/String;)V
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->contactsPermissionsDenied:Z

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 492
    :cond_0
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mFilter:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGetGoogleSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGetGoogleSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->cancel(Z)Z

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mCBSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->clear()V

    .line 499
    new-instance v0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGetCBSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;

    .line 500
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGetCBSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->execute()V

    .line 502
    invoke-static {p0}, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->executeGoogleSuggestionsTaskWithCheck(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    goto :goto_0
.end method


# virtual methods
.method public executeGoogleSuggestionsTask()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGetCBSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGetCBSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->cancel(Z)Z

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGoogleSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->clear()V

    .line 513
    new-instance v0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mFilter:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGetGoogleSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;

    .line 514
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGetGoogleSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->execute()V

    .line 515
    return-void
.end method

.method public hideKeyboard()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 486
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 462
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 463
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 464
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 598
    const/16 v4, 0x2713

    if-ne p1, v4, :cond_4

    if-ne p2, v5, :cond_4

    .line 599
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    const/4 v0, 0x0

    .line 602
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p3, :cond_2

    .line 603
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 605
    :cond_2
    if-eqz v0, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "MESSAGE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 608
    :cond_3
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 609
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    const/16 v4, 0x2711

    if-ne p1, v4, :cond_5

    if-ne p2, v5, :cond_5

    .line 610
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->initiateSend()V

    goto :goto_0

    .line 611
    :cond_5
    const/16 v4, 0x2712

    if-ne p1, v4, :cond_7

    if-ne p2, v5, :cond_7

    .line 612
    const-string v4, "SCAN_RESULT"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "contents":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 615
    :try_start_0
    invoke-static {v1}, Lcom/coinbase/android/utils/CryptoUri;->parse(Ljava/lang/String;)Lcom/coinbase/android/utils/CryptoUri;

    move-result-object v3

    .line 616
    .local v3, "uri":Lcom/coinbase/android/utils/CryptoUri;
    invoke-virtual {v3}, Lcom/coinbase/android/utils/CryptoUri;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v3    # "uri":Lcom/coinbase/android/utils/CryptoUri;
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mAddress:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 622
    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 623
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    .line 624
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/coinbase/android/transfers/TransferSendFragment;->showNotes(Z)V

    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    .line 618
    .local v2, "e":Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;
    iput-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mAddress:Ljava/lang/String;

    goto :goto_1

    .line 627
    .end local v1    # "contents":Ljava/lang/String;
    .end local v2    # "e":Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 226
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0, v6}, Lcom/coinbase/android/transfers/TransferSendFragment;->setRetainInstance(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "TransferActivity_Amount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/joda/money/BigMoney;

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAmount:Lorg/joda/money/BigMoney;

    .line 232
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 233
    .local v1, "gson":Lcom/google/gson/Gson;
    const-string v2, "TransferActivity_Account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/account/Data;

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 235
    const-string v2, "TransferActivity_Transfer_Type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    .line 236
    const-string v2, "TransferActivity_Address"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mAddress:Ljava/lang/String;

    .line 237
    const-string v2, "TransferActivity_Message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mMessage:Ljava/lang/String;

    .line 238
    const-string v2, "TransferActivity_btcAmoung"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/joda/money/BigMoney;

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedBTCAmount:Lorg/joda/money/BigMoney;

    .line 240
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 242
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/account/Data;

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-static {v2}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v2

    sget-object v3, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v2, v3, :cond_1

    .line 256
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    sget-object v3, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    if-ne v2, v3, :cond_1

    .line 257
    new-instance v2, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAmount:Lorg/joda/money/BigMoney;

    sget-object v5, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 258
    invoke-virtual {v4, v5}, Lorg/joda/money/BigMoney;->toMoney(Ljava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;Lorg/joda/money/Money;Z)V

    .line 260
    invoke-virtual {v2}, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->execute()V

    .line 263
    :cond_1
    invoke-virtual {p0, v6}, Lcom/coinbase/android/transfers/TransferSendFragment;->setHasOptionsMenu(Z)V

    .line 265
    iput-boolean v7, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->contactsPermissionsDenied:Z

    .line 266
    :cond_2
    :goto_0
    return-void

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700bc

    invoke-virtual {p0, v3}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 557
    const v0, 0x7f0e0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 558
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 559
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    const v0, 0x7f030093

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 575
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 587
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 577
    :pswitch_0
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/coinbase/android/pin/PINManager$AccessType;->SEND_MONEY:Lcom/coinbase/android/pin/PINManager$AccessType;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/pin/PINManager;->isProtected(Landroid/content/Context;Lcom/coinbase/android/pin/PINManager$AccessType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showPINPrompt()V

    goto :goto_0

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->initiateSend()V

    goto :goto_0

    .line 584
    :pswitch_1
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->initiateReceive()V

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0318
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f0d0319

    const v4, 0x7f0d0318

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 564
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    sget-object v1, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    if-ne v0, v1, :cond_0

    .line 565
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 566
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 550
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 551
    invoke-static {p0, p1, p3}, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->onRequestPermissionsResult(Lcom/coinbase/android/transfers/TransferSendFragment;I[I)V

    .line 553
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 468
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 470
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    sget-object v3, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    if-ne v2, v3, :cond_1

    const v2, 0x7f070278

    :goto_0
    invoke-virtual {p0, v2}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAmount:Lorg/joda/money/BigMoney;

    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 473
    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 474
    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 472
    invoke-static {v4, v5, v6}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 470
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 477
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 481
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 482
    return-void

    .line 470
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    const v2, 0x7f070271

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 271
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 277
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f03009b

    const/4 v10, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 287
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 289
    iget-object v8, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    sget-object v9, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    if-ne v5, v9, :cond_2

    const v5, 0x7f070277

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    .line 292
    const v5, 0x7f070279

    invoke-virtual {p0, v5}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "hintFormat":Ljava/lang/String;
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v5

    const v8, 0x7f0702d9

    invoke-virtual {p0, v8}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 295
    new-array v5, v10, [Ljava/lang/Object;

    const v8, 0x7f0702dc

    invoke-virtual {p0, v8}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "hint":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    sget-object v9, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    if-ne v8, v9, :cond_4

    .end local v0    # "hint":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v8, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQrScanButton:Landroid/view/View;

    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    sget-object v9, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    if-ne v5, v9, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    new-instance v8, Lcom/coinbase/android/transfers/TransferSendFragment$1;

    invoke-direct {v8, p0}, Lcom/coinbase/android/transfers/TransferSendFragment$1;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 314
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    new-instance v8, Lcom/coinbase/android/transfers/TransferSendFragment$2;

    invoke-direct {v8, p0}, Lcom/coinbase/android/transfers/TransferSendFragment$2;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 324
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    new-instance v8, Lcom/coinbase/android/transfers/TransferSendFragment$3;

    invoke-direct {v8, p0}, Lcom/coinbase/android/transfers/TransferSendFragment$3;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 352
    new-instance v5, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mCBSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    .line 353
    new-instance v3, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v3}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    .line 355
    .local v3, "mAdapter":Lcom/commonsware/cwac/merge/MergeAdapter;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 356
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSuggestionsList:Landroid/widget/ListView;

    invoke-virtual {v2, v11, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecentContactsHeader:Landroid/widget/TextView;

    .line 357
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecentContactsHeader:Landroid/widget/TextView;

    const v8, 0x7f0701e7

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 358
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecentContactsHeader:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecentContactsHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 360
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mCBSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    invoke-virtual {v3, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    new-instance v5, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGoogleSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    .line 363
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSuggestionsList:Landroid/widget/ListView;

    invoke-virtual {v2, v11, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactsHeader:Landroid/widget/TextView;

    .line 364
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactsHeader:Landroid/widget/TextView;

    const v8, 0x7f0700d0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactsHeader:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactsHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 367
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mGoogleSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    invoke-virtual {v3, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSuggestionsList:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSuggestionsList:Landroid/widget/ListView;

    new-instance v8, Lcom/coinbase/android/transfers/TransferSendFragment$4;

    invoke-direct {v8, p0, v3}, Lcom/coinbase/android/transfers/TransferSendFragment$4;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 382
    move-object v4, p0

    .line 383
    .local v4, "reference":Lcom/coinbase/android/transfers/TransferSendFragment;
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mQrScanButton:Landroid/view/View;

    new-instance v8, Lcom/coinbase/android/transfers/TransferSendFragment$5;

    invoke-direct {v8, p0, v4}, Lcom/coinbase/android/transfers/TransferSendFragment$5;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/android/transfers/TransferSendFragment;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mAddress:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_0
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mMessage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 394
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mNotesView:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 397
    :cond_1
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactView:Landroid/view/View;

    new-instance v7, Lcom/coinbase/android/transfers/TransferSendFragment$6;

    invoke-direct {v7, p0}, Lcom/coinbase/android/transfers/TransferSendFragment$6;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mContactClearButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/coinbase/android/transfers/TransferSendFragment$7;

    invoke-direct {v7, p0}, Lcom/coinbase/android/transfers/TransferSendFragment$7;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/coinbase/android/transfers/TransferSendFragment;->updateSuggestions(Ljava/lang/String;)V

    .line 416
    invoke-direct {p0, v6}, Lcom/coinbase/android/transfers/TransferSendFragment;->showNotes(Z)V

    .line 417
    return-void

    .line 289
    .end local v1    # "hintFormat":Ljava/lang/String;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "mAdapter":Lcom/commonsware/cwac/merge/MergeAdapter;
    .end local v4    # "reference":Lcom/coinbase/android/transfers/TransferSendFragment;
    :cond_2
    const v5, 0x7f070270

    goto/16 :goto_0

    .line 297
    .restart local v1    # "hintFormat":Ljava/lang/String;
    :cond_3
    new-array v5, v10, [Ljava/lang/Object;

    const v8, 0x7f0702c5

    invoke-virtual {p0, v8}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "hint":Ljava/lang/String;
    goto/16 :goto_1

    .line 298
    :cond_4
    const v8, 0x7f070272

    .line 299
    invoke-virtual {p0, v8}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .end local v0    # "hint":Ljava/lang/String;
    :cond_5
    move v5, v7

    .line 301
    goto/16 :goto_3
.end method

.method showDeniedForCamera()V
    .locals 3

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701b1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 546
    return-void
.end method

.method showDeniedForReadContacts()V
    .locals 3

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701b6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->contactsPermissionsDenied:Z

    .line 521
    return-void
.end method

.method showRationaleForCamera(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 1
    .param p1, "request"    # Lpermissions/dispatcher/PermissionRequest;

    .prologue
    .line 540
    const v0, 0x7f0701b2

    invoke-direct {p0, v0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment;->showRationaleDialog(ILpermissions/dispatcher/PermissionRequest;)V

    .line 541
    return-void
.end method

.method startQrScan()V
    .locals 4

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/coinbase/zxing/client/android/CaptureActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.coinbase.zxing.client.android.SCAN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const-string v2, "SCAN_MODE"

    const-string v3, "QR_CODE_MODE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 530
    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0702d9

    invoke-virtual {p0, v3}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    const v2, 0x7f0702e6

    invoke-virtual {p0, v2}, Lcom/coinbase/android/transfers/TransferSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "text":Ljava/lang/String;
    const-string v2, "PROMPT_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x2712

    invoke-virtual {p0, v0, v2}, Lcom/coinbase/android/transfers/TransferSendFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 536
    return-void
.end method
