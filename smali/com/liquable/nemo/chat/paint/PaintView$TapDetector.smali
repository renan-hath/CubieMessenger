.class Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;
.super Ljava/lang/Object;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapDetector"
.end annotation


# instance fields
.field private final minTapWidth:I

.field private final startActionDown:J

.field private final startX:I

.field private final startY:I

.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintView;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/paint/PaintView;II)V
    .locals 3
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .prologue
    const/16 v2, 0x2c

    .line 336
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput p2, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->startX:I

    .line 338
    iput p3, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->startY:I

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->startActionDown:J

    .line 344
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->minTapWidth:I

    .line 345
    return-void
.end method


# virtual methods
.method public isSingleTap(II)Z
    .locals 9
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 348
    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->startX:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->startX:I

    sub-int v6, p1, v6

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->startY:I

    sub-int v6, p2, v6

    iget v7, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->startY:I

    sub-int v7, p2, v7

    mul-int/2addr v6, v7

    add-int v0, v5, v6

    .line 349
    .local v0, "lenS":I
    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->minTapWidth:I

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->minTapWidth:I

    mul-int/2addr v5, v6

    if-gt v0, v5, :cond_0

    move v2, v3

    .line 354
    .local v2, "withinSmallRect":Z
    :goto_0
    const/16 v5, 0xb4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 364
    .local v1, "minTapTimeout":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->startActionDown:J

    sub-long/2addr v5, v7

    int-to-long v7, v1

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v3

    .end local v1    # "minTapTimeout":I
    .end local v2    # "withinSmallRect":Z
    :cond_0
    move v2, v4

    .line 349
    goto :goto_0

    .restart local v1    # "minTapTimeout":I
    .restart local v2    # "withinSmallRect":Z
    :cond_1
    move v3, v4

    .line 364
    goto :goto_1
.end method
