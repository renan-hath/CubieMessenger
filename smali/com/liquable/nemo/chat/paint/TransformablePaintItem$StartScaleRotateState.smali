.class public Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;
.super Ljava/lang/Object;
.source "TransformablePaintItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StartScaleRotateState"
.end annotation


# instance fields
.field private final rotation:F

.field private final scale:F

.field private final startX:I

.field private final startY:I


# direct methods
.method public constructor <init>(IIFF)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "rotation"    # F
    .param p4, "scale"    # F

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->startX:I

    .line 30
    iput p2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->startY:I

    .line 31
    iput p3, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->rotation:F

    .line 32
    iput p4, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->scale:F

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    .prologue
    .line 18
    iget v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->startX:I

    return v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    .prologue
    .line 18
    iget v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->startY:I

    return v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)F
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    .prologue
    .line 18
    iget v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->scale:F

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)F
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    .prologue
    .line 18
    iget v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->rotation:F

    return v0
.end method
