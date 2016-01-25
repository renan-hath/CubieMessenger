.class Lcom/liquable/nemo/sticker/model/StickerManager$7;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "StickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerItemSampleBitmaps(Lcom/liquable/nemo/model/sticker/StickerItemDto;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

.field final synthetic val$keyPath:Ljava/lang/String;

.field final synthetic val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerItemDto;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/model/StickerManager;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$7;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$7;->val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/model/StickerManager$7;->val$keyPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    .line 661
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$7;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    # getter for: Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->access$000(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_SAMPLE:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$7;->val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 662
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/StickerManager$7;->val$keyPath:Ljava/lang/String;

    .line 661
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void
.end method
