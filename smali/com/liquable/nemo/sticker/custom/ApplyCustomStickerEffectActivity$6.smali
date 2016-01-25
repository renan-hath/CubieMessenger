.class Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$6;
.super Ljava/lang/Object;
.source "ApplyCustomStickerEffectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 503
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$6;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v3, 0x100

    const/4 v1, 0x1

    .line 507
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$6;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 513
    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$6;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .line 515
    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->tempCustomStickerFile:Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$900(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Ljava/io/File;

    move-result-object v7

    move v2, v1

    move v4, v3

    move v6, v1

    .line 507
    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/CropImageActivity;->createStartActivityIntent(Landroid/app/Activity;IIIILjava/lang/String;ZLjava/io/File;)Landroid/content/Intent;

    move-result-object v8

    .line 516
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$6;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-virtual {v0, v8, v1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 517
    return-void
.end method
