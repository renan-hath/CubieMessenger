.class Lcom/liquable/nemo/chat/paint/PaintBrush;
.super Ljava/lang/Object;
.source "PaintBrush.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintItem;


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintBrush;->path:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintBrush;->paint:Landroid/graphics/Paint;

    .line 14
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintBrush;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintBrush;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    return-void
.end method

.method public undo()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
