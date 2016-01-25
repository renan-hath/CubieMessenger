.class public Lcom/aviary/android/feather/widget/DrawableHighlightView;
.super Ljava/lang/Object;
.source "DrawableHighlightView.java"

# interfaces
.implements Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable$OnSizeChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;,
        Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;
    }
.end annotation


# static fields
.field private static final STATE_SET_NONE:[I

.field private static final STATE_SET_SELECTED:[I

.field private static final STATE_SET_SELECTED_FOCUSED:[I

.field private static final STATE_SET_SELECTED_PRESSED:[I


# instance fields
.field private STATE_FOCUSED:I

.field private STATE_NONE:I

.field private STATE_SELECTED:I

.field private final fpoints:[F

.field private mAlignVerticalMode:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

.field private mAnchorDelete:Landroid/graphics/drawable/Drawable;

.field private mAnchorDeleteHeight:I

.field private mAnchorDeleteWidth:I

.field private mAnchorRotate:Landroid/graphics/drawable/Drawable;

.field private mAnchorRotateHeight:I

.field private mAnchorRotateWidth:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

.field private mContext:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

.field private mCropRect:Landroid/graphics/RectF;

.field private mDeleteClickListener:Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;

.field private mDrawRect:Landroid/graphics/RectF;

.field private mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

.field private mHidden:Z

.field mInvalidateRect:Landroid/graphics/Rect;

.field mInvalidateRectF:Landroid/graphics/RectF;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMode:I

.field private mMoveEnabled:Z

.field private mPadding:I

.field private mRatio:F

.field private mResizeEdgeMode:I

.field private mRotateEnabled:Z

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field private mRotation:F

.field private mScaleEnabled:Z

.field private mShowAnchors:Z

.field private mState:I

.field private final mTempRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-array v0, v2, [I

    sput-object v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SET_NONE:[I

    .line 84
    new-array v0, v3, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SET_SELECTED:[I

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SET_SELECTED_PRESSED:[I

    .line 86
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    sput-object v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SET_SELECTED_FOCUSED:[I

    return-void

    .line 85
    nop

    :array_0
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;ILcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;)V
    .locals 10
    .param p1, "context"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    .param p2, "styleId"    # I
    .param p3, "content"    # Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v5, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_NONE:I

    .line 34
    iput v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SELECTED:I

    .line 35
    iput v9, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_FOCUSED:I

    .line 53
    iget v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_NONE:I

    iput v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mState:I

    .line 55
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    .line 73
    iput v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    .line 74
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRatio:F

    .line 75
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 76
    new-array v2, v7, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->fpoints:[F

    .line 78
    iput v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    .line 79
    iput-boolean v5, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mShowAnchors:Z

    .line 80
    sget-object v2, Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;->Center:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAlignVerticalMode:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    .line 350
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRectF:Landroid/graphics/RectF;

    .line 351
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRect:Landroid/graphics/Rect;

    .line 89
    iput-object p3, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    .line 90
    iput-object p1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContext:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 92
    instance-of v2, p3, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v2, :cond_4

    .line 93
    check-cast p3, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .end local p3    # "content":Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    iput-object p3, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 94
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    invoke-interface {v2, p0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->setOnSizeChangeListener(Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable$OnSizeChange;)V

    .line 99
    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 101
    .local v1, "minSize":F
    const-string/jumbo v2, "drawable-view"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DrawableHighlightView. styleId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-lez p2, :cond_0

    .line 104
    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/aviary/android/feather/R$styleable;->AviaryDrawableHighlightView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotate:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDelete:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    const/16 v2, 0xa

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    .line 110
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mResizeEdgeMode:I

    .line 112
    const-string/jumbo v2, "drawable-view"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Edge Mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mResizeEdgeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMoveEnabled:Z

    .line 115
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateEnabled:Z

    .line 116
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mScaleEnabled:Z

    .line 118
    const/4 v2, 0x5

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    .end local v0    # "array":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotate:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotateWidth:I

    .line 124
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotateHeight:I

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDelete:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDeleteWidth:I

    .line 129
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDeleteHeight:I

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->updateRatio()V

    .line 134
    cmpl-float v2, v1, v8

    if-lez v2, :cond_3

    .line 135
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setMinSize(F)V

    .line 137
    :cond_3
    return-void

    .line 96
    .end local v1    # "minSize":F
    .restart local p3    # "content":Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    goto/16 :goto_0

    .line 76
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private updateRatio()V
    .locals 3

    .prologue
    .line 655
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    invoke-interface {v2}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->getCurrentWidth()F

    move-result v1

    .line 656
    .local v1, "w":F
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    invoke-interface {v2}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->getCurrentHeight()F

    move-result v0

    .line 657
    .local v0, "h":F
    div-float v2, v1, v0

    iput v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRatio:F

    .line 658
    return-void
.end method


# virtual methods
.method protected computeLayout()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getDisplayRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public copyBounds(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/RectF;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 156
    iget v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 157
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDeleteClickListener:Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;

    .line 149
    iput-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContext:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 150
    iput-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    .line 151
    iput-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 152
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    iget-boolean v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mHidden:Z

    if-eqz v7, :cond_0

    .line 205
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->copyBounds(Landroid/graphics/RectF;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 165
    .local v5, "saveCount":I
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 167
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 168
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    .line 169
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->isSelected()Z

    move-result v2

    .line 174
    .local v2, "is_selected":Z
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->isFocused()Z

    move-result v1

    .line 176
    .local v1, "is_focused":Z
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v7, :cond_5

    .line 177
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->setBounds(FFFF)V

    .line 182
    :goto_1
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    invoke-interface {v7, p1}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    .line 186
    :cond_2
    iget-boolean v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mShowAnchors:Z

    if-eqz v7, :cond_4

    .line 187
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v3, v7

    .line 188
    .local v3, "left":I
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v4, v7

    .line 189
    .local v4, "right":I
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v6, v7

    .line 190
    .local v6, "top":I
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v7

    .line 192
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotate:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 193
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotate:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotateWidth:I

    sub-int v8, v4, v8

    iget v9, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotateHeight:I

    sub-int v9, v0, v9

    iget v10, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotateWidth:I

    add-int/2addr v10, v4

    iget v11, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotateHeight:I

    add-int/2addr v11, v0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    :cond_3
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDelete:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 198
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDelete:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDeleteWidth:I

    sub-int v8, v3, v8

    iget v9, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDeleteHeight:I

    sub-int v9, v6, v9

    iget v10, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDeleteWidth:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDeleteHeight:I

    add-int/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 204
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :cond_4
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 179
    :cond_5
    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public forceUpdate()Z
    .locals 14

    .prologue
    .line 661
    const-string/jumbo v11, "drawable-view"

    const-string/jumbo v12, "forceUpdate"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 664
    .local v0, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getDrawRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 666
    .local v1, "drawRect":Landroid/graphics/RectF;
    iget-object v11, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v11, :cond_2

    .line 668
    iget-object v11, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    invoke-interface {v11}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->getCurrentWidth()F

    move-result v8

    .line 669
    .local v8, "textWidth":F
    iget-object v11, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    invoke-interface {v11}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->getCurrentHeight()F

    move-result v6

    .line 671
    .local v6, "textHeight":F
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->updateRatio()V

    .line 673
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 674
    .local v7, "textRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 676
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float v2, v8, v11

    .line 677
    .local v2, "dx":F
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    sub-float v3, v6, v11

    .line 679
    .local v3, "dy":F
    const/4 v11, 0x2

    new-array v4, v11, [F

    const/4 v11, 0x0

    aput v2, v4, v11

    const/4 v11, 0x1

    aput v3, v4, v11

    .line 681
    .local v4, "fpoints":[F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 682
    .local v5, "rotateMatrix":Landroid/graphics/Matrix;
    iget v11, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    neg-float v11, v11

    invoke-virtual {v5, v11}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 684
    const/4 v11, 0x0

    aget v2, v4, v11

    .line 685
    const/4 v11, 0x1

    aget v3, v4, v11

    .line 687
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float/2addr v11, v12

    mul-float v9, v2, v11

    .line 688
    .local v9, "xDelta":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float/2addr v11, v12

    mul-float v10, v3, v11

    .line 690
    .local v10, "yDelta":F
    const/4 v11, 0x0

    cmpl-float v11, v9, v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-eqz v11, :cond_1

    .line 691
    :cond_0
    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v9, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v10, v12

    const/4 v13, 0x0

    invoke-virtual {p0, v11, v12, v13}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->growBy(FFZ)V

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->invalidate()V

    .line 695
    const/4 v11, 0x1

    .line 697
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "fpoints":[F
    .end local v5    # "rotateMatrix":Landroid/graphics/Matrix;
    .end local v6    # "textHeight":F
    .end local v7    # "textRect":Landroid/graphics/RectF;
    .end local v8    # "textWidth":F
    .end local v9    # "xDelta":F
    .end local v10    # "yDelta":F
    :goto_0
    return v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    return-object v0
.end method

.method public getCropRectF()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCropRotationMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 237
    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 238
    iget-object v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 239
    return-object v0
.end method

.method public getDisplayRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "supportRect"    # Landroid/graphics/RectF;

    .prologue
    .line 243
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 244
    .local v0, "r":Landroid/graphics/RectF;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 245
    return-object v0
.end method

.method public getDrawRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getHit(FF)I
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v10, 0x42200000    # 40.0f

    .line 259
    new-instance v2, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-direct {v2, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 260
    .local v2, "rect":Landroid/graphics/RectF;
    iget v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 262
    new-array v1, v11, [F

    aput p1, v1, v7

    aput p2, v1, v6

    .line 264
    .local v1, "pts":[F
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    .local v4, "rotateMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 266
    iget v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    neg-float v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 267
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 268
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 270
    aget p1, v1, v7

    .line 271
    aget p2, v1, v6

    .line 273
    const/4 v3, 0x1

    .line 274
    .local v3, "retval":I
    iget v8, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v10

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_8

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v10

    cmpg-float v8, p2, v8

    if-gez v8, :cond_8

    move v5, v6

    .line 275
    .local v5, "verticalCheck":Z
    :goto_0
    iget v8, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v10

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_9

    iget v8, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v10

    cmpg-float v8, p1, v8

    if-gez v8, :cond_9

    move v0, v6

    .line 279
    .local v0, "horizCheck":Z
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 280
    const/16 v3, 0x40

    .line 283
    :cond_0
    iget-boolean v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mScaleEnabled:Z

    if-eqz v7, :cond_4

    .line 284
    const-string/jumbo v7, "drawable-view"

    const-string/jumbo v8, "scale enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v7, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_1

    if-eqz v5, :cond_1

    iget v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mResizeEdgeMode:I

    .line 286
    invoke-static {v7, v11}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 287
    const-string/jumbo v7, "drawable-view"

    const-string/jumbo v8, "left"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    or-int/lit8 v3, v3, 0x2

    .line 290
    :cond_1
    iget v7, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_2

    if-eqz v5, :cond_2

    iget v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mResizeEdgeMode:I

    const/4 v8, 0x4

    .line 291
    invoke-static {v7, v8}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 292
    const-string/jumbo v7, "drawable-view"

    const-string/jumbo v8, "right"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    or-int/lit8 v3, v3, 0x4

    .line 295
    :cond_2
    iget v7, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_3

    if-eqz v0, :cond_3

    iget v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mResizeEdgeMode:I

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 296
    const-string/jumbo v7, "drawable-view"

    const-string/jumbo v8, "top"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    or-int/lit8 v3, v3, 0x8

    .line 299
    :cond_3
    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    if-eqz v0, :cond_4

    iget v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mResizeEdgeMode:I

    const/16 v8, 0x10

    .line 300
    invoke-static {v7, v8}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 301
    const-string/jumbo v7, "drawable-view"

    const-string/jumbo v8, "bottom"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    or-int/lit8 v3, v3, 0x10

    .line 306
    :cond_4
    iget-boolean v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateEnabled:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mScaleEnabled:Z

    if-eqz v7, :cond_6

    :cond_5
    iget v7, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, p2

    .line 307
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_6

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    .line 308
    const/16 v3, 0x20

    .line 311
    :cond_6
    iget-boolean v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMoveEnabled:Z

    if-eqz v7, :cond_7

    if-ne v3, v6, :cond_7

    float-to-int v6, p1

    int-to-float v6, v6

    float-to-int v7, p2

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 312
    const/16 v3, 0x40

    .line 315
    :cond_7
    const-string/jumbo v6, "drawable-view"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v3

    .end local v0    # "horizCheck":Z
    .end local v5    # "verticalCheck":Z
    :cond_8
    move v5, v7

    .line 274
    goto/16 :goto_0

    .restart local v5    # "verticalCheck":Z
    :cond_9
    move v0, v7

    .line 275
    goto/16 :goto_1
.end method

.method public getInvalidationRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 354
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 355
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 356
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 358
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 361
    iget v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotateWidth:I

    iget v3, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDeleteWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 362
    .local v1, "w":I
    iget v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorRotateHeight:I

    iget v3, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDeleteHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 364
    .local v0, "h":I
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRect:Landroid/graphics/Rect;

    neg-int v3, v1

    mul-int/lit8 v3, v3, 0x2

    neg-int v4, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 365
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mInvalidateRect:Landroid/graphics/Rect;

    return-object v2
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMode:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    return v0
.end method

.method protected growBy(F)V
    .locals 2
    .param p1, "dx"    # F

    .prologue
    .line 385
    iget v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRatio:F

    div-float v0, p1, v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->growBy(FFZ)V

    .line 386
    return-void
.end method

.method protected growBy(FFZ)V
    .locals 6
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "checkMinSize"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 389
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mScaleEnabled:Z

    if-nez v2, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 393
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAlignVerticalMode:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    sget-object v3, Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;->Center:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    if-ne v2, v3, :cond_3

    .line 394
    neg-float v2, p1

    neg-float v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 403
    :goto_1
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getDisplayRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 405
    .local v1, "testRect":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    invoke-interface {v2, v1}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->validateSize(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_0

    .line 409
    :cond_2
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 410
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->invalidate()V

    goto :goto_0

    .line 395
    .end local v1    # "testRect":Landroid/graphics/RectF;
    :cond_3
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAlignVerticalMode:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    sget-object v3, Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;->Top:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    if-ne v2, v3, :cond_4

    .line 396
    neg-float v2, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 397
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v3, p2, v5

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 399
    :cond_4
    neg-float v2, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 400
    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v3, p2, v5

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_1
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->computeLayout()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    .line 481
    const-string/jumbo v0, "drawable-view"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "computeLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 484
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 485
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 486
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 487
    return-void
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 629
    iget v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mState:I

    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_FOCUSED:I

    and-int/2addr v0, v1

    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_FOCUSED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    .line 608
    iget v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mState:I

    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SELECTED:I

    and-int/2addr v0, v1

    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SELECTED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveBy(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMoveEnabled:Z

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 492
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->invalidate()V

    .line 494
    :cond_0
    return-void
.end method

.method public onMouseMove(ILandroid/view/MotionEvent;FF)V
    .locals 10
    .param p1, "edge"    # I
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 414
    if-ne p1, v7, :cond_0

    .line 473
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->fpoints:[F

    aput p3, v6, v8

    .line 419
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->fpoints:[F

    aput p4, v6, v7

    .line 424
    const/16 v6, 0x40

    if-ne p1, v6, :cond_1

    .line 425
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    mul-float/2addr v6, p3

    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget-object v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    mul-float/2addr v7, p4

    invoke-virtual {p0, v6, v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->moveBy(FF)V

    goto :goto_0

    .line 426
    :cond_1
    const/16 v6, 0x20

    if-ne p1, v6, :cond_2

    .line 427
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->fpoints:[F

    aget p3, v6, v8

    .line 428
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->fpoints:[F

    aget p4, v6, v7

    .line 429
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    mul-float v4, p3, v6

    .line 430
    .local v4, "xDelta":F
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    mul-float v5, p4, v6

    .line 431
    .local v5, "yDelta":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7, p3, p4}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->rotateBy(FFFF)V

    .line 433
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->invalidate()V

    goto :goto_0

    .line 437
    .end local v4    # "xDelta":F
    .end local v5    # "yDelta":F
    :cond_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 438
    .local v3, "rotateMatrix":Landroid/graphics/Matrix;
    iget v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    neg-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 439
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->fpoints:[F

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 440
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->fpoints:[F

    aget p3, v6, v8

    .line 441
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->fpoints:[F

    aget p4, v6, v7

    .line 443
    and-int/lit8 v6, p1, 0x6

    if-nez v6, :cond_3

    const/4 p3, 0x0

    .line 444
    :cond_3
    and-int/lit8 v6, p1, 0x18

    if-nez v6, :cond_4

    const/4 p4, 0x0

    .line 446
    :cond_4
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    mul-float v4, p3, v6

    .line 447
    .restart local v4    # "xDelta":F
    iget-object v6, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    mul-float v5, p4, v6

    .line 449
    .restart local v5    # "yDelta":F
    const/4 v6, 0x2

    invoke-static {p1, v6}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v1

    .line 450
    .local v1, "is_left":Z
    const/16 v6, 0x8

    invoke-static {p1, v6}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v2

    .line 454
    .local v2, "is_top":Z
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    .line 455
    move v0, v4

    .line 456
    .local v0, "delta":F
    if-eqz v1, :cond_5

    .line 457
    mul-float/2addr v0, v9

    .line 466
    :cond_5
    :goto_1
    const-string/jumbo v6, "drawable-view"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "x: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", final: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->growBy(F)V

    .line 470
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->invalidate()V

    goto/16 :goto_0

    .line 460
    .end local v0    # "delta":F
    :cond_6
    move v0, v5

    .line 461
    .restart local v0    # "delta":F
    if-eqz v2, :cond_5

    .line 462
    mul-float/2addr v0, v9

    goto :goto_1
.end method

.method public onSingleTapConfirmed(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x42200000    # 40.0f

    .line 321
    new-instance v2, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    invoke-direct {v2, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 322
    .local v2, "rect":Landroid/graphics/RectF;
    iget v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mPadding:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 324
    const/4 v7, 0x2

    new-array v1, v7, [F

    aput p1, v1, v6

    aput p2, v1, v5

    .line 326
    .local v1, "pts":[F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 327
    .local v3, "rotateMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 328
    iget v7, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    neg-float v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 329
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 330
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 332
    aget p1, v1, v6

    .line 333
    aget p2, v1, v5

    .line 337
    iget v7, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v9

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_1

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v9

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    move v4, v5

    .line 338
    .local v4, "verticalCheck":Z
    :goto_0
    iget v7, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v9

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_2

    iget v7, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v9

    cmpg-float v7, p1, v7

    if-gez v7, :cond_2

    move v0, v5

    .line 340
    .local v0, "horizCheck":Z
    :goto_1
    iget-object v5, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAnchorDelete:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 341
    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 343
    iget-object v5, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDeleteClickListener:Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;

    if-eqz v5, :cond_0

    .line 344
    iget-object v5, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDeleteClickListener:Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;

    invoke-interface {v5}, Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;->onDeleteClick()V

    .line 348
    :cond_0
    return-void

    .end local v0    # "horizCheck":Z
    .end local v4    # "verticalCheck":Z
    :cond_1
    move v4, v6

    .line 337
    goto :goto_0

    .restart local v4    # "verticalCheck":Z
    :cond_2
    move v0, v6

    .line 338
    goto :goto_1
.end method

.method public onSizeChanged(Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;FFFF)V
    .locals 3
    .param p1, "content"    # Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 707
    const-string/jumbo v0, "drawable-view"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContext:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p5

    if-eqz v0, :cond_1

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->forceUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContext:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getInvalidationRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate(Landroid/graphics/Rect;)V

    .line 734
    :cond_1
    :goto_0
    return-void

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContext:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postInvalidate()V

    goto :goto_0
.end method

.method rotateBy(FFFF)V
    .locals 21
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "diffx"    # F
    .param p4, "diffy"    # F

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mScaleEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [F

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->centerX()F

    move-result v20

    aput v20, v12, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->centerY()F

    move-result v20

    aput v20, v12, v19

    .line 501
    .local v12, "pt1":[F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v13, v0, [F

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    aput v20, v13, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    aput v20, v13, v19

    .line 502
    .local v13, "pt2":[F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v14, v0, [F

    const/16 v19, 0x0

    aput p1, v14, v19

    const/16 v19, 0x1

    aput p2, v14, v19

    .line 504
    .local v14, "pt3":[F
    invoke-static {v13, v12}, Lcom/aviary/android/feather/library/graphics/Point2D;->angleBetweenPoints([F[F)D

    move-result-wide v2

    .line 505
    .local v2, "angle1":D
    invoke-static {v14, v12}, Lcom/aviary/android/feather/library/graphics/Point2D;->angleBetweenPoints([F[F)D

    move-result-wide v4

    .line 507
    .local v4, "angle2":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 508
    sub-double v19, v4, v2

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    .line 511
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mScaleEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 513
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 514
    .local v16, "rotateMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 516
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v11, v0, [F

    const/16 v19, 0x0

    aput p3, v11, v19

    const/16 v19, 0x1

    aput p4, v11, v19

    .line 517
    .local v11, "points":[F
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 519
    const/16 v19, 0x0

    aget p3, v11, v19

    .line 520
    const/16 v19, 0x1

    aget p4, v11, v19

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v20

    div-float v19, v19, v20

    mul-float v17, p3, v19

    .line 523
    .local v17, "xDelta":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v20

    div-float v19, v19, v20

    mul-float v18, p4, v19

    .line 525
    .local v18, "yDelta":F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v15, v0, [F

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    add-float v20, v20, v17

    aput v20, v15, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    add-float v20, v20, v18

    aput v20, v15, v19

    .line 526
    .local v15, "pt4":[F
    invoke-static {v12, v13}, Lcom/aviary/android/feather/library/graphics/Point2D;->distance([F[F)D

    move-result-wide v7

    .line 527
    .local v7, "distance1":D
    invoke-static {v12, v15}, Lcom/aviary/android/feather/library/graphics/Point2D;->distance([F[F)D

    move-result-wide v9

    .line 528
    .local v9, "distance2":D
    sub-double v19, v9, v7

    move-wide/from16 v0, v19

    double-to-float v6, v0

    .line 529
    .local v6, "distance":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->growBy(F)V

    goto/16 :goto_0
.end method

.method public setAlignModeV(Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;)V
    .locals 0
    .param p1, "mode"    # Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mAlignVerticalMode:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    .line 141
    return-void
.end method

.method public setFocused(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 612
    const-string/jumbo v1, "drawable-view"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->isFocused()Z

    move-result v0

    .line 614
    .local v0, "is_focused":Z
    if-eq v0, p1, :cond_1

    .line 615
    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mState:I

    iget v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_FOCUSED:I

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mState:I

    .line 617
    iget-object v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v1, :cond_0

    .line 618
    if-eqz p1, :cond_2

    .line 619
    iget-object v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    invoke-interface {v1}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->beginEdit()V

    .line 624
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->updateDrawableState()V

    .line 626
    :cond_1
    return-void

    .line 621
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mEditableContent:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    invoke-interface {v1}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->endEdit()V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mHidden:Z

    .line 548
    return-void
.end method

.method public setMinSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 551
    iget v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRatio:F

    div-float v1, p1, v1

    invoke-interface {v0, p1, v1}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->setMinSize(FF)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mContent:Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRatio:F

    mul-float/2addr v1, p1

    invoke-interface {v0, v1, p1}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->setMinSize(FF)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 559
    const-string/jumbo v0, "drawable-view"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMode:I

    if-eq p1, v0, :cond_0

    .line 561
    iput p1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMode:I

    .line 562
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->updateDrawableState()V

    .line 564
    :cond_0
    return-void
.end method

.method public setOnDeleteClickListener(Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mDeleteClickListener:Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;

    .line 596
    return-void
.end method

.method public setSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    .line 599
    const-string/jumbo v1, "drawable-view"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->isSelected()Z

    move-result v0

    .line 601
    .local v0, "is_selected":Z
    if-eq v0, p1, :cond_0

    .line 602
    iget v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mState:I

    iget v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SELECTED:I

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mState:I

    .line 603
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->updateDrawableState()V

    .line 605
    :cond_0
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "m"    # Landroid/graphics/Matrix;
    .param p3, "imageRect"    # Landroid/graphics/Rect;
    .param p4, "cropRect"    # Landroid/graphics/RectF;
    .param p5, "maintainAspectRatio"    # Z

    .prologue
    .line 634
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotation:F

    .line 636
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 637
    iput-object p4, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 638
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setMode(I)V

    .line 639
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->invalidate()V

    .line 640
    return-void
.end method

.method protected updateDrawableState()V
    .locals 4

    .prologue
    .line 572
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 592
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->isSelected()Z

    move-result v1

    .line 575
    .local v1, "is_selected":Z
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->isFocused()Z

    move-result v0

    .line 577
    .local v0, "is_focused":Z
    if-eqz v1, :cond_3

    .line 578
    iget v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 579
    if-eqz v0, :cond_1

    .line 580
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SET_SELECTED_FOCUSED:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 582
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SET_SELECTED:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 585
    :cond_2
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SET_SELECTED_PRESSED:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 590
    :cond_3
    iget-object v2, p0, Lcom/aviary/android/feather/widget/DrawableHighlightView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/aviary/android/feather/widget/DrawableHighlightView;->STATE_SET_NONE:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method
