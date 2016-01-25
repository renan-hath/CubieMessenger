.class Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;,
        Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final ON_WALLPAPER_CLICK:Ljava/lang/String; = "ON_WALLPAPER_CLICK"


# instance fields
.field private final columnCount:I

.field private final context:Landroid/content/Context;

.field private downloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation
.end field

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private selectedPosition:I

.field private final wallpaperDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/setting/wallpaper/WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p4, "screenWidth"    # I
    .param p5, "selectedWallaperCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/setting/wallpaper/WallpaperData;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "wallpaperDatas":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/setting/wallpaper/WallpaperData;>;"
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->selectedPosition:I

    .line 56
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 58
    iput-object p3, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->wallpaperDatas:Ljava/util/List;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->columnCount:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->downloadList:Ljava/util/List;

    .line 63
    invoke-static {p5}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {p5}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getByCode(Ljava/lang/String;)Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->selectedPosition:I

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iput v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->selectedPosition:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->onItemClick(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->downloadList:Ljava/util/List;

    return-object v0
.end method

.method private onItemClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "ON_WALLPAPER_CLICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    iput p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->selectedPosition:I

    .line 130
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->wallpaperDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->columnCount:I

    div-int v1, v0, v1

    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->wallpaperDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->columnCount:I

    rem-int/2addr v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->wallpaperDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->selectedPosition:I

    return v0
.end method

.method public getSelectedWallpaperData()Lcom/liquable/nemo/setting/wallpaper/WallpaperData;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->wallpaperDatas:Ljava/util/List;

    iget v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->selectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03011f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;

    .line 99
    .local v0, "row":Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;
    new-instance v1, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$1;-><init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->setOnWallpaperItemClick(Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;)V

    .line 105
    new-instance v1, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$2;-><init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->setDownloadBtnOnClickListener(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;)V

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->wallpaperDatas:Ljava/util/List;

    iget v3, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->selectedPosition:I

    iget-object v4, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v5, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->downloadList:Ljava/util/List;

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->updateContent(Ljava/util/List;IILcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    .line 123
    return-object v0

    .end local v0    # "row":Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;
    :cond_0
    move-object v0, p2

    .line 119
    check-cast v0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;

    .restart local v0    # "row":Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;
    goto :goto_0
.end method

.method public updateDownloadingList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "downloadingList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->downloadList:Ljava/util/List;

    .line 135
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->notifyDataSetChanged()V

    .line 137
    return-void
.end method
