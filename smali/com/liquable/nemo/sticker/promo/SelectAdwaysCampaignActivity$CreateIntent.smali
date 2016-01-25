.class public Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CreateIntent;
.super Landroid/content/Intent;
.source "SelectAdwaysCampaignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stickerItemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 54
    const-class v0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CreateIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string/jumbo v0, "stickerItemDto"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public static getAdwaysCampaignRecord(Landroid/content/Intent;)Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string/jumbo v0, "stickerItemDto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    return-object v0
.end method
