.class Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$5;
.super Ljava/lang/Object;
.source "ApplyCustomStickerEffectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$5;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$5;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->setResult(I)V

    .line 499
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$5;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->finish()V

    .line 500
    return-void
.end method
