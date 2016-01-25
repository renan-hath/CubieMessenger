.class Lcom/liquable/nemo/sticker/model/StickerManager$5;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "StickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerPackage(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field private failedCount:I

.field final synthetic this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

.field final synthetic val$packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;

.field final synthetic val$thumbnailPath:Ljava/lang/String;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerPackageDto;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/model/StickerManager;

    .prologue
    const/4 v0, 0x0

    .line 371
    iput-object p1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    iput p3, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$total:I

    iput-object p4, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$thumbnailPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    .line 372
    iput v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->count:I

    .line 373
    iput v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->failedCount:I

    return-void
.end method

.method private complete()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->setStickerPackageDownloadingEnd(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    # getter for: Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->access$000(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_PACKAGE:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 378
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 380
    iget v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->failedCount:I

    iget v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$total:I

    if-ne v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    # getter for: Lcom/liquable/nemo/sticker/model/StickerManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->access$100(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/NotifyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/NotifyManager;->notifyDownloadStickerFailed(Lcom/liquable/nemo/model/sticker/StickerPackageDto;)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    # getter for: Lcom/liquable/nemo/sticker/model/StickerManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->access$100(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/NotifyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager;->notifyDownloadStickerComplete()V

    goto :goto_0
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .prologue
    .line 389
    iget v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->count:I

    .line 390
    iget v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->count:I

    iget v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$total:I

    if-ne v0, v1, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/model/StickerManager$5;->complete()V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    # getter for: Lcom/liquable/nemo/sticker/model/StickerManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->access$100(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/NotifyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    iget v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$total:I

    iget v3, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->count:I

    iget-object v4, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/android/NotifyManager;->notifyDownloadStickerProgress(Lcom/liquable/nemo/model/sticker/StickerPackageDto;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 400
    iget v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->count:I

    .line 401
    iget v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->failedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->failedCount:I

    .line 402
    iget v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->count:I

    iget v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$5;->val$total:I

    if-ne v0, v1, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/model/StickerManager$5;->complete()V

    .line 405
    :cond_0
    return-void
.end method
