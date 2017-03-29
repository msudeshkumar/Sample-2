.class public Lcom/coinbase/android/phone/PhoneNumberFragment;
.super Lroboguice/fragment/RoboFragment;
.source "PhoneNumberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;
    }
.end annotation


# instance fields
.field private isInForeground:Z

.field mAdapter:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

.field mAddPhone:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01ef
    .end annotation
.end field

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mEmpty:Landroid/view/View;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method private getPhoneNumbers()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 38
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/phone/PhoneNumberFragment$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/phone/PhoneNumberFragment$1;-><init>(Lcom/coinbase/android/phone/PhoneNumberFragment;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getPhoneNumbers(Lretrofit/Callback;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getCallerFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->isInForeground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    new-instance v0, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;-><init>(Lcom/coinbase/android/phone/PhoneNumberFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mAdapter:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    .line 160
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mAdapter:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mAddPhone:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    new-instance v0, Lcom/coinbase/android/phone/VerifyPhoneHandler;

    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/phone/VerifyPhoneHandler;-><init>(Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;Lcom/squareup/otto/Bus;)V

    .line 195
    .local v0, "handler":Lcom/coinbase/android/phone/VerifyPhoneHandler;
    invoke-virtual {v0}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->addPhone()V

    .line 197
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Verify phone from settings"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    const v0, 0x7f03007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onPause()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->isInForeground:Z

    .line 178
    return-void
.end method

.method public onPhoneNumbersUpdated(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 205
    invoke-direct {p0}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getPhoneNumbers()V

    .line 207
    invoke-virtual {p0}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/Utils;->processPhoneNumbersUpdatedEvent(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;Landroid/content/Context;)V

    .line 208
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->isInForeground:Z

    .line 170
    invoke-direct {p0}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getPhoneNumbers()V

    .line 172
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 183
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 189
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 190
    return-void
.end method
