.class Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;
.super Ljava/lang/Object;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlingDecoration"
.end annotation


# instance fields
.field private final decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

.field private final moving:Z


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/paint/TransformablePaintItem;Z)V
    .locals 0
    .param p1, "paintItem"    # Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .param p2, "moving"    # Z

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    .line 311
    iput-boolean p2, p0, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->moving:Z

    .line 312
    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->moving:Z

    return v0
.end method
