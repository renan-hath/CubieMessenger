.class public Lcom/liquable/nemo/util/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final ROTATION_THRESHOLD:I = 0xf


# instance fields
.field private deltaDegree:F

.field private endX:F

.field private endY:F

.field private focalX:F

.field private focalY:F

.field private final listener:Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;

.field private pointId1:I

.field private pointId2:I

.field private rotationBegan:Z

.field private startX:F

.field private startY:F

.field private totalRotateDegree:F


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->listener:Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;

    .line 30
    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId1:I

    .line 31
    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId2:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->totalRotateDegree:F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->rotationBegan:Z

    .line 35
    return-void
.end method

.method private angleBtwLines(FFFFFFFF)F
    .locals 6
    .param p1, "line1_x1"    # F
    .param p2, "line1_y1"    # F
    .param p3, "line1_x2"    # F
    .param p4, "line1_y2"    # F
    .param p5, "line2_x1"    # F
    .param p6, "line2_y1"    # F
    .param p7, "line2_x2"    # F
    .param p8, "line2_y2"    # F

    .prologue
    .line 45
    sub-float v2, p4, p2

    float-to-double v2, v2

    sub-float v4, p3, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 46
    .local v0, "radian1":F
    sub-float v2, p8, p6

    float-to-double v2, v2

    sub-float v4, p7, p5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 48
    .local v1, "radian2":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/liquable/nemo/util/RotationGestureDetector;->findDegreeDelta(FF)F

    move-result v2

    return v2
.end method

.method private clipDegreeTo0_360(F)F
    .locals 4
    .param p1, "rawDegree"    # F

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 58
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 59
    float-to-double v0, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    goto :goto_0

    .line 61
    :cond_0
    :goto_1
    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 62
    float-to-double v0, p1

    sub-double/2addr v0, v2

    double-to-float p1, v0

    goto :goto_1

    .line 64
    :cond_1
    return p1
.end method

.method private findDegreeDelta(FF)F
    .locals 5
    .param p1, "degree1"    # F
    .param p2, "degree2"    # F

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 72
    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RotationGestureDetector;->clipDegreeTo0_360(F)F

    move-result v1

    .line 73
    .local v1, "from":F
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/RotationGestureDetector;->clipDegreeTo0_360(F)F

    move-result v2

    .line 75
    .local v2, "to":F
    sub-float v0, v2, v1

    .line 77
    .local v0, "dist":F
    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 78
    add-float/2addr v0, v4

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 80
    sub-float/2addr v0, v4

    goto :goto_0
.end method

.method private getMidpoint(FF)F
    .locals 2
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 103
    add-float v0, p1, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getDeltaDegree()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->deltaDegree:F

    return v0
.end method

.method public getFocalX()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->focalX:F

    return v0
.end method

.method public getFocalY()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->focalY:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v11, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    :pswitch_0
    return v11

    .line 110
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->startX:F

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->startY:F

    .line 112
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId1:I

    .line 113
    iput v2, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->totalRotateDegree:F

    .line 114
    iput-boolean v11, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->rotationBegan:Z

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId2:I

    .line 126
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId2:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->endX:F

    .line 127
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId2:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->endY:F

    .line 128
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->endX:F

    iget v1, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->startX:F

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/util/RotationGestureDetector;->getMidpoint(FF)F

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->focalX:F

    .line 129
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->endY:F

    iget v1, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->startY:F

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/util/RotationGestureDetector;->getMidpoint(FF)F

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->focalY:F

    goto :goto_0

    .line 134
    :pswitch_3
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId1:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId2:I

    if-eq v0, v1, :cond_0

    .line 135
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId1:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 136
    .local v9, "pointerIndex1":I
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId2:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 141
    .local v10, "pointerIndex2":I
    if-eq v9, v1, :cond_0

    if-eq v10, v1, :cond_0

    .line 146
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 147
    .local v5, "nextStartX":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 148
    .local v6, "nextStartY":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 149
    .local v7, "nextEndX":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 151
    .local v8, "nextEndY":F
    iget v1, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->startX:F

    iget v2, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->startY:F

    iget v3, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->endX:F

    iget v4, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->endY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/util/RotationGestureDetector;->angleBtwLines(FFFFFFFF)F

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->deltaDegree:F

    .line 160
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->totalRotateDegree:F

    iget v1, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->deltaDegree:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->totalRotateDegree:F

    .line 162
    iget v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->totalRotateDegree:F

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->listener:Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, p0}, Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;->onRotationBegin(Lcom/liquable/nemo/util/RotationGestureDetector;)Z

    .line 164
    iput-boolean v12, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->rotationBegan:Z

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->rotationBegan:Z

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->listener:Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, p0}, Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;->onRotation(Lcom/liquable/nemo/util/RotationGestureDetector;)Z

    .line 170
    :cond_2
    iput v7, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->endX:F

    .line 171
    iput v8, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->endY:F

    .line 172
    iput v5, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->startX:F

    .line 173
    iput v6, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->startY:F

    goto/16 :goto_0

    .line 178
    .end local v5    # "nextStartX":F
    .end local v6    # "nextStartY":F
    .end local v7    # "nextEndX":F
    .end local v8    # "nextEndY":F
    .end local v9    # "pointerIndex1":I
    .end local v10    # "pointerIndex2":I
    :pswitch_4
    iput v1, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId1:I

    .line 179
    iput v2, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->totalRotateDegree:F

    .line 181
    iget-boolean v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->rotationBegan:Z

    if-eqz v0, :cond_0

    .line 182
    iput-boolean v11, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->rotationBegan:Z

    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->listener:Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, p0}, Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;->onRotationEnd(Lcom/liquable/nemo/util/RotationGestureDetector;)V

    goto/16 :goto_0

    .line 187
    :pswitch_5
    iput v1, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->pointId2:I

    .line 188
    iput v2, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->totalRotateDegree:F

    .line 189
    iget-boolean v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->rotationBegan:Z

    if-eqz v0, :cond_0

    .line 190
    iput-boolean v11, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->rotationBegan:Z

    .line 191
    iget-object v0, p0, Lcom/liquable/nemo/util/RotationGestureDetector;->listener:Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, p0}, Lcom/liquable/nemo/util/RotationGestureDetector$OnRotationGestureListener;->onRotationEnd(Lcom/liquable/nemo/util/RotationGestureDetector;)V

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
