.class Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;
.super Ljava/lang/Object;
.source "MediaBoardViewHolder.java"


# instance fields
.field cells:[Landroid/view/View;

.field downloadIcon:[Landroid/view/View;

.field pics:[Landroid/widget/ImageView;

.field progressBar:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;ILandroid/view/LayoutInflater;ILandroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "rowLayout"    # Landroid/widget/LinearLayout;
    .param p2, "columnCount"    # I
    .param p3, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p4, "viewSharedPicThumbnail"    # I
    .param p5, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v1, p2, [Landroid/view/View;

    iput-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->cells:[Landroid/view/View;

    .line 28
    new-array v1, p2, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->pics:[Landroid/widget/ImageView;

    .line 29
    new-array v1, p2, [Landroid/view/View;

    iput-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->downloadIcon:[Landroid/view/View;

    .line 30
    new-array v1, p2, [Landroid/view/View;

    iput-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->progressBar:[Landroid/view/View;

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 32
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->cells:[Landroid/view/View;

    const v2, 0x7f030163

    const/4 v3, 0x0

    invoke-virtual {p3, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 34
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->cells:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->pics:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->cells:[Landroid/view/View;

    aget-object v1, v1, v0

    const v3, 0x7f080342

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 36
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->downloadIcon:[Landroid/view/View;

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->cells:[Landroid/view/View;

    aget-object v2, v2, v0

    const v3, 0x7f080343

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 37
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->progressBar:[Landroid/view/View;

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->cells:[Landroid/view/View;

    aget-object v2, v2, v0

    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 38
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->cells:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public setCanDownloadd(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->progressBar:[Landroid/view/View;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->downloadIcon:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public setDownloadded(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/16 v1, 0x8

    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->progressBar:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->downloadIcon:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-void
.end method

.method public setDownloading(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->progressBar:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->downloadIcon:[Landroid/view/View;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void
.end method

.method setEmpty(ILcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "image"    # Lcom/liquable/nemo/util/LoadableImage;

    .prologue
    const/16 v2, 0x8

    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->pics:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->downloadIcon:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->progressBar:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->pics:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0, p3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->cells:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setThumbnail(ILcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;Ljava/lang/Object;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "image"    # Lcom/liquable/nemo/util/LoadableImage;
    .param p4, "tag"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->pics:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->pics:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0, p3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaBoardViewHolder;->cells:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
