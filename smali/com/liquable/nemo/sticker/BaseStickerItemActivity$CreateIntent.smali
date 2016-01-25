.class public Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;
.super Landroid/content/Intent;
.source "BaseStickerItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/BaseStickerItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stickerItemCode"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stickerItemCode"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "fromReactivation"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 29
    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-class v0, Lcom/liquable/nemo/sticker/BaseStickerItemActivity;

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 34
    :goto_0
    const-string/jumbo v0, "ITEM_CODE"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v0, "FROM_REACTIVATION"

    invoke-virtual {p0, v0, p4}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    return-void

    .line 32
    :cond_0
    const-class v0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static isFromReactivation(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 17
    const-string/jumbo v0, "FROM_REACTIVATION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
