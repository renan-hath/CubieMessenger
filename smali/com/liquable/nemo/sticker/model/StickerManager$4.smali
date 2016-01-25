.class Lcom/liquable/nemo/sticker/model/StickerManager$4;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "StickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerItemThumbnail(Lcom/liquable/nemo/model/sticker/StickerItemDto;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

.field final synthetic val$itemCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/model/StickerManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/model/StickerManager;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$4;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$4;->val$itemCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$4;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    # getter for: Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->access$000(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$4;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 358
    return-void
.end method
