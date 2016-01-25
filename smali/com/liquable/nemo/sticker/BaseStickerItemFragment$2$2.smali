.class Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2$2;
.super Ljava/lang/Object;
.source "BaseStickerItemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2$2;->this$1:Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2$2;->this$1:Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2$2;->this$1:Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->val$packageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItem(Ljava/lang/String;)V

    .line 215
    return-void
.end method
