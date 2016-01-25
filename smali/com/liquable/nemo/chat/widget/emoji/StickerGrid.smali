.class public Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;
.super Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;
.source "StickerGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;
    }
.end annotation


# instance fields
.field private categoryCode:Ljava/lang/String;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private listener:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;

.field private stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

.field private final stickerDownloadProgressBar:Landroid/widget/ProgressBar;

.field private final stickerGrid:Landroid/widget/GridView;

.field private final stickerShopBtn:Landroid/widget/RelativeLayout;

.field private final stickerShopTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030171

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerGrid:Landroid/widget/GridView;

    .line 41
    const v2, 0x7f080349

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerDownloadProgressBar:Landroid/widget/ProgressBar;

    .line 42
    const v2, 0x7f08034b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerShopTextView:Landroid/widget/TextView;

    .line 43
    const v2, 0x7f08034a

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerShopBtn:Landroid/widget/RelativeLayout;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;)Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->listener:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "listener"    # Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->listener:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;

    .line 48
    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 49
    return-void
.end method

.method public isStickerMode()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public setOnShopBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerShopBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public updateGrid(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->categoryCode:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerDownloadProgressBar:Landroid/widget/ProgressBar;

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v3, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->categoryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->isAnyStickerThumbnailDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    new-instance v0, Lcom/liquable/nemo/chat/StickerAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->categoryCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v2, v3, v4}, Lcom/liquable/nemo/chat/StickerAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$1;-><init>(Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerShopTextView:Landroid/widget/TextView;

    const v3, 0x7f020461

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 80
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isStickerShopUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02044e

    .line 78
    :goto_1
    invoke-virtual {v2, v3, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 82
    return-void

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0

    :cond_1
    move v0, v1

    .line 80
    goto :goto_1
.end method

.method public updateStickerPackageComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->categoryCode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->categoryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSendableStickerPackageCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerDownloadProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/StickerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateStickerThumbnailComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->categoryCode:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v3, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->categoryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSendableStickers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerDto;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 104
    .local v0, "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerDownloadProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/StickerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
