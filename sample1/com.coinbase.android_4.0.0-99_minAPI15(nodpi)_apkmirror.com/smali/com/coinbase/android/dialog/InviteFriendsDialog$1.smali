.class Lcom/coinbase/android/dialog/InviteFriendsDialog$1;
.super Ljava/lang/Object;
.source "InviteFriendsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/dialog/InviteFriendsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/dialog/InviteFriendsDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/dialog/InviteFriendsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/dialog/InviteFriendsDialog;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/coinbase/android/dialog/InviteFriendsDialog$1;->this$0:Lcom/coinbase/android/dialog/InviteFriendsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/coinbase/android/dialog/InviteFriendsDialog$1;->this$0:Lcom/coinbase/android/dialog/InviteFriendsDialog;

    invoke-virtual {v0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->onUserCancel()V

    .line 64
    return-void
.end method
