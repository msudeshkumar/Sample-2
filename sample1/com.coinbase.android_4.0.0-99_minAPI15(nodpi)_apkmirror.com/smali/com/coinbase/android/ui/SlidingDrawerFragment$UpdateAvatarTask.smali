.class Lcom/coinbase/android/ui/SlidingDrawerFragment$UpdateAvatarTask;
.super Lcom/coinbase/android/task/LoadGravatarTask;
.source "SlidingDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/ui/SlidingDrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAvatarTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;Ljava/lang/String;)V
    .locals 1
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$UpdateAvatarTask;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    .line 115
    invoke-virtual {p1}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/coinbase/android/task/LoadGravatarTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$UpdateAvatarTask;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    iget-object v0, v0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mProfileView:Landroid/view/View;

    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/coinbase/android/ui/AvatarDrawable;

    invoke-direct {v1, p1}, Lcom/coinbase/android/ui/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/ui/SlidingDrawerFragment$UpdateAvatarTask;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
