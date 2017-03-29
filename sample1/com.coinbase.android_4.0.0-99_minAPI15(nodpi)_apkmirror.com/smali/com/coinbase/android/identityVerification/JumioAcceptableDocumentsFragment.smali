.class public Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;
.super Lroboguice/fragment/RoboFragment;
.source "JumioAcceptableDocumentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;
    }
.end annotation


# static fields
.field private static final INTENT_VERIFY:I = 0x2711


# instance fields
.field mAdapter:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mDocIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDocList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEmptyView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x1020004
    .end annotation
.end field

.field mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

.field mListView:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x102000a
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 128
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 165
    new-instance v0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mDocList:Ljava/util/List;

    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mDocIcons:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;-><init>(Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mAdapter:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;

    .line 166
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mAdapter:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$1;-><init>(Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "jumio_doc_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/coinbase/api/internal/entity/JumioDocument;

    iput-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    .line 136
    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    if-nez v4, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 152
    :cond_0
    return-void

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v4}, Lcom/coinbase/api/internal/entity/JumioDocument;->getSupportedIdTypes()Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "docIds":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mDocList:Ljava/util/List;

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mDocIcons:Ljava/util/List;

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    .line 144
    .local v2, "id":Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->getType()Lcom/coinbase/api/internal/entity/JumioProfileType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getDisplayName(Lcom/coinbase/api/internal/entity/JumioProfileType;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "idType":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mDocList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->getType()Lcom/coinbase/api/internal/entity/JumioProfileType;

    move-result-object v4

    sget-object v6, Lcom/coinbase/api/internal/entity/JumioProfileType;->PASSPORT:Lcom/coinbase/api/internal/entity/JumioProfileType;

    if-ne v4, v6, :cond_2

    .line 147
    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mDocIcons:Ljava/util/List;

    new-instance v6, Ljava/lang/Integer;

    const v7, 0x7f0200f3

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_2
    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mDocIcons:Ljava/util/List;

    new-instance v6, Ljava/lang/Integer;

    const v7, 0x7f0200f2

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    const v0, 0x7f030054

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 192
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 198
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 199
    return-void
.end method
