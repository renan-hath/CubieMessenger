.class Lcom/liquable/nemo/util/crop/CropImageActivity$5;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/CropImageActivity;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/CropImageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 607
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 608
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$100(Lcom/liquable/nemo/util/crop/CropImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 609
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$800(Lcom/liquable/nemo/util/crop/CropImageActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/liquable/nemo/util/crop/CropImageActivity$5$1;-><init>(Lcom/liquable/nemo/util/crop/CropImageActivity$5;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$5;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    iget-object v3, v3, Lcom/liquable/nemo/util/crop/CropImageActivity;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 629
    return-void

    .line 625
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
