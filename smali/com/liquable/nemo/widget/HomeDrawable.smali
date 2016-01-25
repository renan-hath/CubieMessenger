.class public Lcom/liquable/nemo/widget/HomeDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "HomeDrawable.java"


# static fields
.field private static final MARGIN_LEFT_DP:I = 0x19

.field private static final MIN_WIDTH_DP:I = 0x12


# instance fields
.field private final context:Landroid/content/Context;

.field private final count:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/widget/HomeDrawable;-><init>(Landroid/content/Context;J)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "count"    # J

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/widget/HomeDrawable;->context:Landroid/content/Context;

    .line 31
    iput-wide p3, p0, Lcom/liquable/nemo/widget/HomeDrawable;->count:J

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "count"    # J

    .prologue
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f02007c

    .line 35
    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/widget/HomeDrawable;-><init>(Landroid/content/Context;IJ)V

    .line 39
    return-void

    .line 36
    :cond_0
    const v0, 0x7f02007d

    goto :goto_0
.end method

.method private getCountText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/liquable/nemo/widget/HomeDrawable;->count:J

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "10+"

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/liquable/nemo/widget/HomeDrawable;->count:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v10, 0x19

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    iget-wide v3, p0, Lcom/liquable/nemo/widget/HomeDrawable;->count:J

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 50
    .local v2, "textPaint":Landroid/text/TextPaint;
    const/high16 v1, 0x41300000    # 11.0f

    iget-object v3, p0, Lcom/liquable/nemo/widget/HomeDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 51
    iget-object v1, p0, Lcom/liquable/nemo/widget/HomeDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0061

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 52
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 54
    new-instance v0, Landroid/text/StaticLayout;

    invoke-direct {p0}, Lcom/liquable/nemo/widget/HomeDrawable;->getCountText()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-direct {p0}, Lcom/liquable/nemo/widget/HomeDrawable;->getCountText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x40200000    # 2.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/liquable/nemo/widget/HomeDrawable;->context:Landroid/content/Context;

    const/16 v5, 0x12

    .line 57
    invoke-static {v4, v5}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 64
    .local v0, "textLayout":Landroid/text/StaticLayout;
    iget-object v1, p0, Lcom/liquable/nemo/widget/HomeDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020243

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    .line 67
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    .line 64
    invoke-static {v1, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/liquable/nemo/widget/HomeDrawable;->context:Landroid/content/Context;

    .line 69
    invoke-static {v3, v10}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 64
    invoke-virtual {p1, v1, v3, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v1, p0, Lcom/liquable/nemo/widget/HomeDrawable;->context:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method
