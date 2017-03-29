.class public Lcom/coinbase/zxing/client/android/ApplicationTest;
.super Landroid/test/ApplicationTestCase;
.source "ApplicationTest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/test/ApplicationTestCase",
        "<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Landroid/app/Application;

    invoke-direct {p0, v0}, Landroid/test/ApplicationTestCase;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method
