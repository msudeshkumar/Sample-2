.class Lcom/coinbase/android/identityVerification/JumioCompleteFragment$1;
.super Ljava/lang/Object;
.source "JumioCompleteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/JumioCompleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioCompleteFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/JumioCompleteFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/identityVerification/JumioCompleteFragment;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioCompleteFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioCompleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 29
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioCompleteFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioCompleteFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/JumioCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "quickstart_item_show_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/coinbase/android/quickstart/QuickstartItem;->VERIFY_IDENTITY:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 30
    invoke-virtual {v3}, Lcom/coinbase/android/quickstart/QuickstartItem;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v0, v1, v4}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 32
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioCompleteFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioCompleteFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/JumioCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 33
    return-void
.end method
