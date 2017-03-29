.class Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1$1;
.super Ljava/lang/Object;
.source "JumioChooseCountryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;

.field final synthetic val$bm:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1$1;->this$1:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;

    iput-object p2, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1$1;->this$1:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1;->val$vw:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    return-void
.end method
