.class public abstract Lcom/coinbase/android/task/LoadGravatarTask;
.super Lroboguice/util/RoboAsyncTask;
.source "LoadGravatarTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/RoboAsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mGravatarId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gravatarEmail"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lroboguice/util/RoboAsyncTask;-><init>(Landroid/content/Context;)V

    .line 20
    sget-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/android/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/task/LoadGravatarTask;->mGravatarId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    const-string v1, "https://secure.gravatar.com/avatar/%1$s?s=100&d=https://www.coinbase.com/assets/avatar.png"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coinbase/android/task/LoadGravatarTask;->mGravatarId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "url":Ljava/lang/String;
    const-string v1, "Coinbase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading avatar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/coinbase/android/task/LoadGravatarTask;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lroboguice/util/RoboAsyncTask;->onException(Ljava/lang/Exception;)V

    .line 36
    const-string v0, "Coinbase"

    const-string v1, "Could not load gravatar!"

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
