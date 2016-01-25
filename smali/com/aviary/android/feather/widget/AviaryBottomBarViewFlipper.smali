.class public Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "AviaryBottomBarViewFlipper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;,
        Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    }
.end annotation


# instance fields
.field private mBottomClickListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;

.field private mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

.field private mLogo:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    return-object v0
.end method


# virtual methods
.method public close()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getDisplayedChild()I

    move-result v3

    if-nez v3, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 104
    .local v0, "inAnimation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    .end local v0    # "inAnimation":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return v1

    .line 110
    .restart local v0    # "inAnimation":Landroid/view/animation/Animation;
    :cond_1
    new-instance v1, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;-><init>(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 129
    :cond_2
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->setDisplayedChild(I)V

    move v1, v2

    .line 130
    goto :goto_0
.end method

.method public getContentPanel()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getToolsListView()Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/aviary/android/feather/R$id;->aviary_tools_listview:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    return-object v0
.end method

.method public hideLogo()V
    .locals 2

    .prologue
    .line 152
    sget v0, Lcom/aviary/android/feather/R$id;->aviary_white_logo:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 160
    .local v0, "id":I
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mBottomClickListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mBottomClickListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;

    invoke-interface {v1, v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;->onBottomBarItemClick(I)V

    .line 164
    .end local v0    # "id":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/aviary/android/feather/R$id;->aviary_white_logo:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mLogo:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mLogo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onFinishInflate()V

    .line 51
    return-void
.end method

.method public open()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getDisplayedChild()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 67
    .local v0, "inAnimation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    .end local v0    # "inAnimation":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return v1

    .line 73
    .restart local v0    # "inAnimation":Landroid/view/animation/Animation;
    :cond_1
    new-instance v3, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;-><init>(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    :cond_2
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->setDisplayedChild(I)V

    move v1, v2

    .line 93
    goto :goto_0
.end method

.method public setOnBottomBarItemClickListener(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mBottomClickListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;

    .line 59
    return-void
.end method

.method public setOnViewChangingStatusListener(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    .line 55
    return-void
.end method
