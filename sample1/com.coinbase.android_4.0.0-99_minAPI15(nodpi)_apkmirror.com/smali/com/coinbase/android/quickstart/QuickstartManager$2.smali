.class Lcom/coinbase/android/quickstart/QuickstartManager$2;
.super Ljava/lang/Object;
.source "QuickstartManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/quickstart/QuickstartManager;->performJumioAction(Lcom/coinbase/api/internal/entity/JumioProfile$Status;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/quickstart/QuickstartManager;


# direct methods
.method constructor <init>(Lcom/coinbase/android/quickstart/QuickstartManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/quickstart/QuickstartManager;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/coinbase/android/quickstart/QuickstartManager$2;->this$0:Lcom/coinbase/android/quickstart/QuickstartManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 377
    return-void
.end method
