.class Lcom/liquable/nemo/sticker/model/StickerManager$3;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "StickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerCategoryThumbnail(Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

.field final synthetic val$categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/model/StickerManager;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$3;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$3;->val$categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$3;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    # getter for: Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->access$000(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$3;->val$categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 342
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 343
    return-void
.end method
