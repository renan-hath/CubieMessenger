.class public interface abstract Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopCallback;
.super Ljava/lang/Object;
.source "StickerShopFragment.java"

# interfaces
.implements Lcom/liquable/nemo/BaseFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StickerShopCallback"
.end annotation


# virtual methods
.method public abstract goToFreeItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
.end method

.method public abstract goToPaidItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
.end method
