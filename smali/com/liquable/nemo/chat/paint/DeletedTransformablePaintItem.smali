.class Lcom/liquable/nemo/chat/paint/DeletedTransformablePaintItem;
.super Ljava/lang/Object;
.source "DeletedTransformablePaintItem.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintItem;


# instance fields
.field private final previous:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/paint/TransformablePaintItem;)V
    .locals 2
    .param p1, "previous"    # Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/DeletedTransformablePaintItem;->previous:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    .line 11
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/DeletedTransformablePaintItem;->previous:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->setVisible(Z)V

    .line 12
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 20
    return-void
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/DeletedTransformablePaintItem;->previous:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->setVisible(Z)V

    .line 25
    return-void
.end method
