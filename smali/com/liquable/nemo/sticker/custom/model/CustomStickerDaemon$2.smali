.class Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;
.super Ljava/lang/Object;
.source "CustomStickerDaemon.java"

# interfaces
.implements Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->downloadCustomStickerFiles(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

.field final synthetic val$customStickerCode:Ljava/lang/String;

.field final synthetic val$notExists:Ljava/util/List;

.field final synthetic val$pair:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;Ljava/util/List;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->this$0:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->val$notExists:Ljava/util/List;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->val$customStickerCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->val$pair:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->val$notExists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->val$customStickerCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->val$pair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 228
    invoke-virtual {v0}, Lcom/liquable/nemo/storage/LocalKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {v1, v2, v3, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->this$0:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->val$customStickerCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;->val$notExists:Ljava/util/List;

    # invokes: Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->downloadCustomStickerFiles(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->access$000(Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 0
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 236
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 240
    return-void
.end method
