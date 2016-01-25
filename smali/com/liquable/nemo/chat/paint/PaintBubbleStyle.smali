.class Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;
.super Ljava/lang/Object;
.source "PaintBubbleStyle.java"


# static fields
.field public static final ALL_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cached:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/NinePatchDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    const v2, 0x7f0204c4

    invoke-direct {v1, v2}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;-><init>(I)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    const v3, 0x7f0204c5

    invoke-direct {v2, v3}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    const v3, 0x7f0204c0

    invoke-direct {v2, v3}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    const v3, 0x7f0204c1

    invoke-direct {v2, v3}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    const v3, 0x7f0204c2

    invoke-direct {v2, v3}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    const v3, 0x7f0204c3

    invoke-direct {v2, v3}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    invoke-direct {v2, v4}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;-><init>(I)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->ALL_STYLES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->resourceId:I

    .line 33
    return-void
.end method

.method private loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->cached:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->cached:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 65
    .local v1, "exist":Landroid/graphics/drawable/NinePatchDrawable;
    if-eqz v1, :cond_0

    .line 73
    .end local v1    # "exist":Landroid/graphics/drawable/NinePatchDrawable;
    :goto_0
    return-object v1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->resourceId:I

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 72
    .local v0, "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->cached:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .line 73
    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    return-void
.end method

.method public drawWrapRect(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 41
    iget v2, p0, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->resourceId:I

    if-nez v2, :cond_0

    .line 59
    .end local p3    # "dest":Landroid/graphics/Rect;
    :goto_0
    return-object p3

    .line 45
    .restart local p3    # "dest":Landroid/graphics/Rect;
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    .line 46
    .local v0, "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0, p1, p3}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->wrapRect(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 57
    .local v1, "wrap":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 58
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object p3, v1

    .line 59
    goto :goto_0
.end method

.method public wrapRect(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 77
    iget v7, p0, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->resourceId:I

    if-nez v7, :cond_0

    .line 101
    .end local p2    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object p2

    .line 82
    .restart local p2    # "rect":Landroid/graphics/Rect;
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    .line 84
    .local v0, "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v2, v7

    .line 85
    .local v2, "minWidth":F
    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v1, v7

    .line 87
    .local v1, "minHeight":F
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .local v3, "ninePatchPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 90
    new-instance v4, Landroid/graphics/Rect;

    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .local v4, "padded":Landroid/graphics/Rect;
    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v2, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 96
    .local v5, "sx":F
    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 98
    .local v6, "sy":F
    new-instance p2, Landroid/graphics/Rect;

    .end local p2    # "rect":Landroid/graphics/Rect;
    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v6, v9

    sub-float/2addr v8, v9

    .line 99
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v5, v10

    add-float/2addr v9, v10

    .line 100
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v6, v11

    add-float/2addr v10, v11

    .line 101
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-direct {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method
