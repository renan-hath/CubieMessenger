.class Lcom/aviary/android/feather/widget/CropImageView$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/CropImageView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/CropImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/aviary/android/feather/widget/CropImageView$1;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView$1;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView$1;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/CropImageView;->access$000(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView$1;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/CropImageView;->access$000(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/HighlightView;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView$1;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/CropImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string/jumbo v1, "ImageViewTouchBase"

    const-string/jumbo v2, "onLayoutRunnable.. running"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView$1;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/CropImageView;->access$000(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/HighlightView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$1;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 109
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView$1;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/CropImageView;->access$000(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/HighlightView;->invalidate()V

    goto :goto_0
.end method
