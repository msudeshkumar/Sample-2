.class Lcom/coinbase/android/transfers/EmailPromptFragment$2;
.super Ljava/lang/Object;
.source "EmailPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/EmailPromptFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/EmailPromptFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/EmailPromptFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$2;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 126
    return-void
.end method
