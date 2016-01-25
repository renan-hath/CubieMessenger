.class Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;
.super Landroid/os/ResultReceiver;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransferResultReceiver"
.end annotation


# instance fields
.field private final fileTransferListener:Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

.field private final threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 1
    .param p1, "threadHandlerProvider"    # Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;
    .param p2, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->acquireHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 87
    iput-object p1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;->threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    .line 88
    iput-object p2, p0, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;->fileTransferListener:Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .line 89
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;->fileTransferListener:Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    const-string/jumbo v2, "PROGRESS"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;->onProgress(I)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;->fileTransferListener:Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    invoke-interface {v1}, Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;->onComplete()V

    .line 100
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;->threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->releaseHandler()V

    goto :goto_0

    .line 103
    :pswitch_2
    const-string/jumbo v1, "ERROR_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .line 104
    .local v0, "error":Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;
    sget-object v1, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->INVALID_TOKEN:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    if-ne v1, v0, :cond_0

    .line 105
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->clearAwsSessionCredentials()V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;->fileTransferListener:Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V

    .line 108
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;->threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->releaseHandler()V

    goto :goto_0

    .line 111
    .end local v0    # "error":Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;
    :pswitch_3
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;->threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->releaseHandler()V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
