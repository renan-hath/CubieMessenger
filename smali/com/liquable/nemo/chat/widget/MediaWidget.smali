.class public Lcom/liquable/nemo/chat/widget/MediaWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "MediaWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;,
        Lcom/liquable/nemo/chat/widget/MediaWidget$Action;
    }
.end annotation


# static fields
.field public static conflictingWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arrowLeft:Landroid/view/View;

.field private final arrowRight:Landroid/view/View;

.field private final buttonLayout:Landroid/widget/LinearLayout;

.field private isRobot:Z

.field private onActionClickListener:Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;

.field private final scrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

.field private showCaseGalleryView:Lcom/liquable/nemo/widget/ShowcaseView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget;->conflictingWidgets:Ljava/util/List;

    .line 54
    sget-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_TEXT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_STICKER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v11, 0x14

    const/4 v10, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->visible:Z

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 73
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f03014c

    invoke-virtual {v4, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 75
    .local v6, "rootView":Landroid/view/View;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->values()[Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v2, "availableActions":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/chat/widget/MediaWidget$Action;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/MediaWidget;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/util/FeatureSupport;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 78
    sget-object v7, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->CAMERA:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    invoke-interface {v2, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/MediaWidget;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/util/FeatureSupport;->isLocationAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 81
    sget-object v7, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->LOCATION:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    invoke-interface {v2, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    const v7, 0x7f080318

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->buttonLayout:Landroid/widget/LinearLayout;

    .line 85
    const v7, 0x7f080319

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->arrowLeft:Landroid/view/View;

    .line 86
    const v7, 0x7f08031a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->arrowRight:Landroid/view/View;

    .line 87
    const v7, 0x7f080317

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    iput-object v7, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->scrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    .line 88
    iget-object v7, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->scrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    new-instance v8, Lcom/liquable/nemo/chat/widget/MediaWidget$1;

    invoke-direct {v8, p0}, Lcom/liquable/nemo/chat/widget/MediaWidget$1;-><init>(Lcom/liquable/nemo/chat/widget/MediaWidget;)V

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->setOnScrollListener(Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;)V

    .line 98
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 99
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 100
    .local v0, "action":Lcom/liquable/nemo/chat/widget/MediaWidget$Action;
    const v7, 0x7f03014d

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 102
    .local v1, "actionBtn":Landroid/widget/ImageButton;
    sget-object v7, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->GALLERY:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    if-ne v0, v7, :cond_2

    .line 103
    const v7, 0x7f08002f

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setId(I)V

    .line 105
    :cond_2
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const/16 v5, 0x14

    .line 110
    .local v5, "padding":I
    invoke-static {p1, v11}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v7

    .line 112
    invoke-static {p1, v11}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v8

    .line 110
    invoke-virtual {v1, v7, v10, v8, v10}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 115
    # getter for: Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->iconRes:I
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->access$100(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 117
    invoke-static {p0, v0, v1}, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/chat/widget/MediaWidget;Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v7, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "action":Lcom/liquable/nemo/chat/widget/MediaWidget$Action;
    .end local v1    # "actionBtn":Landroid/widget/ImageButton;
    .end local v5    # "padding":I
    :cond_3
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p1}, Lcom/liquable/nemo/chat/widget/MediaWidget$$Lambda$2;->lambdaFactory$(Lcom/liquable/nemo/chat/widget/MediaWidget;Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/widget/MediaWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/MediaWidget;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/MediaWidget;->showHideTabArrow()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/chat/widget/MediaWidget;Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/widget/MediaWidget;->lambda$new$26(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/liquable/nemo/chat/widget/MediaWidget;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/widget/MediaWidget;->lambda$new$27(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$new$26(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 2
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 118
    sget-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->GALLERY:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    if-ne p1, v0, :cond_0

    .line 119
    const v0, 0x7f08002f

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setId(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->showCaseGalleryView:Lcom/liquable/nemo/widget/ShowcaseView;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->showCaseGalleryView:Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/ShowcaseView;->hide()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->showCaseGalleryView:Lcom/liquable/nemo/widget/ShowcaseView;

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->onActionClickListener:Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;->onActionClick(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;)V

    .line 126
    return-void
.end method

.method private synthetic lambda$new$27(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    invoke-static {p1}, Lcom/liquable/nemo/util/NemoUIs;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->isRobot:Z

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/MediaWidget;->tryShowCaseGalleryButton()V

    goto :goto_0
.end method

.method private showHideTabArrow()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 188
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->scrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v4}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getMeasuredWidth()I

    move-result v4

    sub-int v0, v1, v4

    .line 189
    .local v0, "scrollWidth":I
    if-gtz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->arrowLeft:Landroid/view/View;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->scrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollX()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->arrowRight:Landroid/view/View;

    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->scrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v4}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollX()I

    move-result v4

    if-ne v4, v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 192
    goto :goto_1

    :cond_2
    move v2, v3

    .line 193
    goto :goto_2
.end method

.method private tryShowCaseGalleryButton()V
    .locals 4

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->isRobot:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isShowCaseGalleryButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->gallery:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->showShowcaseView(Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;)V

    .line 179
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCaseGalleryButton(Z)V

    .line 181
    const v1, 0x7f03016e

    const v2, 0x7f08002f

    .line 183
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/MediaWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v3, 0x3e99999a    # 0.3f

    .line 181
    invoke-static {v1, v2, v0, v3}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(IILandroid/app/Activity;F)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->showCaseGalleryView:Lcom/liquable/nemo/widget/ShowcaseView;

    goto :goto_0
.end method


# virtual methods
.method public isTogglable()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/MediaWidget;->setVisibility(I)V

    .line 147
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onMeasure(II)V

    .line 152
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/MediaWidget;->showHideTabArrow()V

    .line 153
    return-void
.end method

.method protected onOpen(Z)V
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/MediaWidget;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public onSecretModeChanged(Z)V
    .locals 0
    .param p1, "isSecret"    # Z

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/widget/MediaWidget;->updateSecretMode(Z)V

    .line 163
    return-void
.end method

.method public final setOnActionClickListener(Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;)V
    .locals 0
    .param p1, "onActionClickListener"    # Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->onActionClickListener:Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;

    .line 167
    return-void
.end method

.method public setRobot(Z)V
    .locals 0
    .param p1, "isRobot"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->isRobot:Z

    .line 171
    return-void
.end method

.method public updateSecretMode(Z)V
    .locals 8
    .param p1, "isSecret"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 198
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/widget/MediaWidget;->setSelected(Z)V

    .line 200
    invoke-static {}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->values()[Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 201
    .local v0, "action":Lcom/liquable/nemo/chat/widget/MediaWidget$Action;
    iget-object v6, p0, Lcom/liquable/nemo/chat/widget/MediaWidget;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 202
    .local v1, "actionBtn":Landroid/widget/ImageButton;
    if-nez v1, :cond_0

    .line 200
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_0
    if-eqz p1, :cond_2

    .line 207
    # getter for: Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->supportSecret:Z
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->access$200(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 208
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 214
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 218
    .end local v0    # "action":Lcom/liquable/nemo/chat/widget/MediaWidget$Action;
    .end local v1    # "actionBtn":Landroid/widget/ImageButton;
    :cond_3
    return-void
.end method
