.class Lcom/coinbase/android/MainActivity$1;
.super Lcom/coinbase/android/dialog/InviteFriendsDialog;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/MainActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/coinbase/android/MainActivity$1;->this$0:Lcom/coinbase/android/MainActivity;

    invoke-direct {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCancel()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->onUserCancel()V

    .line 187
    return-void
.end method

.method public onUserInvite()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
