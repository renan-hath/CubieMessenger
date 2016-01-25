.class public Lcom/liquable/nemo/widget/TransferProgressBar;
.super Landroid/widget/ProgressBar;
.source "TransferProgressBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method private updateCompleteView()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->setVisibility(I)V

    .line 48
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->setProgress(I)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->setIndeterminate(Z)V

    .line 50
    return-void
.end method

.method private updatePendingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    const/4 v1, 0x0

    .line 53
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->setVisibility(I)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/TransferProgressBar;->setIndeterminate(Z)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/TransferProgressBar;->setProgress(I)V

    .line 56
    return-void
.end method

.method private updateTransferringView(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->setVisibility(I)V

    .line 60
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getProgress()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->setIndeterminate(Z)V

    .line 61
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->setProgress(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 21
    .local v1, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v0

    .line 22
    .local v0, "assetExists":Z
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->isSystemAck()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/widget/TransferProgressBar;->updateCompleteView()V

    .line 44
    :goto_0
    return-void

    .line 27
    :cond_0
    sget-object v2, Lcom/liquable/nemo/widget/TransferProgressBar$1;->$SwitchMap$com$liquable$nemo$message$model$AbstractMediaMessage$TransferState:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 29
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/widget/TransferProgressBar;->updatePendingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 32
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/liquable/nemo/widget/TransferProgressBar;->updateTransferringView(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    goto :goto_0

    .line 35
    :pswitch_2
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->isSender(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/widget/TransferProgressBar;->updateCompleteView()V

    goto :goto_0

    .line 37
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-direct {p0, p1}, Lcom/liquable/nemo/widget/TransferProgressBar;->updateTransferringView(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-direct {p0, p1}, Lcom/liquable/nemo/widget/TransferProgressBar;->updatePendingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
