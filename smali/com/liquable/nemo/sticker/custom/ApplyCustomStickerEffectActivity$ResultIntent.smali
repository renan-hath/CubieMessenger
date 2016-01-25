.class public Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;
.super Landroid/content/Intent;
.source "ApplyCustomStickerEffectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultIntent"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/List;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)V
    .locals 2
    .param p1, "customStickerFile"    # Ljava/io/File;
    .param p3, "selectedCustomStickerEffect"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "animatedCustomStickerFile":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 65
    const-string/jumbo v0, "customStickerFile"

    invoke-virtual {p0, v0, p1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    const-string/jumbo v0, "animatedCustomStickerFile"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v0, "selectedCustomStickerEffect"

    invoke-virtual {p0, v0, p3}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method public static getAnimatedCustomStickerFile(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const-string/jumbo v0, "animatedCustomStickerFile"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCustomStickerFile(Landroid/os/Bundle;)Ljava/io/File;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const-string/jumbo v0, "customStickerFile"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static getSelectedCustomStickerEffect(Landroid/os/Bundle;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const-string/jumbo v0, "selectedCustomStickerEffect"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    return-object v0
.end method
