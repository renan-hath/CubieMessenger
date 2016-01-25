.class Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "ColorSplashPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/ColorSplashPanel;
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

.field private mode_:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

.field private radius_:I


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;I[F)V
    .locals 1
    .param p1, "ColorSplashBrushMode"    # Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;
    .param p2, "radius"    # I
    .param p3, "points"    # [F

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->mode_:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 301
    iput p2, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->radius_:I

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->completed_:Z

    .line 303
    invoke-virtual {p0, p3}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->completed_:Z

    .line 316
    return-void
.end method

.method public getMode()Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->mode_:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->radius_:I

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->completed_:Z

    return v0
.end method
