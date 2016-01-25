.class Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectPromotionStickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field stickerThumbnail:Landroid/widget/ImageView;

.field stickerTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
