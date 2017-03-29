.class Lcom/coinbase/android/signin/StateDisclosureActivity$3;
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
    .line 111
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v2, v2, Lcom/coinbase/android/signin/StateDisclosureActivity;->chosenState:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v3, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    const v4, 0x7f0702e0

    invoke-virtual {v3, v4}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v2, v2, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "state":Ljava/lang/String;
    const-string v2, "Wyoming"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    # invokes: Lcom/coinbase/android/signin/StateDisclosureActivity;->isSignUp(Landroid/os/Bundle;)Z
    invoke-static {v2, v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->access$100(Lcom/coinbase/android/signin/StateDisclosureActivity;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    # invokes: Lcom/coinbase/android/signin/StateDisclosureActivity;->showWyoming()V
    invoke-static {v2}, Lcom/coinbase/android/signin/StateDisclosureActivity;->access$200(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    # invokes: Lcom/coinbase/android/signin/StateDisclosureActivity;->showWyomingLocked()V
    invoke-static {v2}, Lcom/coinbase/android/signin/StateDisclosureActivity;->access$300(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    goto :goto_0

    .line 126
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string v2, "New York"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    # invokes: Lcom/coinbase/android/signin/StateDisclosureActivity;->showNewYork()V
    invoke-static {v2}, Lcom/coinbase/android/signin/StateDisclosureActivity;->access$400(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$3;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    new-instance v3, Lcom/coinbase/android/signin/StateDisclosureActivity$3$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$3$1;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity$3;)V

    # invokes: Lcom/coinbase/android/signin/StateDisclosureActivity;->proceed(Ljava/lang/Runnable;)V
    invoke-static {v2, v3}, Lcom/coinbase/android/signin/StateDisclosureActivity;->access$500(Lcom/coinbase/android/signin/StateDisclosureActivity;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
