.class Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$3;
.super Ljava/lang/Object;
.source "CustomStickerDaemon.java"

# interfaces
.implements Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->uploadThenSaveCustomSticker(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$uploadSuccessFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$3;->this$0:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$3;->val$uploadSuccessFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 364
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$3;->val$uploadSuccessFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 369
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 370
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 374
    return-void
.end method
