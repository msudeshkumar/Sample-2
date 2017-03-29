.class public Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;
.super Lroboguice/fragment/RoboFragment;
.source "JumioChooseCountryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$OnCountrySelectedListener;,
        Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioDocument;",
            ">;"
        }
    .end annotation
.end field

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c1
    .end annotation
.end field

.field mJumioDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioDocument;",
            ">;"
        }
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mOuterContainer:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01c2
    .end annotation
.end field

.field mProgress:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x102000d
    .end annotation
.end field

.field mSpinner:Landroid/widget/Spinner;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01c5
    .end annotation
.end field

.field mTask:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mJumioDocuments:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->createAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private createAdapter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioDocument;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "jumioDocuments":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioDocument;>;"
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    new-instance v0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$3;

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$3;-><init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 249
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 250
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0
.end method

.method private getImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "vw"    # Landroid/widget/ImageView;

    .prologue
    .line 130
    new-instance v0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;-><init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 159
    .local v0, "worker":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 202
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$2;-><init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$OnCountrySelectedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$OnCountrySelectedListener;-><init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 222
    new-instance v0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;-><init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mTask:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;

    .line 223
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mOuterContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mTask:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;

    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->execute()V

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    const v0, 0x7f03006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 256
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 262
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 263
    return-void
.end method
