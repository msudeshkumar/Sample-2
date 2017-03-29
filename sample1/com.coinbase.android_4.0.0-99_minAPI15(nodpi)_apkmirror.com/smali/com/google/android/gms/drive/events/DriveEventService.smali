.class public abstract Lcom/google/android/gms/drive/events/DriveEventService;
.super Landroid/app/Service;


# instance fields
.field private final mName:Ljava/lang/String;

.field zzZN:I

.field zzaed:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "DriveEventService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/DriveEventService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzaed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzZN:I

    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->mName:Ljava/lang/String;

    return-void
.end method
