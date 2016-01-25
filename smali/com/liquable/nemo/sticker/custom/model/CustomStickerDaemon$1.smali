.class Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$1;
.super Ljava/lang/Object;
.source "CustomStickerDaemon.java"

# interfaces
.implements Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->downloadCustomStickerEffect(Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

.field final synthetic val$keyPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$1;->this$0:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$1;->val$keyPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 202
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER_EFFECT:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$1;->val$keyPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 3
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 208
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER_EFFECT:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$1;->val$keyPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadFailed(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 214
    return-void
.end method
