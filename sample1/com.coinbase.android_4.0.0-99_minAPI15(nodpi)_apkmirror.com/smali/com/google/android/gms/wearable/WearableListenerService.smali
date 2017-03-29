.class public abstract Lcom/google/android/gms/wearable/WearableListenerService;
.super Landroid/app/Service;


# instance fields
.field private volatile zzZN:I

.field private zzaTe:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->zzZN:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->zzaTe:Ljava/lang/Object;

    return-void
.end method
