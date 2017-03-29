.class public Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;
.super Lroboguice/fragment/RoboFragment;
.source "IdentityVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;,
        Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$LoadFlagImageTask;,
        Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;
    }
.end annotation


# static fields
.field private static final INTENT_VERIFY:I = 0x2711


# instance fields
.field mAdapter:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;

.field mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01c1
    .end annotation
.end field

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mEmptyView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x1020004
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x102000a
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mProgress:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x102000d
    .end annotation
.end field

.field mTask:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 197
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 215
    new-instance v0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;-><init>(Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mAdapter:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;

    .line 216
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mAdapter:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance v0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;-><init>(Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mTask:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;

    .line 221
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mTask:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;

    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->execute()V

    .line 222
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 245
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 247
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;

    invoke-interface {v1, v0}, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;->verificationProfileAction(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    const v0, 0x7f03006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 227
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 233
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 234
    return-void
.end method
