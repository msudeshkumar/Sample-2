.class Lcom/coinbase/android/signin/TwoFactorActivity$1;
.super Ljava/lang/Object;
.source "TwoFactorActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/TwoFactorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/TwoFactorActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/TwoFactorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/TwoFactorActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$1;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 111
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$1;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/TwoFactorActivity;->submit()V

    .line 114
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
