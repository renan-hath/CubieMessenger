.class Lcom/liquable/nemo/sticker/BaseStickerItemFragment$3;
.super Ljava/lang/Object;
.source "BaseStickerItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$3;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$3;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 313
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "download"

    const-string/jumbo v3, "cubie"

    invoke-interface {v0, v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnStickerItemButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$3;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->downloadStickerPackage()V

    .line 315
    return-void
.end method
