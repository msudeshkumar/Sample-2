.class public Lcom/coinbase/android/identityVerification/JumioCompleteFragment;
.super Lroboguice/fragment/RoboFragment;
.source "JumioCompleteFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const v1, 0x7f030071

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "vw":Landroid/view/View;
    const v1, 0x7f0d01c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/identityVerification/JumioCompleteFragment$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/identityVerification/JumioCompleteFragment$1;-><init>(Lcom/coinbase/android/identityVerification/JumioCompleteFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-object v0
.end method
