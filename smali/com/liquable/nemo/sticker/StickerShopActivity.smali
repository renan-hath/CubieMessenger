.class public Lcom/liquable/nemo/sticker/StickerShopActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "StickerShopActivity.java"

# interfaces
.implements Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    const-class v0, Lcom/liquable/nemo/sticker/StickerShopFragment;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f0d04c4

    return v0
.end method

.method public goToFreeItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 2
    .param p1, "item"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/sticker/BaseStickerItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ITEM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/StickerShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method public goToPaidItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 2
    .param p1, "item"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ITEM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/StickerShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method
