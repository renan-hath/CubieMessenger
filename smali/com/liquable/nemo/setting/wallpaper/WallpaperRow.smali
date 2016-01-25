.class public Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;
.super Landroid/widget/LinearLayout;
.source "WallpaperRow.java"


# instance fields
.field private final columnCount:I

.field private final downloadBtns:[Landroid/widget/FrameLayout;

.field private final frames:[Landroid/widget/RelativeLayout;

.field private final pics:[Landroid/widget/ImageView;

.field private final progressBars:[Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 38
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    new-array v2, v2, [Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    .line 39
    iget v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->pics:[Landroid/widget/ImageView;

    .line 40
    iget v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    new-array v2, v2, [Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    .line 41
    iget v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    new-array v2, v2, [Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->progressBars:[Landroid/widget/ProgressBar;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    if-ge v0, v2, :cond_0

    .line 44
    iget-object v3, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    const v2, 0x7f030177

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    aput-object v2, v3, v0

    .line 47
    iget-object v3, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->pics:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    const v4, 0x7f08025d

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 48
    iget-object v3, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    const v4, 0x7f080275

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    aput-object v2, v3, v0

    .line 49
    iget-object v3, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->progressBars:[Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    const v4, 0x7f0800b8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    aput-object v2, v3, v0

    .line 51
    iget-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->addView(Landroid/view/View;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public setDownloadBtnOnClickListener(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;)V
    .locals 3
    .param p1, "wallpaperDownloadBtnClickListener"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v0

    new-instance v2, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$1;-><init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public setOnWallpaperItemClick(Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;)V
    .locals 3
    .param p1, "onItemClickListener"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    new-instance v2, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$2;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$2;-><init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public updateContent(Ljava/util/List;IILcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V
    .locals 7
    .param p2, "position"    # I
    .param p3, "selectedPosition"    # I
    .param p4, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/setting/wallpaper/WallpaperData;",
            ">;II",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/setting/wallpaper/WallpaperData;>;"
    .local p5, "downloadingList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    if-ge v1, v5, :cond_8

    .line 90
    iget v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->columnCount:I

    mul-int/2addr v5, p2

    add-int v2, v5, v1

    .line 91
    .local v2, "index":I
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->progressBars:[Landroid/widget/ProgressBar;

    aget-object v5, v5, v1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    if-nez v2, :cond_2

    .line 93
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->pics:[Landroid/widget/ImageView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const v6, 0x7f02010e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    if-nez p3, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 96
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->pics:[Landroid/widget/ImageView;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    if-nez p3, :cond_1

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 97
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 89
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 96
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 102
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 103
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v5, v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 106
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 107
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->pics:[Landroid/widget/ImageView;

    aget-object v6, v5, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    invoke-virtual {v5}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getResourceId()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    .line 109
    .local v4, "wallpaperData":Lcom/liquable/nemo/setting/wallpaper/WallpaperData;
    invoke-virtual {v4}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "wallpaperCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v6, v5, v1

    if-ne v2, p3, :cond_4

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 113
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->pics:[Landroid/widget/ImageView;

    aget-object v6, v5, v1

    if-ne v2, p3, :cond_5

    const/4 v5, 0x1

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 115
    invoke-virtual {v4}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 116
    .local v0, "file":Ljava/io/File;
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 118
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 119
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->frames:[Landroid/widget/RelativeLayout;

    aget-object v5, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 112
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 113
    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    .line 122
    .restart local v0    # "file":Ljava/io/File;
    :cond_6
    invoke-virtual {v4}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 123
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->progressBars:[Landroid/widget/ProgressBar;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 124
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 126
    :cond_7
    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->downloadBtns:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 131
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "index":I
    .end local v3    # "wallpaperCode":Ljava/lang/String;
    .end local v4    # "wallpaperData":Lcom/liquable/nemo/setting/wallpaper/WallpaperData;
    :cond_8
    return-void
.end method
