.class public Lcom/coinbase/android/quickstart/QuickstartManager;
.super Ljava/lang/Object;
.source "QuickstartManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;,
        Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;,
        Lcom/coinbase/android/quickstart/QuickstartManager$Type;
    }
.end annotation

.annotation runtime Lroboguice/inject/ContextSingleton;
.end annotation


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coinbase/api/LoginManager;Landroid/content/Context;Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "loginManager"    # Lcom/coinbase/api/LoginManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bus"    # Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 137
    iput-object p2, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    .line 138
    iput-object p3, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mBus:Lcom/squareup/otto/Bus;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/quickstart/QuickstartManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/quickstart/QuickstartManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/quickstart/QuickstartManager;->insertQuickstartItems(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/quickstart/QuickstartManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/quickstart/QuickstartManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/coinbase/android/quickstart/QuickstartManager;->saveQuickstartItems(Ljava/util/List;)V

    return-void
.end method

.method public static getJumioStatus(Ljava/util/List;)Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioProfile;",
            ">;)",
            "Lcom/coinbase/api/internal/entity/JumioProfile$Status;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfile;>;"
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 275
    .local v0, "jumioStatus":Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/entity/JumioProfile;

    .line 276
    .local v1, "profile":Lcom/coinbase/api/internal/entity/JumioProfile;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfile;->getStatus()Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    move-result-object v3

    sget-object v4, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    if-ne v3, v4, :cond_2

    .line 277
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 290
    .end local v1    # "profile":Lcom/coinbase/api/internal/entity/JumioProfile;
    :cond_1
    :goto_1
    return-object v0

    .line 279
    .restart local v1    # "profile":Lcom/coinbase/api/internal/entity/JumioProfile;
    :cond_2
    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfile;->getStatus()Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    move-result-object v3

    sget-object v4, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    if-ne v3, v4, :cond_3

    .line 280
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfile;->getStatus()Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    move-result-object v3

    sget-object v4, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->FAILED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    if-eq v0, v3, :cond_0

    .line 283
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->FAILED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v1    # "profile":Lcom/coinbase/api/internal/entity/JumioProfile;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private insertQuickstartItems(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/quickstart/QuickstartItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "requirements":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/quickstart/QuickstartItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;

    .line 213
    .local v0, "requirement":Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;
    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;->getStep()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->fromString(Ljava/lang/String;)Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    move-result-object v3

    .line 215
    .local v3, "verificationType":Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;->getRequired()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "status":Ljava/lang/String;
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->COMPLETE:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    invoke-virtual {v5}, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 222
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartManager$4;->$SwitchMap$com$coinbase$android$quickstart$QuickstartManager$VerificationType:[I

    invoke-virtual {v3}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 256
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartItem;->ADD_PAYMENT_VIA_WEBSITE:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :pswitch_1
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartItem;->REGION_UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :pswitch_2
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartItem;->VERIFY_PHONE_NUMBER:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v5, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "userCountryCode":Ljava/lang/String;
    const-string v5, "CA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "SG"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 241
    :cond_1
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartItem;->ADD_PAYMENT_VIA_WEBSITE:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_2
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->PENDING:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    invoke-virtual {v5}, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 243
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartItem;->COMPLETE_CDV:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_3
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartItem;->ADD_PAYMENT_METHOD:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v2    # "userCountryCode":Ljava/lang/String;
    :pswitch_4
    sget-object v5, Lcom/coinbase/android/quickstart/QuickstartItem;->VERIFY_IDENTITY:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 261
    .end local v0    # "requirement":Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;
    .end local v1    # "status":Ljava/lang/String;
    .end local v3    # "verificationType":Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
    :cond_4
    return-void

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private performJumioAction(Lcom/coinbase/api/internal/entity/JumioProfile$Status;Landroid/app/Activity;)V
    .locals 4
    .param p1, "jumioStatus"    # Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 362
    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$4;->$SwitchMap$com$coinbase$api$internal$entity$JumioProfile$Status:[I

    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 384
    :goto_0
    return-void

    .line 365
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_ADD_PROFILE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 371
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070118

    .line 372
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    const v3, 0x7f07011e

    .line 373
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/coinbase/android/quickstart/QuickstartManager$2;

    invoke-direct {v3, p0}, Lcom/coinbase/android/quickstart/QuickstartManager$2;-><init>(Lcom/coinbase/android/quickstart/QuickstartManager;)V

    .line 374
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    .line 379
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static prepareItemView(Landroid/content/Context;Lcom/coinbase/android/quickstart/QuickstartItem;)Landroid/widget/RelativeLayout;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/coinbase/android/quickstart/QuickstartItem;

    .prologue
    .line 440
    const v3, 0x7f0300a8

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 442
    .local v2, "view":Landroid/widget/RelativeLayout;
    const v3, 0x7f0d02e5

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 443
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/coinbase/android/quickstart/QuickstartItem;->getTitleResource()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 445
    const v3, 0x7f0d02e4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 446
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/coinbase/android/quickstart/QuickstartItem;->getIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    return-object v2
.end method

.method private saveQuickstartItems(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/quickstart/QuickstartItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/quickstart/QuickstartItem;>;"
    const/4 v2, 0x0

    .line 265
    invoke-static {}, Lcom/coinbase/android/quickstart/QuickstartItem;->values()[Lcom/coinbase/android/quickstart/QuickstartItem;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 266
    .local v0, "item":Lcom/coinbase/android/quickstart/QuickstartItem;
    iget-object v5, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    const-string v6, "quickstart_item_show_%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 267
    invoke-virtual {v0}, Lcom/coinbase/android/quickstart/QuickstartItem;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 268
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 266
    invoke-static {v5, v6, v7}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "item":Lcom/coinbase/android/quickstart/QuickstartItem;
    :cond_0
    return-void
.end method

.method private showCdvVerification(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 388
    const-string v2, ""

    iget-object v3, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0701df

    .line 389
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-static {p1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 390
    .local v0, "dialog":Landroid/app/ProgressDialog;
    new-instance v1, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    iget-object v2, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/coinbase/android/quickstart/QuickstartManager$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/coinbase/android/quickstart/QuickstartManager$3;-><init>(Lcom/coinbase/android/quickstart/QuickstartManager;Landroid/app/ProgressDialog;Landroid/app/Activity;)V

    invoke-direct {v1, v2, v3}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;)V

    .line 436
    .local v1, "task":Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;
    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->getPaymentMethods()V

    .line 437
    return-void
.end method


# virtual methods
.method public cancelQuickstartItem(Lcom/coinbase/android/quickstart/QuickstartItem;)V
    .locals 6
    .param p1, "item"    # Lcom/coinbase/android/quickstart/QuickstartItem;

    .prologue
    const/4 v5, 0x1

    .line 170
    iget-object v0, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    const-string v1, "quickstart_item_cancelled_%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 171
    invoke-virtual {p1}, Lcom/coinbase/android/quickstart/QuickstartItem;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0, v1, v5}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 172
    return-void
.end method

.method public getCachedQuickstartItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/quickstart/QuickstartItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/quickstart/QuickstartManager;->getCachedQuickstartItems(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCachedQuickstartItems(Z)Ljava/util/List;
    .locals 13
    .param p1, "includeCancelled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/quickstart/QuickstartItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/quickstart/QuickstartItem;>;"
    invoke-static {}, Lcom/coinbase/android/quickstart/QuickstartItem;->values()[Lcom/coinbase/android/quickstart/QuickstartItem;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v1, v6, v4

    .line 156
    .local v1, "item":Lcom/coinbase/android/quickstart/QuickstartItem;
    iget-object v8, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    const-string v9, "quickstart_item_cancelled_%s"

    new-array v10, v12, [Ljava/lang/Object;

    .line 157
    invoke-virtual {v1}, Lcom/coinbase/android/quickstart/QuickstartItem;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 156
    invoke-static {v8, v9, v5}, Lcom/coinbase/android/utils/PreferenceUtils;->getPrefsBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    .local v0, "cancelled":Z
    iget-object v8, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    const-string v9, "quickstart_item_show_%s"

    new-array v10, v12, [Ljava/lang/Object;

    .line 159
    invoke-virtual {v1}, Lcom/coinbase/android/quickstart/QuickstartItem;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 158
    invoke-static {v8, v9, v5}, Lcom/coinbase/android/utils/PreferenceUtils;->getPrefsBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 161
    .local v3, "show":Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    .line 162
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "cancelled":Z
    .end local v1    # "item":Lcom/coinbase/android/quickstart/QuickstartItem;
    .end local v3    # "show":Z
    :cond_2
    return-object v2
.end method

.method public performActionForItem(Lcom/coinbase/android/quickstart/QuickstartItem;Landroid/app/Activity;Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;)V
    .locals 12
    .param p1, "item"    # Lcom/coinbase/android/quickstart/QuickstartItem;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "verifyPhoneCaller"    # Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    .prologue
    .line 295
    sget-object v9, Lcom/coinbase/android/quickstart/QuickstartManager$4;->$SwitchMap$com$coinbase$android$quickstart$QuickstartItem:[I

    invoke-virtual {p1}, Lcom/coinbase/android/quickstart/QuickstartItem;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 298
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    const-class v9, Lcom/coinbase/android/paymentmethods/PaymentMethodsActivity;

    invoke-direct {v4, p2, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "SKIP_EMPTY_VIEW"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    invoke-virtual {p2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 304
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v6, Lcom/coinbase/android/phone/VerifyPhoneHandler;

    iget-object v9, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mBus:Lcom/squareup/otto/Bus;

    invoke-direct {v6, p3, v9}, Lcom/coinbase/android/phone/VerifyPhoneHandler;-><init>(Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;Lcom/squareup/otto/Bus;)V

    .line 305
    .local v6, "mVerificationHandler":Lcom/coinbase/android/phone/VerifyPhoneHandler;
    invoke-virtual {v6}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->addPhone()V

    goto :goto_0

    .line 309
    .end local v6    # "mVerificationHandler":Lcom/coinbase/android/phone/VerifyPhoneHandler;
    :pswitch_2
    sget-object v5, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 312
    .local v5, "jumioStatus":Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    :try_start_0
    iget-object v9, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v9}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/api/internal/CoinbaseInternal;->getJumioProfiles()Lcom/coinbase/api/internal/entity/JumioProfilesResponse;

    move-result-object v7

    .line 313
    .local v7, "response":Lcom/coinbase/api/internal/entity/JumioProfilesResponse;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/coinbase/api/internal/entity/JumioProfilesResponse;->getJumioProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 314
    invoke-virtual {v7}, Lcom/coinbase/api/internal/entity/JumioProfilesResponse;->getJumioProfiles()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/coinbase/android/quickstart/QuickstartManager;->getJumioStatus(Ljava/util/List;)Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 320
    .end local v7    # "response":Lcom/coinbase/api/internal/entity/JumioProfilesResponse;
    :cond_1
    :goto_1
    invoke-direct {p0, v5, p2}, Lcom/coinbase/android/quickstart/QuickstartManager;->performJumioAction(Lcom/coinbase/api/internal/entity/JumioProfile$Status;Landroid/app/Activity;)V

    goto :goto_0

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 325
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "jumioStatus":Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    :pswitch_3
    const/4 v1, 0x0

    .line 326
    .local v1, "account":Lcom/coinbase/v2/models/account/Data;
    iget-object v9, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v9}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 327
    .local v0, "a":Lcom/coinbase/v2/models/account/Data;
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v10

    sget-object v11, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v10, v11, :cond_2

    .line 328
    move-object v1, v0

    .line 332
    .end local v0    # "a":Lcom/coinbase/v2/models/account/Data;
    :cond_3
    if-eqz v1, :cond_0

    .line 334
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 335
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mContext:Landroid/content/Context;

    const-class v10, Lcom/coinbase/android/deposits/FiatTransactionsActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v9, "DepositActivity_Account"

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v9, "DepositActivity_Type"

    sget-object v10, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 339
    const v9, 0x7f04000a

    const v10, 0x7f04001c

    invoke-virtual {p2, v9, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 344
    .end local v1    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/coinbase/android/quickstart/QuickstartManager;->showCdvVerification(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 350
    :pswitch_5
    const-string v9, "https://www.coinbase.com"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 351
    .local v8, "webpage":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v4, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public updateQuickstartItems(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "completion"    # Ljava/lang/Runnable;

    .prologue
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/quickstart/QuickstartItem;>;"
    iget-object v1, p0, Lcom/coinbase/android/quickstart/QuickstartManager;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/quickstart/QuickstartManager$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/coinbase/android/quickstart/QuickstartManager$1;-><init>(Lcom/coinbase/android/quickstart/QuickstartManager;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->getRemainingVerifications(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 209
    return-void
.end method
