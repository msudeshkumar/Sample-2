.class public Lcom/coinbase/android/pin/PINPromptActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "PINPromptActivity.java"


# annotations
.annotation runtime Lcom/coinbase/android/CoinbaseActivity$RequiresAuthentication;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:Ljava/lang/String; = "com.coinbase.android.pin.ACTION_CANCEL"

.field public static final ACTION_DISABLE:Ljava/lang/String; = "com.coinbase.android.pin.ACTION_DISABLE"

.field public static final ACTION_PROMPT:Ljava/lang/String; = "com.coinbase.android.pin.ACTION_PROMPT"

.field public static final ACTION_SET:Ljava/lang/String; = "com.coinbase.android.pin.ACTION_SET"

.field public static final MAX_TRIES_ALLOWED:I = 0x5


# instance fields
.field private keyboardClickListener:Landroid/view/View$OnClickListener;

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mConfirmValue:Ljava/lang/String;

.field private mEnteredValue:Ljava/lang/String;

.field private mIsConfirmMode:Z

.field private mIsSetMode:Z

.field private mLabel:Landroid/widget/TextView;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPinManager:Lcom/coinbase/android/pin/PINManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTimer:Ljava/util/Timer;

.field private valueFirst:Landroid/widget/ImageView;

.field private valueFourth:Landroid/widget/ImageView;

.field private valueSecond:Landroid/widget/ImageView;

.field private valueThird:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsSetMode:Z

    .line 90
    iput-boolean v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsConfirmMode:Z

    .line 146
    new-instance v0, Lcom/coinbase/android/pin/PINPromptActivity$1;

    invoke-direct {v0, p0}, Lcom/coinbase/android/pin/PINPromptActivity$1;-><init>(Lcom/coinbase/android/pin/PINPromptActivity;)V

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->keyboardClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/pin/PINPromptActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pin/PINPromptActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->onUserCancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/pin/PINPromptActivity;C)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pin/PINPromptActivity;
    .param p1, "x1"    # C

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/coinbase/android/pin/PINPromptActivity;->onKeyPressed(C)V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/pin/PINPromptActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pin/PINPromptActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/coinbase/android/pin/PINPromptActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/pin/PINPromptActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coinbase/android/pin/PINPromptActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pin/PINPromptActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->onSubmit()V

    return-void
.end method

.method static synthetic access$500(Lcom/coinbase/android/pin/PINPromptActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/pin/PINPromptActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/coinbase/android/pin/PINPromptActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pin/PINPromptActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->signout()V

    return-void
.end method

.method private getWarningMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "triesLeft"    # I

    .prologue
    const/4 v2, 0x1

    .line 256
    if-le p1, v2, :cond_0

    .line 257
    const v1, 0x7f0701c3

    invoke-virtual {p0, v1}, Lcom/coinbase/android/pin/PINPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "warningMessage":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 258
    .end local v0    # "warningMessage":Ljava/lang/String;
    :cond_0
    if-ne p1, v2, :cond_1

    .line 259
    const v1, 0x7f0701c4

    invoke-virtual {p0, v1}, Lcom/coinbase/android/pin/PINPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "warningMessage":Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v0    # "warningMessage":Ljava/lang/String;
    :cond_1
    const v1, 0x7f0701c5

    invoke-virtual {p0, v1}, Lcom/coinbase/android/pin/PINPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "warningMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private initKeyboard()V
    .locals 6

    .prologue
    .line 140
    sget-object v3, Lcom/coinbase/android/utils/KeyboardUtils;->KEYPAD_IDS:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 141
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/coinbase/android/pin/PINPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/coinbase/android/pin/PINPromptActivity;->keyboardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "id":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onKeyPressed(C)V
    .locals 3
    .param p1, "index"    # C

    .prologue
    .line 183
    sparse-switch p1, :sswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 185
    :sswitch_0
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    goto :goto_0

    .line 190
    :sswitch_1
    iget-boolean v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsSetMode:Z

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->finish()V

    goto :goto_0

    .line 194
    :cond_1
    new-instance v0, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;

    invoke-direct {v0}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method private onPinEntered(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-boolean v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsSetMode:Z

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {v3, p0, p1}, Lcom/coinbase/android/pin/PINManager;->setPin(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    :cond_0
    const-string v3, "com.coinbase.android.pin.ACTION_DISABLE"

    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 273
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 274
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 275
    sget-object v3, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mBus:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/coinbase/android/event/UserDataUpdatedEvent;

    invoke-direct {v4}, Lcom/coinbase/android/event/UserDataUpdatedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 281
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/coinbase/android/pin/PINManager;->setPinEntered(Landroid/content/Context;Z)V

    .line 282
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/coinbase/android/pin/PINPromptActivity;->setResult(I)V

    .line 283
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->finish()V

    .line 284
    return-void
.end method

.method private onSubmit()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    iget-boolean v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsSetMode:Z

    if-eqz v3, :cond_2

    .line 205
    iget-boolean v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsConfirmMode:Z

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mConfirmValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/coinbase/android/pin/PINPromptActivity;->onPinEntered(Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v3, ""

    iput-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->updateUI()V

    .line 211
    iput-boolean v6, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsConfirmMode:Z

    .line 212
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mLabel:Landroid/widget/TextView;

    const v4, 0x7f0701fc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 213
    const v3, 0x7f0701cb

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mLabel:Landroid/widget/TextView;

    const v4, 0x7f0700cc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iput-boolean v7, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsConfirmMode:Z

    .line 218
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    iput-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mConfirmValue:Ljava/lang/String;

    .line 219
    const-string v3, ""

    iput-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->updateUI()V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/coinbase/android/pin/PINManager;->verifyPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 226
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/coinbase/android/pin/PINPromptActivity;->onPinEntered(Ljava/lang/String;)V

    .line 228
    const-string v3, "incoorect_pin_tries"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "incoorect_pin_tries"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 233
    .local v1, "numTries":I
    add-int/lit8 v1, v1, 0x1

    .line 235
    const-string v3, ""

    iput-object v3, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->updateUI()V

    .line 238
    rsub-int/lit8 v2, v1, 0x5

    .line 239
    .local v2, "triesLeft":I
    invoke-direct {p0, v2}, Lcom/coinbase/android/pin/PINPromptActivity;->getWarningMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 242
    if-gtz v2, :cond_4

    .line 243
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->signout()V

    .line 244
    const-string v3, "incoorect_pin_tries"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 249
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 246
    :cond_4
    const-string v3, "incoorect_pin_tries"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private onUserCancel()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->signout()V

    .line 80
    return-void
.end method

.method private signout()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mTimer:Ljava/util/Timer;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 317
    const-string v0, ""

    const v1, 0x7f070203

    invoke-virtual {p0, v1}, Lcom/coinbase/android/pin/PINPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/coinbase/android/pin/PINPromptActivity$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/pin/PINPromptActivity$2;-><init>(Lcom/coinbase/android/pin/PINPromptActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 331
    return-void
.end method

.method private updateUI()V
    .locals 4

    .prologue
    const v3, 0x7f020145

    const v2, 0x7f020144

    .line 159
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueFirst:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueSecond:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueThird:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueFourth:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 165
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueFirst:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueSecond:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueThird:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueFourth:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 290
    iget-boolean v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsSetMode:Z

    if-nez v0, :cond_0

    .line 291
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/pin/PINPromptActivity;->overridePendingTransition(II)V

    .line 293
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onBackPressed()V

    .line 299
    iget-boolean v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsSetMode:Z

    if-nez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {v1, v4}, Lcom/coinbase/android/pin/PINManager;->setQuitPINLock(Z)V

    .line 305
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "com.coinbase.MainActivity.ACTION_URI_TRANSFER"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.coinbase.MainActivity.ACTION_URI_TRANSFER"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.coinbase.android.pin.ACTION_CANCEL"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "com.coinbase.android.pin.ACTION_SET"

    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mIsSetMode:Z

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mEnteredValue:Ljava/lang/String;

    .line 119
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/coinbase/android/pin/PINPromptActivity;->setContentView(I)V

    .line 121
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 123
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/coinbase/android/pin/PINPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueFirst:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/coinbase/android/pin/PINPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueSecond:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/coinbase/android/pin/PINPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueThird:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/coinbase/android/pin/PINPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->valueFourth:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0d0100

    invoke-virtual {p0, v0}, Lcom/coinbase/android/pin/PINPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mLabel:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mLabel:Landroid/widget/TextView;

    const-string v1, "Roboto-Light"

    invoke-static {p0, v1}, Lcom/coinbase/android/ui/FontManager;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    const-string v0, "com.coinbase.android.pin.ACTION_DISABLE"

    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.coinbase.android.pin.ACTION_PROMPT"

    .line 132
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f0701ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/coinbase/android/pin/PINPromptActivity;->initKeyboard()V

    .line 137
    return-void
.end method
