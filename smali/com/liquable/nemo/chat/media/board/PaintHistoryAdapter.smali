.class public Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;
.super Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;
.source "PaintHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter",
        "<",
        "Lcom/liquable/nemo/message/model/PaintMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_SIZE_IN_DP:I = 0x4a

.field private static final MARGIN_IN_DP:I = 0x2


# instance fields
.field private final columnWidthPx:I


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V
    .locals 2
    .param p1, "c"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p2, "columnCount"    # I
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V

    .line 37
    const/high16 v0, 0x42940000    # 74.0f

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->columnWidthPx:I

    .line 38
    return-void
.end method

.method public static createAdapter(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;
    .locals 3
    .param p0, "c"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p1, "screenWidthInPx"    # I
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 26
    .local v1, "scale":F
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x4e

    .line 28
    .local v0, "columnCount":I
    new-instance v2, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;

    invoke-direct {v2, p0, v0, p2}, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V

    return-object v2
.end method


# virtual methods
.method protected bridge synthetic canBeDisplayed(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->canBeDisplayed(Lcom/liquable/nemo/message/model/PaintMessage;)Z

    move-result v0

    return v0
.end method

.method protected canBeDisplayed(Lcom/liquable/nemo/message/model/PaintMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/PaintMessage;

    .prologue
    .line 47
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/liquable/nemo/message/model/PaintMessage;->isSender(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->isUploadComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v2, 0x0

    .line 56
    :goto_0
    return v2

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getThumbCacheLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 52
    .local v1, "thumbLocalCachedKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const/4 v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 56
    .local v0, "assetKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    goto :goto_0
.end method

.method protected getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "focusable"    # Z

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030118

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    const v2, 0x7f0802af

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 69
    .local v1, "rowLayout":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;

    iget v2, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->columnCount:I

    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030162

    new-instance v5, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter$1;-><init>(Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;)V

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;-><init>(Landroid/widget/LinearLayout;ILandroid/view/LayoutInflater;ILandroid/view/View$OnClickListener;)V

    .line 84
    .local v0, "viewHolder":Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    .end local v1    # "rowLayout":Landroid/widget/LinearLayout;
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v2, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->columnCount:I

    if-ge v6, v2, :cond_4

    .line 90
    invoke-virtual {p0, p1, v6}, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->getMediaMessage(II)Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 92
    .local v7, "message":Lcom/liquable/nemo/message/model/PaintMessage;
    if-nez v7, :cond_1

    .line 93
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v3, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;

    iget v4, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->columnWidthPx:I

    invoke-direct {v3, v4}, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;-><init>(I)V

    invoke-virtual {v0, v6, v2, v3}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setEmpty(ILcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 89
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "viewHolder":Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;
    .end local v6    # "i":I
    .end local v7    # "message":Lcom/liquable/nemo/message/model/PaintMessage;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;

    .restart local v0    # "viewHolder":Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;
    goto :goto_0

    .line 95
    .restart local v6    # "i":I
    .restart local v7    # "message":Lcom/liquable/nemo/message/model/PaintMessage;
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getDownloadingList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v7}, Lcom/liquable/nemo/message/model/PaintMessage;->getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v0, v6}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setDownloading(I)V

    .line 104
    :goto_3
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v3, Lcom/liquable/nemo/share/PaintMediaShareCache;

    iget v4, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->columnWidthPx:I

    const v5, 0x7f0203aa

    invoke-direct {v3, v7, v4, v5}, Lcom/liquable/nemo/share/PaintMediaShareCache;-><init>(Lcom/liquable/nemo/message/model/PaintMessage;II)V

    invoke-virtual {v0, v6, v2, v3, v7}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setThumbnail(ILcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;Ljava/lang/Object;)V

    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {v7}, Lcom/liquable/nemo/message/model/PaintMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 98
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 97
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v0, v6}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setDownloadded(I)V

    goto :goto_3

    .line 101
    :cond_3
    invoke-virtual {v0, v6}, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->setCanDownloadd(I)V

    goto :goto_3

    .line 110
    .end local v7    # "message":Lcom/liquable/nemo/message/model/PaintMessage;
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
            "Lcom/liquable/nemo/message/model/PaintMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const-class v0, Lcom/liquable/nemo/message/model/PaintMessage;

    return-object v0
.end method

.method protected onMediaClicked(Lcom/liquable/nemo/message/model/PaintMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/PaintMessage;

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 115
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-static {v2, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
