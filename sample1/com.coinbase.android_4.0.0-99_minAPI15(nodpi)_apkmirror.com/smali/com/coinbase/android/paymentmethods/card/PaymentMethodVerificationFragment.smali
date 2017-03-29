.class public Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;
.super Lroboguice/fragment/RoboFragment;
.source "PaymentMethodVerificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;
    }
.end annotation


# static fields
.field public static IDENTITY_VERIFICATION_SKIP_SELECTOR:Ljava/lang/String; = null

.field public static JUMIO_STATUS:Ljava/lang/String; = null

.field private static final RETRY_WAIT_TIME:I = 0x1388


# instance fields
.field idIcon:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01e7
    .end annotation
.end field

.field idLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01e8
    .end annotation
.end field

.field lineLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01ee
    .end annotation
.end field

.field paymentDescriptionTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01ed
    .end annotation
.end field

.field paymentIcon:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d015f
    .end annotation
.end field

.field paymentLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01eb
    .end annotation
.end field

.field paymentTitleTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01ec
    .end annotation
.end field

.field status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

.field verificationDescriptionTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01ea
    .end annotation
.end field

.field verificationHandler:Landroid/os/Handler;

.field verificationRunnable:Ljava/lang/Runnable;

.field verificationTitleTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01e9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "JUMIO_STATUS"

    sput-object v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->JUMIO_STATUS:Ljava/lang/String;

    .line 37
    const-string v0, "IDENTITY_VERIFICATION_SKIP_SELECTOR"

    sput-object v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->IDENTITY_VERIFICATION_SKIP_SELECTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 40
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationHandler:Landroid/os/Handler;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationRunnable:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;Lcom/coinbase/api/internal/entity/JumioProfile$Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;
    .param p1, "x1"    # Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->setVerificationState(Lcom/coinbase/api/internal/entity/JumioProfile$Status;)V

    return-void
.end method

.method private setVerificationState(Lcom/coinbase/api/internal/entity/JumioProfile$Status;)V
    .locals 15
    .param p1, "status"    # Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    if-nez v11, :cond_0

    .line 207
    :goto_0
    return-void

    .line 151
    :cond_0
    const v1, 0x7f0200d2

    .line 152
    .local v1, "idIconID":I
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c006a

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 153
    .local v10, "verificationTitleTextColor":I
    const v9, 0x7f07011a

    .line 154
    .local v9, "verificationDescriptionTextID":I
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c008c

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 155
    .local v8, "verificationDescriptionTextColor":I
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const v3, 0x7f020141

    .line 158
    .local v3, "paymentIconID":I
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0034

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 159
    .local v4, "paymentTitleTextColor":I
    const/4 v2, 0x4

    .line 161
    .local v2, "lineVisibility":I
    sget-object v11, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$4;->$SwitchMap$com$coinbase$api$internal$entity$JumioProfile$Status:[I

    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 202
    :goto_1
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->idIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->paymentIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->paymentTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->lineLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 164
    :pswitch_0
    const v1, 0x7f0200d5

    .line 165
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0034

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 167
    const v11, 0x7f07011d

    invoke-virtual {p0, v11}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "pending":Ljava/lang/String;
    const v11, 0x7f07011e

    invoke-virtual {p0, v11}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "pendingDescription":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "fullDescription":Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .local v7, "spannableDescription":Landroid/text/SpannableString;
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0c0066

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    .line 173
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    .line 171
    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 175
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0c008c

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    .line 175
    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 179
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v3, 0x7f020141

    .line 182
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0034

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 183
    goto/16 :goto_1

    .line 187
    .end local v0    # "fullDescription":Ljava/lang/String;
    .end local v5    # "pending":Ljava/lang/String;
    .end local v6    # "pendingDescription":Ljava/lang/String;
    .end local v7    # "spannableDescription":Landroid/text/SpannableString;
    :pswitch_1
    const v1, 0x7f02007e

    .line 188
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0034

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 189
    const v9, 0x7f07011f

    .line 190
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c008c

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 191
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v11, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    const v3, 0x7f02013e

    .line 194
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c006a

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 195
    goto/16 :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v0, 0x7f03007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 130
    new-instance v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$3;

    invoke-direct {v0, p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$3;-><init>(Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;)V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationRunnable:Ljava/lang/Runnable;

    .line 137
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 138
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->JUMIO_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "statusString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->valueOf(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    invoke-direct {p0, v2}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->setVerificationState(Lcom/coinbase/api/internal/entity/JumioProfile$Status;)V

    .line 93
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->idLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;-><init>(Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->paymentLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$2;

    invoke-direct {v3, p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$2;-><init>(Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void

    .line 88
    :cond_0
    sget-object v2, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    iput-object v2, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    goto :goto_0
.end method
