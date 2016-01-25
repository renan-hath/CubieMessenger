.class public Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;
.super Ljava/lang/Object;
.source "PaintDecorationProperty.java"


# instance fields
.field private final paintItemIndex:I

.field private final rotation:F

.field private final scale:F

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "rotation"    # F
    .param p5, "paintItemIndex"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p5, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->paintItemIndex:I

    .line 20
    iput p3, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->scale:F

    .line 21
    iput p4, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->rotation:F

    .line 22
    iput p1, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->x:I

    .line 23
    iput p2, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->y:I

    .line 24
    return-void
.end method


# virtual methods
.method public getPaintItemIndex()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->paintItemIndex:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->rotation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->scale:F

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->y:I

    return v0
.end method
