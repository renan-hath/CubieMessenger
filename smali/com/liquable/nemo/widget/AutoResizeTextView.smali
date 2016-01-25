.class public Lcom/liquable/nemo/widget/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;
    }
.end annotation


# static fields
.field private static final NO_LINE_LIMIT:I = -0x1


# instance fields
.field private mAvailableSpaceRect:Landroid/graphics/RectF;

.field private mEnableSizeCache:Z

.field private mInitiallized:Z

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mPaint:Landroid/text/TextPaint;

.field private final mSizeTester:Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextCachedSizes:Landroid/util/SparseIntArray;

.field private final mTextRect:Landroid/graphics/RectF;

.field private mWidthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingMult:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingAdd:F

    .line 71
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMinTextSize:F

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mEnableSizeCache:Z

    .line 81
    new-instance v0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/widget/AutoResizeTextView$1;-><init>(Lcom/liquable/nemo/widget/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSizeTester:Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;

    .line 126
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->initialize()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingMult:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingAdd:F

    .line 71
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMinTextSize:F

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mEnableSizeCache:Z

    .line 81
    new-instance v0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/widget/AutoResizeTextView$1;-><init>(Lcom/liquable/nemo/widget/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSizeTester:Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;

    .line 131
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->initialize()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingMult:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingAdd:F

    .line 71
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMinTextSize:F

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mEnableSizeCache:Z

    .line 81
    new-instance v0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/widget/AutoResizeTextView$1;-><init>(Lcom/liquable/nemo/widget/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSizeTester:Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;

    .line 136
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->initialize()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/AutoResizeTextView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/AutoResizeTextView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/widget/AutoResizeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/AutoResizeTextView;

    .prologue
    .line 16
    iget v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mWidthLimit:I

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/widget/AutoResizeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/AutoResizeTextView;

    .prologue
    .line 16
    iget v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingMult:F

    return v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/widget/AutoResizeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/AutoResizeTextView;

    .prologue
    .line 16
    iget v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingAdd:F

    return v0
.end method

.method private adjustTextSize()V
    .locals 6

    .prologue
    .line 140
    iget-boolean v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mInitiallized:Z

    if-nez v2, :cond_0

    .line 150
    :goto_0
    return-void

    .line 143
    :cond_0
    iget v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMinTextSize:F

    float-to-int v1, v2

    .line 144
    .local v1, "startSize":I
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 145
    .local v0, "heightLimit":I
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mWidthLimit:I

    .line 146
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mWidthLimit:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 147
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 148
    const/4 v2, 0x0

    iget v3, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxTextSize:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSizeTester:Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;

    iget-object v5, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    .line 149
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/liquable/nemo/widget/AutoResizeTextView;->efficientTextSizeSearch(IILcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v3

    int-to-float v3, v3

    .line 148
    invoke-super {p0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private static binarySearch(IILcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 6
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "sizeTester"    # Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;
    .param p3, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    .line 34
    move v1, p0

    .line 35
    .local v1, "lastBest":I
    move v2, p0

    .line 36
    .local v2, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 37
    .local v0, "hi":I
    const/4 v3, 0x0

    .line 38
    .local v3, "mid":I
    :goto_0
    if-gt v2, v0, :cond_2

    .line 39
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 40
    invoke-interface {p2, v3, p3}, Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;->onTestSize(ILandroid/graphics/RectF;)I

    move-result v4

    .line 41
    .local v4, "midValCmp":I
    if-gez v4, :cond_0

    .line 42
    move v1, v2

    .line 43
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 44
    :cond_0
    if-lez v4, :cond_1

    .line 45
    add-int/lit8 v0, v3, -0x1

    .line 46
    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 53
    .end local v1    # "lastBest":I
    .end local v4    # "midValCmp":I
    :cond_2
    return v1
.end method

.method private efficientTextSizeSearch(IILcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "sizeTester"    # Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;
    .param p4, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    .line 156
    iget-boolean v3, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mEnableSizeCache:Z

    if-nez v3, :cond_1

    .line 157
    invoke-static {p1, p2, p3, p4}, Lcom/liquable/nemo/widget/AutoResizeTextView;->binarySearch(IILcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "text":Ljava/lang/String;
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 161
    .local v0, "key":I
    :goto_1
    iget-object v3, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 162
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 165
    invoke-static {p1, p2, p3, p4}, Lcom/liquable/nemo/widget/AutoResizeTextView;->binarySearch(IILcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v1

    .line 166
    iget-object v3, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 160
    .end local v0    # "key":I
    .end local v1    # "size":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;

    .line 191
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxTextSize:F

    .line 192
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    .line 193
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    .line 194
    iget v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxLines:I

    if-nez v0, :cond_0

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxLines:I

    .line 198
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mInitiallized:Z

    .line 199
    return-void
.end method

.method private reAdjust()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->adjustTextSize()V

    .line 224
    return-void
.end method


# virtual methods
.method public enableSizeCache(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mEnableSizeCache:Z

    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 181
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->adjustTextSize()V

    .line 182
    return-void
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxLines:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldwidth"    # I
    .param p4, "oldheight"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 208
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->reAdjust()V

    .line 211
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 219
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->reAdjust()V

    .line 220
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 236
    iput p2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingMult:F

    .line 237
    iput p1, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingAdd:F

    .line 238
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 229
    iput p1, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxLines:I

    .line 230
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->reAdjust()V

    .line 231
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxlines"    # I

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 243
    iput p1, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxLines:I

    .line 244
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->reAdjust()V

    .line 245
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .param p1, "minTextSize"    # F

    .prologue
    .line 253
    iput p1, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMinTextSize:F

    .line 254
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->reAdjust()V

    .line 255
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 260
    const/4 v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxLines:I

    .line 261
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->reAdjust()V

    .line 262
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 267
    if-eqz p1, :cond_0

    .line 268
    const/4 v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxLines:I

    .line 272
    :goto_0
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->reAdjust()V

    .line 273
    return-void

    .line 270
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxLines:I

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 278
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->adjustTextSize()V

    .line 279
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 283
    iput p1, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxTextSize:F

    .line 284
    iget-object v0, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 285
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->adjustTextSize()V

    .line 286
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 294
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 298
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mMaxTextSize:F

    .line 299
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 300
    invoke-direct {p0}, Lcom/liquable/nemo/widget/AutoResizeTextView;->adjustTextSize()V

    .line 301
    return-void

    .line 296
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method
