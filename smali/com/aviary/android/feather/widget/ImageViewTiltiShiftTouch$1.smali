.class Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;
.super Ljava/lang/Object;
.source "ImageViewTiltiShiftTouch.java"

# interfaces
.implements Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEasingFinished(D)V
    .locals 2
    .param p1, "value"    # D

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    # getter for: Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->access$000(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    # getter for: Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->access$100(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Lcom/aviary/android/feather/widget/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->setRadius(F)V

    .line 273
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    # getter for: Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->access$100(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Lcom/aviary/android/feather/widget/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->setAlpha(F)V

    .line 274
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->invalidate()V

    .line 276
    :cond_0
    return-void
.end method

.method public onEasingStarted(D)V
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 262
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    # getter for: Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->access$000(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    # getter for: Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->access$100(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Lcom/aviary/android/feather/widget/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->setRadius(F)V

    .line 264
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    # getter for: Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->access$100(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Lcom/aviary/android/feather/widget/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->setAlpha(F)V

    .line 265
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->invalidate()V

    .line 267
    :cond_0
    return-void
.end method

.method public onEasingValueChanged(DD)V
    .locals 2
    .param p1, "value"    # D
    .param p3, "oldValue"    # D

    .prologue
    .line 254
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    # getter for: Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->access$000(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    # getter for: Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->access$100(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Lcom/aviary/android/feather/widget/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->setRadius(F)V

    .line 256
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->invalidate()V

    .line 258
    :cond_0
    return-void
.end method
