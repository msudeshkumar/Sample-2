.class Lcom/coinbase/android/signin/TwoFactorActivity$5;
.super Ljava/lang/Object;
.source "TwoFactorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/TwoFactorActivity;->onResume()V
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
    .line 189
    iput-object p1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$5;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$5;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/coinbase/android/signin/TwoFactorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 193
    .local v0, "keyboard":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$5;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    iget-object v1, v1, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faField:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 194
    return-void
.end method
