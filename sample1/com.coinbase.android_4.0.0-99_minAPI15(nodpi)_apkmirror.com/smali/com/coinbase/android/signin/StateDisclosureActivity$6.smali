.class Lcom/coinbase/android/signin/StateDisclosureActivity$6;
.super Ljava/lang/Object;
.source "StateDisclosureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/StateDisclosureActivity;->loadWyomingLockedView()V
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
    .line 187
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$6;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$6;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v1, v1, Lcom/coinbase/android/signin/StateDisclosureActivity;->loginManager:Lcom/coinbase/api/LoginManager;

    .line 191
    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getActiveUserEmail()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$6;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    const v3, 0x7f0702b2

    .line 192
    invoke-virtual {v2, v3}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v1, v2}, Lcom/coinbase/android/utils/Utils;->supportEmailIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "contactSupportIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$6;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$6;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    :cond_0
    return-void
.end method
