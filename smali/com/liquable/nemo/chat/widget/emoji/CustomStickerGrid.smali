.class public Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;
.super Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;
.source "CustomStickerGrid.java"


# instance fields
.field private customStickerAdapter:Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

.field private final gridView:Landroid/widget/GridView;

.field private final manageCustomStickerBtn:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030137

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 34
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->gridView:Landroid/widget/GridView;

    .line 35
    const v2, 0x7f080315

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->manageCustomStickerBtn:Landroid/widget/RelativeLayout;

    .line 36
    return-void
.end method


# virtual methods
.method public init(Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 3
    .param p1, "onCustomStickerSendListener"    # Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 40
    new-instance v0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->customStickerAdapter:Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->customStickerAdapter:Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid$1;-><init>(Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    return-void
.end method

.method public setOnManageButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->manageCustomStickerBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public updateGrid(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->listAll()Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/custom/model/CustomSticker;>;"
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->customStickerAdapter:Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->reset(Ljava/util/List;)V

    .line 66
    return-void
.end method
