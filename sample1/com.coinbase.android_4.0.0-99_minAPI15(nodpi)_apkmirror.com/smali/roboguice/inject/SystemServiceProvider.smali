.class public Lroboguice/inject/SystemServiceProvider;
.super Ljava/lang/Object;
.source "SystemServiceProvider.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected application:Landroid/app/Application;

.field protected serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 27
    .local p0, "this":Lroboguice/inject/SystemServiceProvider;, "Lroboguice/inject/SystemServiceProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lroboguice/inject/SystemServiceProvider;->serviceName:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lroboguice/inject/SystemServiceProvider;->application:Landroid/app/Application;

    .line 30
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lroboguice/inject/SystemServiceProvider;, "Lroboguice/inject/SystemServiceProvider<TT;>;"
    iget-object v0, p0, Lroboguice/inject/SystemServiceProvider;->application:Landroid/app/Application;

    iget-object v1, p0, Lroboguice/inject/SystemServiceProvider;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
