.class Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "TiltShiftPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/TiltShiftPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<[F>;"
    }
.end annotation


# instance fields
.field private volatile completed_:Z

.field private mode_:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;)V
    .locals 1
    .param p1, "tiltShiftMode"    # Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->mode_:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->completed_:Z

    .line 278
    return-void
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;)Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->mode_:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    return-object v0
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->completed_:Z

    .line 286
    return-void
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->completed_:Z

    return v0
.end method
