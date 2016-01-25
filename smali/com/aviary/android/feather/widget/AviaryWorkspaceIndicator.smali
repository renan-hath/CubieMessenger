.class public Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;
.super Landroid/widget/LinearLayout;
.source "AviaryWorkspaceIndicator.java"


# instance fields
.field mResHeight:I

.field mResId:I

.field mResWidth:I

.field mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResWidth:I

    .line 18
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResHeight:I

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 27
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    sget-object v3, Lcom/aviary/android/feather/R$styleable;->AviaryWorkspaceIndicator:[I

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->setOrientation(I)V

    .line 30
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResId:I

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResId:I

    if-lez v3, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 36
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResWidth:I

    .line 37
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResHeight:I

    .line 40
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 44
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 45
    return-void
.end method

.method resetView(I)V
    .locals 9
    .param p1, "count"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->removeAllViews()V

    .line 50
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResId:I

    if-eqz v5, :cond_2

    if-lez p1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->getHeight()I

    move-result v0

    .line 54
    .local v0, "h":I
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResWidth:I

    if-lez v5, :cond_1

    .line 55
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResHeight:I

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 56
    .local v3, "ratio":F
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResHeight:I

    if-le v5, v0, :cond_0

    .line 57
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResHeight:I

    .line 58
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResWidth:I

    .line 65
    .end local v3    # "ratio":F
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 66
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v4, "v":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResWidth:I

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResHeight:I

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 71
    invoke-virtual {v4, v8, v7, v8, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 72
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->addView(Landroid/view/View;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v1    # "i":I
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "v":Landroid/widget/ImageView;
    :cond_1
    const/4 v5, -0x2

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResWidth:I

    .line 62
    const/4 v5, -0x1

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mResHeight:I

    goto :goto_0

    .line 76
    .end local v0    # "h":I
    :cond_2
    return-void
.end method

.method public setLevel(II)V
    .locals 2
    .param p1, "mCurrentScreen"    # I
    .param p2, "mItemCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->getChildCount()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 81
    invoke-virtual {p0, p2}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->resetView(I)V

    .line 82
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mSelected:I

    .line 85
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 86
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mSelected:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 88
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->mSelected:I

    .line 90
    :cond_1
    return-void
.end method
