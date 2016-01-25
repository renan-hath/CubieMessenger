.class Lcom/liquable/nemo/sticker/model/StickerManager$2;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "StickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/model/StickerManager;->downloadSticker(Lcom/liquable/nemo/model/sticker/StickerDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

.field final synthetic val$stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerDto;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/model/StickerManager;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$2;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$2;->val$stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$2;->count:I

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 297
    iget v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$2;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$2;->count:I

    .line 298
    iget v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$2;->count:I

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$2;->val$stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerDto;->getFrames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager$2;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    # getter for: Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->access$000(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager$2;->val$stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 300
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method
