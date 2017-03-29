.class Lcom/coinbase/android/signin/StateDisclosureActivity$2;
.super Ljava/lang/Object;
.source "StateDisclosureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/StateDisclosureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$2;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    new-instance v0, Lcom/coinbase/android/signin/StateListDialogFragment;

    invoke-direct {v0}, Lcom/coinbase/android/signin/StateListDialogFragment;-><init>()V

    .line 108
    .local v0, "dialogFragment":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$2;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "change_state"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 109
    return-void
.end method
