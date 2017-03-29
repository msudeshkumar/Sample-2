.class Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;
.super Ljava/lang/Object;
.source "Pbkdf2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/crypto/Pbkdf2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pbkdf2State"
.end annotation


# instance fields
.field block:[B

.field final c:I

.field currentIteration:I

.field final hLen:I

.field i:I

.field final l:I

.field final output:[B

.field final prf:Ljavax/crypto/Mac;

.field final salt:[B

.field public u:[B


# direct methods
.method constructor <init>(Ljavax/crypto/Mac;[BII)V
    .locals 3
    .param p1, "prf"    # Ljavax/crypto/Mac;
    .param p2, "salt"    # [B
    .param p3, "c"    # I
    .param p4, "bitsToGenerate"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->prf:Ljavax/crypto/Mac;

    .line 39
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    iput v1, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->hLen:I

    .line 40
    iput p3, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->c:I

    .line 41
    iput-object p2, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->salt:[B

    .line 42
    div-int/lit8 v0, p4, 0x8

    .line 43
    .local v0, "dkLen":I
    iget v1, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->hLen:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->hLen:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->l:I

    .line 44
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->output:[B

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->i:I

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/coinbase/android/crypto/Pbkdf2$Pbkdf2State;->currentIteration:I

    .line 47
    return-void
.end method
