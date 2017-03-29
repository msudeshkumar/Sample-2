.class Lcom/coinbase/android/signin/TwoFactorActivity$4;
.super Ljava/lang/Object;
.source "TwoFactorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 142
    iput-object p1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$4;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    new-instance v0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;

    iget-object v1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$4;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    iget-object v2, p0, Lcom/coinbase/android/signin/TwoFactorActivity$4;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    iget-object v3, p0, Lcom/coinbase/android/signin/TwoFactorActivity$4;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    iget-object v3, v3, Lcom/coinbase/android/signin/TwoFactorActivity;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/coinbase/android/signin/TwoFactorActivity$4;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    iget-object v4, v4, Lcom/coinbase/android/signin/TwoFactorActivity;->mPassword:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;-><init>(Lcom/coinbase/android/signin/TwoFactorActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->execute()V

    .line 146
    return-void
.end method
