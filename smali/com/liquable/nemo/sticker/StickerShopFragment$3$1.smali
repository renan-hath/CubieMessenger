.class Lcom/liquable/nemo/sticker/StickerShopFragment$3$1;
.super Ljava/lang/Object;
.source "StickerShopFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment$3;->showFailPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/sticker/StickerShopFragment$3;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/sticker/StickerShopFragment$3;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3$1;->this$1:Lcom/liquable/nemo/sticker/StickerShopFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 552
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3$1;->this$1:Lcom/liquable/nemo/sticker/StickerShopFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment;->close()V
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1400(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    .line 553
    return-void
.end method
