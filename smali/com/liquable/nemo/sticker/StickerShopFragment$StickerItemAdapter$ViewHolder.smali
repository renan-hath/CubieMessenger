.class Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StickerShopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public isNewStickerImageView:Landroid/widget/ImageView;

.field public stickerItemPrice:Landroid/widget/TextView;

.field public stickerItemStatus:Landroid/widget/TextView;

.field public stickerThumbnailImageView:Landroid/widget/ImageView;

.field public stickerTitleTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->this$1:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;Lcom/liquable/nemo/sticker/StickerShopFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    .param p2, "x1"    # Lcom/liquable/nemo/sticker/StickerShopFragment$1;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;)V

    return-void
.end method
