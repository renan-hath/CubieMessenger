.class public Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;
.super Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;
.source "VideoHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter",
        "<",
        "Lcom/liquable/nemo/message/model/VideoMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final THUMBNAIL_SIDE_DP:I = 0x48


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "activity"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p2, "columnCount"    # I
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic canBeDisplayed(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)Z
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/liquable/nemo/message/model/VideoMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->canBeDisplayed(Lcom/liquable/nemo/message/model/VideoMessage;)Z

    move-result v0

    return v0
.end method

.method protected canBeDisplayed(Lcom/liquable/nemo/message/model/VideoMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/VideoMessage;

    .prologue
    .line 30
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->isSender(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->isVideoComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 34
    :goto_0
    return v1

    .line 33
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 34
    .local v0, "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method protected getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "focusable"    # Z

    .prologue
    const/16 v9, 0x48

    .line 48
    if-nez p2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030118

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 50
    const v2, 0x7f0802af

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 52
    .local v1, "rowLayout":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;

    iget v2, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->columnCount:I

    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030163

    new-instance v5, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter$1;-><init>(Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;)V

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;-><init>(Landroid/widget/LinearLayout;ILandroid/view/LayoutInflater;ILandroid/view/View$OnClickListener;)V

    .line 66
    .local v0, "viewHolder":Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    .end local v1    # "rowLayout":Landroid/widget/LinearLayout;
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v2, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->columnCount:I

    if-ge v6, v2, :cond_4

    .line 72
    invoke-virtual {p0, p1, v6}, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->getMediaMessage(II)Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/message/model/VideoMessage;

    .line 74
    .local v7, "message":Lcom/liquable/nemo/message/model/VideoMessage;
    if-nez v7, :cond_1

    .line 75
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v3, Lcom/liquable/nemo/message/view/TransparentDrawable;

    iget-object v4, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .line 77
    invoke-static {v4}, Lcom/liquable/nemo/util/NemoUIs;->getDensity(Landroid/content/Context;)F

    move-result v4

    invoke-direct {v3, v4, v9, v9}, Lcom/liquable/nemo/message/view/TransparentDrawable;-><init>(FII)V

    .line 75
    invoke-virtual {v0, v6, v2, v3}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setEmpty(ILcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 71
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "viewHolder":Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;
    .end local v6    # "i":I
    .end local v7    # "message":Lcom/liquable/nemo/message/model/VideoMessage;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;

    .restart local v0    # "viewHolder":Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;
    goto :goto_0

    .line 81
    .restart local v6    # "i":I
    .restart local v7    # "message":Lcom/liquable/nemo/message/model/VideoMessage;
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getDownloadingList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v7}, Lcom/liquable/nemo/message/model/VideoMessage;->getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {v0, v6}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setDownloading(I)V

    .line 90
    :goto_3
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v3, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;

    iget-object v4, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    const/4 v5, 0x1

    .line 93
    invoke-virtual {v7, v5}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    const v8, 0x7f0203aa

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;-><init>(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;II)V

    .line 90
    invoke-virtual {v0, v6, v2, v3, v7}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setThumbnail(ILcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;Ljava/lang/Object;)V

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v7}, Lcom/liquable/nemo/message/model/VideoMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 84
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-virtual {v0, v6}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setDownloadded(I)V

    goto :goto_3

    .line 87
    :cond_3
    invoke-virtual {v0, v6}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setCanDownloadd(I)V

    goto :goto_3

    .line 99
    .end local v7    # "message":Lcom/liquable/nemo/message/model/VideoMessage;
    :cond_4
    return-object p2
.end method

.method public getMessageType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/liquable/nemo/message/model/VideoMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-class v0, Lcom/liquable/nemo/message/model/VideoMessage;

    return-object v0
.end method

.method protected onMediaClicked(Lcom/liquable/nemo/message/model/VideoMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/VideoMessage;

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 104
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-static {v2, p1}, Lcom/liquable/nemo/chat/VideoViewerActivity;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/VideoMessage;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
