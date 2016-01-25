.class public Lcom/aviary/android/feather/widget/EffectThumbLayout;
.super Landroid/widget/RelativeLayout;
.source "EffectThumbLayout.java"


# instance fields
.field private mHiddenView:Landroid/view/View;

.field private mImageView:Landroid/view/View;

.field private mOpened:Z

.field private mThumbAnimationDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget v0, Lcom/aviary/android/feather/R$attr;->aviaryEffectThumbLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/EffectThumbLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/EffectThumbLayout;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/widget/EffectThumbLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/EffectThumbLayout;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/widget/EffectThumbLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/EffectThumbLayout;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    return v0
.end method

.method static synthetic access$202(Lcom/aviary/android/feather/widget/EffectThumbLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/EffectThumbLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 29
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    sget-object v2, Lcom/aviary/android/feather/R$styleable;->AviaryEffectThumbLayout:[I

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "array":Landroid/content/res/TypedArray;
    const/16 v2, 0x64

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mThumbAnimationDuration:I

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method


# virtual methods
.method protected animateView(IZ)V
    .locals 11
    .param p1, "durationMs"    # I
    .param p2, "isClosing"    # Z

    .prologue
    const/4 v8, 0x0

    .line 139
    if-nez p2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mImageView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 145
    .local v8, "is_valid":Z
    :cond_1
    if-nez v8, :cond_3

    .line 193
    :cond_2
    :goto_0
    return-void

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_4

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->postAnimateView(IZ)V

    .line 151
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 152
    .local v3, "startTime":J
    const/4 v9, 0x0

    .line 153
    .local v9, "startHeight":F
    if-eqz p2, :cond_5

    const/4 v6, 0x0

    .line 155
    .local v6, "endHeight":F
    :goto_1
    new-instance v5, Lit/sephiroth/android/library/imagezoom/easing/Linear;

    invoke-direct {v5}, Lit/sephiroth/android/library/imagezoom/easing/Linear;-><init>()V

    .line 157
    .local v5, "easing":Lit/sephiroth/android/library/imagezoom/easing/Easing;
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;

    move-object v1, p0

    move v2, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;-><init>(Lcom/aviary/android/feather/widget/EffectThumbLayout;IJLit/sephiroth/android/library/imagezoom/easing/Easing;FZ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 153
    .end local v5    # "easing":Lit/sephiroth/android/library/imagezoom/easing/Easing;
    .end local v6    # "endHeight":F
    :cond_5
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v6, v0

    goto :goto_1
.end method

.method close()V
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mThumbAnimationDuration:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->animateView(IZ)V

    .line 61
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 119
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    .line 120
    sget v0, Lcom/aviary/android/feather/R$id;->aviary_hidden:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    .line 121
    sget v0, Lcom/aviary/android/feather/R$id;->aviary_image:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mImageView:Landroid/view/View;

    .line 122
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->setIsOpened(Z)V

    .line 123
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 112
    iput-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    .line 113
    iput-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mImageView:Landroid/view/View;

    .line 114
    return-void
.end method

.method open()V
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mThumbAnimationDuration:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->animateView(IZ)V

    .line 57
    return-void
.end method

.method protected postAnimateView(IZ)V
    .locals 2
    .param p1, "durationMs"    # I
    .param p2, "isClosing"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/widget/EffectThumbLayout$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/aviary/android/feather/widget/EffectThumbLayout$2;-><init>(Lcom/aviary/android/feather/widget/EffectThumbLayout;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_0
    return-void
.end method

.method protected postSetIsOpened(Z)V
    .locals 7
    .param p1, "opened"    # Z

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v3, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/aviary/android/feather/widget/EffectThumbLayout$1;

    invoke-direct {v4, p0, p1}, Lcom/aviary/android/feather/widget/EffectThumbLayout$1;-><init>(Lcom/aviary/android/feather/widget/EffectThumbLayout;Z)V

    const-wide/16 v5, 0xa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 91
    :cond_2
    iget-object v5, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "shouldApplyLayoutParams":Z
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int v2, v3, v4

    .line 96
    .local v2, "targetBottomMargin":I
    :goto_2
    iget-object v3, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mImageView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq v3, v2, :cond_3

    .line 99
    const/4 v1, 0x1

    .line 100
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 103
    :cond_3
    if-eqz v1, :cond_0

    .line 104
    iget-object v3, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mImageView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->requestLayout()V

    goto :goto_0

    .line 91
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "shouldApplyLayoutParams":Z
    .end local v2    # "targetBottomMargin":I
    :cond_4
    const/4 v3, 0x4

    goto :goto_1

    .restart local v1    # "shouldApplyLayoutParams":Z
    :cond_5
    move v2, v4

    .line 94
    goto :goto_2
.end method

.method setIsOpened(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    .line 67
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->postSetIsOpened(Z)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    .line 41
    .local v0, "animate":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 44
    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->open()V

    .line 53
    :goto_1
    return-void

    .line 40
    .end local v0    # "animate":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    .restart local v0    # "animate":Z
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->close()V

    goto :goto_1

    .line 50
    :cond_2
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z

    goto :goto_1
.end method
