.class Lcom/coinbase/android/oauth/AccessGrantActivity$UpdateAvatarTask;
.super Lcom/coinbase/android/task/LoadGravatarTask;
.source "AccessGrantActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/oauth/AccessGrantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAvatarTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/oauth/AccessGrantActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$UpdateAvatarTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/task/LoadGravatarTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
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
    .line 37
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$UpdateAvatarTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    iget-object v0, v0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mUserAvatarView:Landroid/widget/ImageView;

    new-instance v1, Lcom/coinbase/android/ui/AvatarDrawable;

    invoke-direct {v1, p1}, Lcom/coinbase/android/ui/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
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
    .line 30
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/oauth/AccessGrantActivity$UpdateAvatarTask;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
