.class public Lcom/liquable/nemo/widget/GifImageView;
.super Landroid/view/View;
.source "GifImageView.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private movie:Landroid/graphics/Movie;

.field private movieStart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/widget/GifImageView;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 27
    iget-object v4, p0, Lcom/liquable/nemo/widget/GifImageView;->movie:Landroid/graphics/Movie;

    if-nez v4, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 32
    .local v1, "now":J
    iget-wide v4, p0, Lcom/liquable/nemo/widget/GifImageView;->movieStart:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 33
    iput-wide v1, p0, Lcom/liquable/nemo/widget/GifImageView;->movieStart:J

    .line 35
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/widget/GifImageView;->movie:Landroid/graphics/Movie;

    if-eqz v4, :cond_0

    .line 36
    iget-object v4, p0, Lcom/liquable/nemo/widget/GifImageView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v0

    .line 37
    .local v0, "dur":I
    if-nez v0, :cond_3

    .line 38
    const/16 v0, 0x3e8

    .line 40
    :cond_3
    iget-wide v4, p0, Lcom/liquable/nemo/widget/GifImageView;->movieStart:J

    sub-long v4, v1, v4

    int-to-long v6, v0

    rem-long/2addr v4, v6

    long-to-int v3, v4

    .line 41
    .local v3, "relTime":I
    iget-object v4, p0, Lcom/liquable/nemo/widget/GifImageView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v4, v3}, Landroid/graphics/Movie;->setTime(I)Z

    .line 42
    iget-object v4, p0, Lcom/liquable/nemo/widget/GifImageView;->movie:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/GifImageView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/liquable/nemo/widget/GifImageView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v6}, Landroid/graphics/Movie;->width()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/GifImageView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/liquable/nemo/widget/GifImageView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->height()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, p1, v5, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 43
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/GifImageView;->invalidate()V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/liquable/nemo/widget/GifImageView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 49
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/widget/GifImageView;->movie:Landroid/graphics/Movie;

    .line 50
    return-void
.end method
