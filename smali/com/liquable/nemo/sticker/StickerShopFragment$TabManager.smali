.class public Lcom/liquable/nemo/sticker/StickerShopFragment$TabManager;
.super Ljava/lang/Object;
.source "StickerShopFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$TabManager;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$TabManager;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$TabManager;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->reset(Ljava/util/List;)V

    .line 274
    return-void
.end method
