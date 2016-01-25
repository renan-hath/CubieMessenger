.class Lcom/liquable/nemo/widget/TouchImageView$1;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/widget/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/TouchImageView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/TouchImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/TouchImageView;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 128
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    # getter for: Lcom/liquable/nemo/widget/TouchImageView;->mGestureListener:Landroid/view/GestureDetector;
    invoke-static {v9}, Lcom/liquable/nemo/widget/TouchImageView;->access$400(Lcom/liquable/nemo/widget/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->getValues([F)V

    .line 131
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    const/4 v10, 0x2

    aget v5, v9, v10

    .line 132
    .local v5, "x":F
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    const/4 v10, 0x5

    aget v7, v9, v10

    .line 133
    .local v7, "y":F
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {v0, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 135
    .local v0, "curr":Landroid/graphics/PointF;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Lcom/liquable/nemo/widget/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 193
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-virtual {v9}, Lcom/liquable/nemo/widget/TouchImageView;->invalidate()V

    .line 194
    const/4 v9, 0x1

    return v9

    .line 137
    :pswitch_1
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->start:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {v9, v10}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 139
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    const/4 v10, 0x1

    iput v10, v9, Lcom/liquable/nemo/widget/TouchImageView;->mode:I

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->mode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 143
    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->last:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v1, v9, v10

    .line 144
    .local v1, "deltaX":F
    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->last:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float v2, v9, v10

    .line 145
    .local v2, "deltaY":F
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->origWidth:F

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v4, v9

    .line 146
    .local v4, "scaleWidth":F
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->origHeight:F

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v3, v9

    .line 147
    .local v3, "scaleHeight":F
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    cmpg-float v9, v4, v9

    if-gez v9, :cond_3

    .line 148
    const/4 v1, 0x0

    .line 149
    add-float v9, v7, v2

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 150
    neg-float v2, v7

    .line 174
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 175
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->last:Landroid/graphics/PointF;

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 151
    :cond_2
    add-float v9, v7, v2

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    neg-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 152
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    add-float/2addr v9, v7

    neg-float v2, v9

    goto :goto_1

    .line 154
    :cond_3
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    cmpg-float v9, v3, v9

    if-gez v9, :cond_5

    .line 155
    const/4 v2, 0x0

    .line 156
    add-float v9, v5, v1

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 157
    neg-float v1, v5

    goto :goto_1

    .line 158
    :cond_4
    add-float v9, v5, v1

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    neg-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 159
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    add-float/2addr v9, v5

    neg-float v1, v9

    goto :goto_1

    .line 162
    :cond_5
    add-float v9, v5, v1

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 163
    neg-float v1, v5

    .line 168
    :cond_6
    :goto_2
    add-float v9, v7, v2

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 169
    neg-float v2, v7

    goto :goto_1

    .line 164
    :cond_7
    add-float v9, v5, v1

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    neg-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 165
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    add-float/2addr v9, v5

    neg-float v1, v9

    goto :goto_2

    .line 170
    :cond_8
    add-float v9, v7, v2

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    neg-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 171
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v9, v9, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    add-float/2addr v9, v7

    neg-float v2, v9

    goto :goto_1

    .line 180
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "scaleHeight":F
    .end local v4    # "scaleWidth":F
    :pswitch_3
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    const/4 v10, 0x0

    iput v10, v9, Lcom/liquable/nemo/widget/TouchImageView;->mode:I

    .line 181
    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->start:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v6, v9

    .line 182
    .local v6, "xDiff":I
    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v10, v10, Lcom/liquable/nemo/widget/TouchImageView;->start:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v8, v9

    .line 183
    .local v8, "yDiff":I
    const/4 v9, 0x3

    if-ge v6, v9, :cond_0

    const/4 v9, 0x3

    if-ge v8, v9, :cond_0

    .line 184
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-virtual {v9}, Lcom/liquable/nemo/widget/TouchImageView;->performClick()Z

    goto/16 :goto_0

    .line 189
    .end local v6    # "xDiff":I
    .end local v8    # "yDiff":I
    :pswitch_4
    iget-object v9, p0, Lcom/liquable/nemo/widget/TouchImageView$1;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    const/4 v10, 0x0

    iput v10, v9, Lcom/liquable/nemo/widget/TouchImageView;->mode:I

    goto/16 :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
