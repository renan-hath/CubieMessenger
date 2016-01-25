.class public Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "AviaryNavBarViewFlipper.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;
    }
.end annotation


# instance fields
.field mButton1:Landroid/widget/Button;

.field mButton2:Landroid/widget/Button;

.field private mButtonSizeChanged:Z

.field mClickable:Z

.field mListener:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;

.field mProgress1:Landroid/widget/ProgressBar;

.field mProgress2:Landroid/widget/ProgressBar;

.field mTextSwitcher:Landroid/widget/TextSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->opened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setDisplayedChild(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public getApplyProgressVisible()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mProgress2:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDoneProgressVisible()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mProgress1:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mClickable:Z

    return v0
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$layout;->aviary_navbar_text:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onFinishInflate()V

    .line 66
    sget v0, Lcom/aviary/android/feather/R$id;->navbar_text2:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 69
    sget v0, Lcom/aviary/android/feather/R$id;->navbar_button1:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton1:Landroid/widget/Button;

    .line 70
    sget v0, Lcom/aviary/android/feather/R$id;->navbar_progress1:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mProgress1:Landroid/widget/ProgressBar;

    .line 73
    sget v0, Lcom/aviary/android/feather/R$id;->navbar_button2:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton2:Landroid/widget/Button;

    .line 74
    sget v0, Lcom/aviary/android/feather/R$id;->navbar_progress2:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mProgress2:Landroid/widget/ProgressBar;

    .line 76
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 78
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton2:Landroid/widget/Button;

    new-instance v1, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$1;-><init>(Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton1:Landroid/widget/Button;

    new-instance v1, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$2;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$2;-><init>(Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 42
    invoke-super/range {p0 .. p5}, Landroid/widget/ViewFlipper;->onLayout(ZIIII)V

    .line 44
    iget-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButtonSizeChanged:Z

    if-nez v3, :cond_2

    .line 45
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    .line 46
    .local v0, "button1Size":I
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    .line 48
    .local v1, "button2Size":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 50
    .local v2, "maxSize":I
    if-eq v0, v2, :cond_0

    .line 51
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton1:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 54
    :cond_0
    if-eq v1, v2, :cond_1

    .line 55
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton2:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 58
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButtonSizeChanged:Z

    .line 60
    .end local v0    # "button1Size":I
    .end local v1    # "button2Size":I
    .end local v2    # "maxSize":I
    :cond_2
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->opened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setDisplayedChild(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public opened()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->getDisplayedChild()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setApplyEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    return-void
.end method

.method public setApplyProgressVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 139
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mProgress2:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setApplyVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 135
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton2:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mClickable:Z

    .line 118
    return-void
.end method

.method public setDoneEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    return-void
.end method

.method public setDoneProgressVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 151
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mProgress1:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOnToolbarClickListener(Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;

    .line 128
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setTitle(IZ)V

    .line 178
    return-void
.end method

.method public setTitle(IZ)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 182
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 160
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 163
    if-nez p2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2}, Landroid/widget/TextSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 165
    .local v0, "inAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2}, Landroid/widget/TextSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 166
    .local v1, "outAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 167
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 170
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 174
    .end local v0    # "inAnimation":Landroid/view/animation/Animation;
    .end local v1    # "outAnimation":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
