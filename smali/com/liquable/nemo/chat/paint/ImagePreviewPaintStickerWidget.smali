.class public Lcom/liquable/nemo/chat/paint/ImagePreviewPaintStickerWidget;
.super Lcom/liquable/nemo/chat/paint/PaintStickerWidget;
.source "ImagePreviewPaintStickerWidget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f030156

    return v0
.end method
