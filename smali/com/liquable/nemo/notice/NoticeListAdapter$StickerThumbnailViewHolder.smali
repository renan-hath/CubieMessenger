.class Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;
.super Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;
.source "NoticeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/notice/NoticeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerThumbnailViewHolder"
.end annotation


# instance fields
.field stickerThumbnailLayout:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/notice/NoticeListAdapter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/notice/NoticeListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/notice/NoticeListAdapter$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public initViewHolder(Landroid/view/View;)V
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x34

    .line 41
    invoke-super {p0, p1}, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->initViewHolder(Landroid/view/View;)V

    .line 42
    const v2, 0x7f0802b4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;->stickerThumbnailLayout:Landroid/widget/LinearLayout;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 44
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, "stickerThumbnailView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v2, p0, Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;->stickerThumbnailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "stickerThumbnailView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
