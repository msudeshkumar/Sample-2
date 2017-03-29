.class public Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;
.super Lroboguice/fragment/RoboFragment;
.source "JumioDocumentScanFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;
    }
.end annotation


# static fields
.field protected static final EXTRA_TAKING_BACK:Ljava/lang/String; = "EXTRA_TAKING_BACK"


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field mBackBmp:Landroid/graphics/Bitmap;

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mContinueButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c1
    .end annotation
.end field

.field mFrontBmp:Landroid/graphics/Bitmap;

.field mImagePreview:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01cc
    .end annotation
.end field

.field mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

.field mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

.field mJumioTypeIndex:I

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mRetakeButton:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01cd
    .end annotation
.end field

.field mScanPrompt:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01cb
    .end annotation
.end field

.field mScanTitle:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01ca
    .end annotation
.end field

.field mTakingBack:Z

.field mTask:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTakingBack:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->advanceToNextScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;Landroid/graphics/Bitmap;)[B
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->createPngByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method private advanceToNextScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    iget-boolean v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTakingBack:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    invoke-virtual {v3}, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->isBacksideImageRequired()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "jumio_doc_key"

    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 251
    const-string v3, "jumio_doc_index_key"

    iget v4, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioTypeIndex:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v3, "EXTRA_TAKING_BACK"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;

    invoke-interface {v3, v2}, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;->verificationProfileAction(Landroid/content/Intent;)V

    .line 286
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mRetakeButton:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 261
    .local v0, "context":Landroid/content/Context;
    const-string v3, ""

    const v4, 0x7f070147

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->dialog:Landroid/app/ProgressDialog;

    .line 264
    new-instance v3, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;

    invoke-direct {v3, p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;-><init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V

    .line 285
    invoke-virtual {v3}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->start()V

    goto :goto_0
.end method

.method private createPngByteArray(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 341
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 343
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 344
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 345
    .local v0, "byteArray":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v0    # "byteArray":[B
    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showRationaleDialog(ILpermissions/dispatcher/PermissionRequest;)V
    .locals 3
    .param p1, "messageResId"    # I
    .param p2, "request"    # Lpermissions/dispatcher/PermissionRequest;

    .prologue
    .line 160
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07009a

    new-instance v2, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$4;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$4;-><init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;Lpermissions/dispatcher/PermissionRequest;)V

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07009b

    new-instance v2, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$3;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$3;-><init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;Lpermissions/dispatcher/PermissionRequest;)V

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 176
    return-void
.end method

.method private updateLabels()V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTakingBack:Z

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mScanTitle:Landroid/widget/TextView;

    const v1, 0x7f07013e

    invoke-virtual {p0, v1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    sget-object v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$6;->$SwitchMap$com$coinbase$api$internal$entity$JumioProfileType:[I

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->getType()Lcom/coinbase/api/internal/entity/JumioProfileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    iget-boolean v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTakingBack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mBackBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mFrontBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mImagePreview:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTakingBack:Z

    if-eqz v0, :cond_4

    const v0, 0x7f020116

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mContinueButton:Landroid/widget/Button;

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mRetakeButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :goto_2
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mScanPrompt:Landroid/widget/TextView;

    const v1, 0x7f070139

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mScanPrompt:Landroid/widget/TextView;

    const v1, 0x7f07013a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->getType()Lcom/coinbase/api/internal/entity/JumioProfileType;

    move-result-object v0

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfileType;->PASSPORT:Lcom/coinbase/api/internal/entity/JumioProfileType;

    if-ne v0, v1, :cond_3

    .line 198
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mScanTitle:Landroid/widget/TextView;

    const v1, 0x7f070140

    invoke-virtual {p0, v1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_3
    sget-object v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$6;->$SwitchMap$com$coinbase$api$internal$entity$JumioProfileType:[I

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->getType()Lcom/coinbase/api/internal/entity/JumioProfileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioProfileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mScanPrompt:Landroid/widget/TextView;

    const v1, 0x7f07013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mScanTitle:Landroid/widget/TextView;

    const v1, 0x7f07013f

    invoke-virtual {p0, v1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 207
    :pswitch_3
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mScanPrompt:Landroid/widget/TextView;

    const v1, 0x7f07013c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 210
    :pswitch_4
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mScanPrompt:Landroid/widget/TextView;

    const v1, 0x7f07013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 216
    :cond_4
    const v0, 0x7f020117

    goto :goto_1

    .line 220
    :cond_5
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mImagePreview:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTakingBack:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mBackBmp:Landroid/graphics/Bitmap;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mContinueButton:Landroid/widget/Button;

    const v1, 0x7f070131

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 222
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mRetakeButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mFrontBmp:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 202
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-static {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->setupContinueRetakeButtonWithCheck(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V

    .line 111
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "jumio_doc_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/JumioDocument;

    iput-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    .line 88
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v2, "jumio_doc_index_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioTypeIndex:I

    .line 93
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioDocument;->getSupportedIdTypes()Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "docIds":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;>;"
    iget v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioTypeIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    iput-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    .line 95
    const-string v2, "EXTRA_TAKING_BACK"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTakingBack:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "vw":Landroid/view/View;
    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 181
    invoke-static {p0, p1, p3}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->onRequestPermissionsResult(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;I[I)V

    .line 183
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 229
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    .line 233
    .local v0, "parent":Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;
    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getFrontBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mFrontBmp:Landroid/graphics/Bitmap;

    .line 234
    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getBackBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mBackBmp:Landroid/graphics/Bitmap;

    .line 235
    invoke-direct {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->updateLabels()V

    .line 236
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 241
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method setupContinueRetakeButton()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mContinueButton:Landroid/widget/Button;

    new-instance v1, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$1;-><init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mRetakeButton:Landroid/widget/TextView;

    new-instance v1, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$2;-><init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-direct {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->updateLabels()V

    .line 136
    return-void
.end method

.method showDeniedForCamera()V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701b3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    return-void
.end method

.method showRationaleForCamera(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 1
    .param p1, "request"    # Lpermissions/dispatcher/PermissionRequest;

    .prologue
    .line 151
    const v0, 0x7f0701b4

    invoke-direct {p0, v0, p1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->showRationaleDialog(ILpermissions/dispatcher/PermissionRequest;)V

    .line 152
    return-void
.end method

.method takePhoto()V
    .locals 5

    .prologue
    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "jumio_doc_key"

    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 142
    const-string v2, "jumio_doc_index_key"

    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    .line 143
    invoke-virtual {v3}, Lcom/coinbase/api/internal/entity/JumioDocument;->getSupportedIdTypes()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 142
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v2, "EXTRA_TAKING_BACK"

    iget-boolean v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTakingBack:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;

    invoke-interface {v2, v1}, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;->verificationProfileAction(Landroid/content/Intent;)V

    .line 147
    return-void
.end method
