.class Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;
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
    .line 474
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x100

    .line 477
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$500(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .line 479
    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->tempCustomStickerFile:Ljava/io/File;
    invoke-static {v3}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$900(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Ljava/io/File;

    move-result-object v3

    .line 477
    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->createAnimatedFiles(Landroid/content/Context;Ljava/io/File;II)Ljava/util/List;

    move-result-object v0

    .line 482
    .local v0, "animatedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$500(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->isAllAnimationFileCreated(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    const v2, 0x7f0d0167

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 491
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    const/4 v2, -0x1

    new-instance v3, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;

    iget-object v4, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .line 489
    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->tempCustomStickerFile:Ljava/io/File;
    invoke-static {v4}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$900(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v5}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$500(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;-><init>(Ljava/io/File;Ljava/util/List;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)V

    .line 488
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->setResult(ILandroid/content/Intent;)V

    .line 490
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->finish()V

    goto :goto_0
.end method
