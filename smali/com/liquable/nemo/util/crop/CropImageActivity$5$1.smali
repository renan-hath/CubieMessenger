.class Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/CropImageActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$5;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/CropImageActivity$5;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/util/crop/CropImageActivity$5;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$5;

    iput-object p2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 612
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$5;

    iget-object v1, v1, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$100(Lcom/liquable/nemo/util/crop/CropImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$5;

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mImageView:Lcom/liquable/nemo/util/crop/CropImageView;
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$000(Lcom/liquable/nemo/util/crop/CropImageActivity;)Lcom/liquable/nemo/util/crop/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/crop/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 614
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$5;

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$100(Lcom/liquable/nemo/util/crop/CropImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 615
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$5;

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->val$b:Landroid/graphics/Bitmap;

    # setter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$102(Lcom/liquable/nemo/util/crop/CropImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$5;

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mImageView:Lcom/liquable/nemo/util/crop/CropImageView;
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$000(Lcom/liquable/nemo/util/crop/CropImageActivity;)Lcom/liquable/nemo/util/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$5;

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mImageView:Lcom/liquable/nemo/util/crop/CropImageView;
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$000(Lcom/liquable/nemo/util/crop/CropImageActivity;)Lcom/liquable/nemo/util/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/liquable/nemo/util/crop/CropImageView;->center(ZZ)V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 621
    return-void
.end method
