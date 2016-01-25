.class public Lcom/aviary/android/feather/effects/TextPanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "TextPanel.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;
.implements Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;,
        Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;
    }
.end annotation


# instance fields
.field private config:Lcom/aviary/android/feather/library/services/ConfigService;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mColors:[I

.field private mDefaultTextSize:I

.field private mEditText:Landroid/widget/EditText;

.field private final mEditTextWatcher:Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;

.field private mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColor:I

    .line 75
    new-instance v0, Lcom/aviary/android/feather/effects/TextPanel$1;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/TextPanel$1;-><init>(Lcom/aviary/android/feather/effects/TextPanel;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/TextPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/TextPanel;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/TextPanel;->onAddNewText()V

    return-void
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/effects/TextPanel;)Lcom/aviary/android/feather/widget/AviaryGallery;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/TextPanel;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/effects/TextPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/TextPanel;

    .prologue
    .line 51
    iget v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mSelectedPosition:I

    return v0
.end method

.method private beginEdit(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 5
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setFocused(Z)V

    .line 111
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postInvalidate()V

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 115
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 119
    .local v0, "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isTextHint()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v2, ""

    .line 120
    .local v2, "oldText":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 122
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 124
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 125
    .local v1, "manager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 127
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;

    iput-object p1, v3, Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 131
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 132
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    return-void

    .line 119
    .end local v1    # "manager":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "oldText":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0
.end method

.method private createAndConfigurePreview()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 143
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mCanvas:Landroid/graphics/Canvas;

    .line 144
    return-void
.end method

.method private endEdit(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 4
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    const/4 v3, 0x0

    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1, v3}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setFocused(Z)V

    .line 149
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->forceUpdate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getInvalidationRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate(Landroid/graphics/Rect;)V

    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 156
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 159
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 164
    :cond_1
    return-void

    .line 152
    .end local v0    # "manager":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postInvalidate()V

    goto :goto_0
.end method

.method private onAddNewText()V
    .locals 22

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v12, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 184
    .local v12, "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    invoke-virtual {v12}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightViewAt(I)Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/aviary/android/feather/effects/TextPanel;->onApplyCurrent(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 186
    :cond_0
    new-instance v16, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;

    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    iget v7, v0, Lcom/aviary/android/feather/effects/TextPanel;->mDefaultTextSize:I

    int-to-float v7, v7

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v7}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;-><init>(Ljava/lang/String;F)V

    .line 187
    .local v16, "text":Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/effects/TextPanel;->mColor:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setTextColor(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/TextPanel;->config:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v7, Lcom/aviary/android/feather/R$integer;->aviary_text_stroke_enabled:I

    invoke-virtual {v3, v7}, Lcom/aviary/android/feather/library/services/ConfigService;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setStrokeEnabled(Z)V

    .line 189
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setCursorWidth(I)V

    .line 190
    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setMinTextSize(F)V

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setTextHint(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v2, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v12}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getOverlayStyleId()I

    move-result v7

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v7, v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;ILcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;)V

    .line 195
    .local v2, "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 197
    .local v4, "mImageMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getWidth()I

    move-result v17

    .line 198
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getHeight()I

    move-result v11

    .line 199
    .local v11, "height":I
    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 202
    .local v13, "imageSize":I
    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getIntrinsicWidth()I

    move-result v10

    .line 203
    .local v10, "cropWidth":I
    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getIntrinsicHeight()I

    move-result v8

    .line 205
    .local v8, "cropHeight":I
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 207
    .local v9, "cropSize":I
    if-le v9, v13, :cond_1

    .line 208
    div-int/lit8 v10, v17, 0x2

    .line 209
    div-int/lit8 v8, v11, 0x2

    .line 212
    :cond_1
    sub-int v3, v17, v10

    div-int/lit8 v18, v3, 0x2

    .line 213
    .local v18, "x":I
    sub-int v3, v11, v8

    div-int/lit8 v19, v3, 0x2

    .line 215
    .local v19, "y":I
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 216
    .local v14, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v14, v14}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 218
    const/4 v3, 0x4

    new-array v15, v3, [F

    const/4 v3, 0x0

    move/from16 v0, v18

    int-to-float v7, v0

    aput v7, v15, v3

    const/4 v3, 0x1

    move/from16 v0, v19

    int-to-float v7, v0

    aput v7, v15, v3

    const/4 v3, 0x2

    add-int v7, v18, v10

    int-to-float v7, v7

    aput v7, v15, v3

    const/4 v3, 0x3

    add-int v7, v19, v8

    int-to-float v7, v7

    aput v7, v15, v3

    .line 219
    .local v15, "pts":[F
    invoke-static {v14, v15}, Lcom/aviary/android/feather/library/utils/MatrixUtils;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 221
    new-instance v6, Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget v3, v15, v3

    const/4 v7, 0x1

    aget v7, v15, v7

    const/16 v20, 0x2

    aget v20, v15, v20

    const/16 v21, 0x3

    aget v21, v15, v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v3, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 222
    .local v6, "cropRect":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-direct {v5, v3, v7, v0, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    .local v5, "imageRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/TextPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setup(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 226
    invoke-virtual {v12, v2}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->addHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/effects/TextPanel;->onClick(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 231
    return-void
.end method

.method private onApplyCurrent()Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 234
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v3

    .line 235
    .local v3, "nullActions":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    iget-object v2, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 236
    .local v2, "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 252
    .end local v3    # "nullActions":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    :cond_0
    :goto_0
    return-object v3

    .line 237
    .restart local v3    # "nullActions":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    :cond_1
    iget-object v4, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v4, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v4, v6}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightViewAt(I)Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v1

    .line 239
    .local v1, "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v4

    instance-of v4, v4, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v4, :cond_2

    .line 242
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 243
    .local v0, "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    if-eqz v0, :cond_2

    .line 244
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isTextHint()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/effects/TextPanel;->setIsChanged(Z)V

    goto :goto_0

    .line 250
    .end local v0    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    :cond_2
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/TextPanel;->onApplyCurrent(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v3

    goto :goto_0
.end method

.method private onApplyCurrent(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .locals 23
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 259
    if-eqz p1, :cond_1

    .line 260
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/TextPanel;->setIsChanged(Z)V

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v6

    .line 263
    .local v6, "cropRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/aviary/android/feather/library/utils/MatrixUtils;->getScale(Landroid/graphics/Matrix;)[F

    move-result-object v18

    const/16 v19, 0x0

    aget v15, v18, v19

    .line 265
    .local v15, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "cropRect: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-interface/range {v18 .. v19}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 268
    .local v17, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 270
    .local v9, "h":I
    iget v10, v6, Landroid/graphics/RectF;->left:F

    .line 271
    .local v10, "left":F
    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    .line 272
    .local v16, "top":F
    iget v12, v6, Landroid/graphics/RectF;->right:F

    .line 273
    .local v12, "right":F
    iget v5, v6, Landroid/graphics/RectF;->bottom:F

    .line 276
    .local v5, "bottom":F
    invoke-virtual/range {p1 .. p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v7

    check-cast v7, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 277
    .local v7, "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v7}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->endEdit()V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 282
    sget-object v18, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TEXT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static/range {v18 .. v18}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v8

    check-cast v8, Lcom/aviary/android/feather/library/filters/TextFilter;

    .line 283
    .local v8, "filter":Lcom/aviary/android/feather/library/filters/TextFilter;
    move/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Lcom/aviary/android/feather/library/filters/TextFilter;->setPreviewSize(II)V

    .line 284
    invoke-interface {v7}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/aviary/android/feather/library/filters/TextFilter;->setText(Ljava/lang/CharSequence;)V

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mColor:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/aviary/android/feather/library/filters/TextFilter;->setFillColor(I)V

    .line 286
    invoke-interface {v7}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getStrokeEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v7}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getTextStrokeColor()I

    move-result v18

    :goto_0
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/aviary/android/feather/library/filters/TextFilter;->setStrokeColor(I)V

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getRotation()F

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/aviary/android/feather/library/filters/TextFilter;->setRotation(F)V

    .line 288
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    float-to-double v0, v10

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/aviary/android/feather/library/filters/TextFilter;->setTopLeft(DD)V

    .line 289
    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v12

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/aviary/android/feather/library/filters/TextFilter;->setBottomRight(DD)V

    .line 290
    invoke-interface {v7}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getTextSize()F

    move-result v18

    div-float v18, v18, v15

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Lcom/aviary/android/feather/library/filters/TextFilter;->setTextSize(D)V

    .line 292
    invoke-virtual {v8}, Lcom/aviary/android/feather/library/filters/TextFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 295
    .local v4, "actionList":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    new-instance v11, Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 296
    .local v11, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Canvas;->save(I)I

    move-result v14

    .line 297
    .local v14, "saveCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRotationMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    .line 298
    .local v13, "rotateMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 304
    invoke-direct/range {p0 .. p1}, Lcom/aviary/android/feather/effects/TextPanel;->onClearCurrent(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 310
    .end local v5    # "bottom":F
    .end local v6    # "cropRect":Landroid/graphics/RectF;
    .end local v7    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    .end local v8    # "filter":Lcom/aviary/android/feather/library/filters/TextFilter;
    .end local v9    # "h":I
    .end local v10    # "left":F
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "right":F
    .end local v13    # "rotateMatrix":Landroid/graphics/Matrix;
    .end local v14    # "saveCount":I
    .end local v15    # "scale":F
    .end local v16    # "top":F
    .end local v17    # "w":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mPreview:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/aviary/android/feather/effects/TextPanel;->onPreviewChanged(Landroid/graphics/Bitmap;ZZ)V

    .line 311
    return-object v4

    .line 286
    .end local v4    # "actionList":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .restart local v5    # "bottom":F
    .restart local v6    # "cropRect":Landroid/graphics/RectF;
    .restart local v7    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    .restart local v8    # "filter":Lcom/aviary/android/feather/library/filters/TextFilter;
    .restart local v9    # "h":I
    .restart local v10    # "left":F
    .restart local v12    # "right":F
    .restart local v15    # "scale":F
    .restart local v16    # "top":F
    .restart local v17    # "w":I
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 307
    .end local v5    # "bottom":F
    .end local v6    # "cropRect":Landroid/graphics/RectF;
    .end local v7    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    .end local v8    # "filter":Lcom/aviary/android/feather/library/filters/TextFilter;
    .end local v9    # "h":I
    .end local v10    # "left":F
    .end local v12    # "right":F
    .end local v15    # "scale":F
    .end local v16    # "top":F
    .end local v17    # "w":I
    :cond_1
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v4

    .restart local v4    # "actionList":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    goto :goto_1
.end method

.method private onClearCurrent(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 1
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setOnDeleteClickListener(Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->removeHightlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z

    .line 317
    return-void
.end method

.method private updateCurrentHighlightColor()V
    .locals 4

    .prologue
    .line 487
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 489
    .local v1, "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getSelectedHighlightView()Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v0

    .line 490
    .local v0, "current":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    if-nez v0, :cond_0

    .line 491
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 492
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightViewAt(I)Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v0

    .line 496
    :cond_0
    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v2

    instance-of v2, v2, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v2, :cond_1

    .line 498
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    iget v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColor:I

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->setTextColor(I)V

    .line 499
    iget-object v2, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postInvalidate()V

    .line 502
    :cond_1
    return-void
.end method


# virtual methods
.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 168
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_content_text:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected generateOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 173
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_crop:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getIsChanged()Z
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->getIsChanged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 359
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 361
    new-array v0, v3, [Lcom/aviary/android/feather/widget/VibrationWidget;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/TextPanel;->disableHapticIsNecessary([Lcom/aviary/android/feather/widget/VibrationWidget;)V

    .line 363
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->config:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$dimen;->aviary_text_overlay_default_size:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mDefaultTextSize:I

    .line 365
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setOnDrawableEventListener(Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;)V

    .line 366
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setScaleWithContent(Z)V

    .line 367
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setForceSingleSelection(Z)V

    .line 369
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->requestLayout()V

    .line 371
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 373
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel;->contentReady()V

    .line 376
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/effects/TextPanel$2;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/effects/TextPanel$2;-><init>(Lcom/aviary/android/feather/effects/TextPanel;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    return-void
.end method

.method public onClick(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 1
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    instance-of v0, v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/TextPanel;->beginEdit(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 327
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    const-class v1, Lcom/aviary/android/feather/library/services/ConfigService;

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/ConfigService;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->config:Lcom/aviary/android/feather/library/services/ConfigService;

    .line 335
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->config:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$array;->aviary_text_fill_colors:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColors:[I

    .line 336
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->config:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_text_fill_color_index:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mSelectedPosition:I

    .line 338
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColors:[I

    iget v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mSelectedPosition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColor:I

    .line 340
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_gallery:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryGallery;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    .line 341
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    iget v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setDefaultPosition(I)V

    .line 342
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/widget/AviaryGallery;->setCallbackDuringFling(Z)V

    .line 343
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAutoSelectChild(Z)V

    .line 344
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    new-instance v1, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColors:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;-><init>(Lcom/aviary/android/feather/effects/TextPanel;Landroid/content/Context;[I)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAdapter(Landroid/widget/Adapter;)V

    .line 345
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 347
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    .line 348
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 349
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 350
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDoubleTapEnabled(Z)V

    .line 352
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/TextPanel;->createAndConfigurePreview()V

    .line 354
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 355
    return-void
.end method

.method public onDeactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setOnDrawableEventListener(Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;)V

    .line 388
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 389
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/TextPanel;->endEdit(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 390
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 391
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mCanvas:Landroid/graphics/Canvas;

    .line 396
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->clearOverlays()V

    .line 397
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 398
    return-void
.end method

.method public onDown(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 0
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 449
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    .line 507
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEditorAction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 509
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 510
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    const/4 v3, 0x6

    if-ne p2, v3, :cond_0

    .line 512
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 513
    .local v1, "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getSelectedHighlightView()Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 514
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getSelectedHighlightView()Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v0

    .line 515
    .local v0, "d":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v3

    instance-of v3, v3, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v3, :cond_0

    .line 516
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 517
    .local v2, "text":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v2}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 519
    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/TextPanel;->endEdit(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 527
    .end local v0    # "d":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .end local v1    # "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    .end local v2    # "text":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    :cond_0
    return v7
.end method

.method public onFocusChange(Lcom/aviary/android/feather/widget/DrawableHighlightView;Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 2
    .param p1, "newFocus"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .param p2, "oldFocus"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 455
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {p2}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 457
    .local v0, "text":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-direct {p0, p2}, Lcom/aviary/android/feather/effects/TextPanel;->endEdit(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 463
    .end local v0    # "text":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 465
    .restart local v0    # "text":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getTextColor()I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColor:I

    .line 467
    .end local v0    # "text":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    :cond_1
    return-void
.end method

.method protected onGenerateResult()V
    .locals 1

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/TextPanel;->onApplyCurrent()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    .line 472
    .local v0, "actions":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    invoke-super {p0, v0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onGenerateResult(Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 473
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    .line 425
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v3, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getSelectedHighlightView()Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v2

    .line 426
    .local v2, "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onKey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 428
    if-eqz v2, :cond_1

    .line 430
    const/16 v3, 0x43

    if-eq p2, v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 432
    :cond_0
    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    .line 433
    .local v0, "content":Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    instance-of v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 434
    check-cast v1, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 436
    .local v1, "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v1}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isTextHint()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    const-string/jumbo v3, ""

    invoke-interface {v1, v3}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->setText(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->forceUpdate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TextPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getInvalidationRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate(Landroid/graphics/Rect;)V

    .line 445
    .end local v0    # "content":Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    .end local v1    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    :cond_1
    return v7
.end method

.method public onMove(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 1
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 477
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    instance-of v0, v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/TextPanel;->endEdit(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 481
    :cond_0
    return-void
.end method

.method public onScroll(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColors:[I

    array-length v1, v1

    if-ge p3, v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColors:[I

    aget v0, v1, p3

    .line 408
    .local v0, "color":I
    iput v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColor:I

    .line 409
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/TextPanel;->updateCurrentHighlightColor()V

    .line 411
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public onScrollFinished(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColors:[I

    array-length v1, v1

    if-ge p3, v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColors:[I

    aget v0, v1, p3

    .line 417
    .local v0, "color":I
    iput v0, p0, Lcom/aviary/android/feather/effects/TextPanel;->mColor:I

    .line 418
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/TextPanel;->updateCurrentHighlightColor()V

    .line 420
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public onScrollStarted(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method
