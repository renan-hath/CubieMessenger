.class public Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "ColorSelectorWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$OnColorSelectedListener;
    }
.end annotation


# instance fields
.field private final colorBtnLayout:Landroid/widget/LinearLayout;

.field private final colorToButtonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private currentColor:I

.field private final horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

.field private onColorSelectedListener:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$OnColorSelectedListener;

.field private final rootView:Landroid/view/View;

.field private final tabArrowLeft:Landroid/view/View;

.field private final tabArrowRight:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorToButtonMap:Ljava/util/Map;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030133

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->rootView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->rootView:Landroid/view/View;

    const v1, 0x7f0802ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorBtnLayout:Landroid/widget/LinearLayout;

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->rootView:Landroid/view/View;

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->tabArrowLeft:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->rootView:Landroid/view/View;

    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->tabArrowRight:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->rootView:Landroid/view/View;

    const v1, 0x7f0802ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    new-instance v1, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$1;-><init>(Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->setOnScrollListener(Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;)V

    .line 51
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->initColorBtns()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->showHideTabArrow()V

    return-void
.end method

.method private initColorBtns()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    .line 59
    invoke-static {}, Lcom/liquable/nemo/chat/paint/BrushColorUtils;->getColors()Ljava/util/Map;

    move-result-object v2

    .line 61
    .local v2, "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 62
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 64
    .local v5, "resId":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    .local v0, "color":I
    const v6, 0x7f030132

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 67
    .local v1, "colorBtn":Landroid/widget/ImageButton;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {v1, v11, v10, v11, v10}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 70
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 72
    new-instance v6, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$2;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$2;-><init>(Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v6, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    iget-object v6, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorToButtonMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v0    # "color":I
    .end local v1    # "colorBtn":Landroid/widget/ImageButton;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "resId":I
    :cond_0
    return-void
.end method

.method private showHideTabArrow()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 116
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v4}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getMeasuredWidth()I

    move-result v4

    sub-int v0, v1, v4

    .line 117
    .local v0, "scrollWidth":I
    if-gtz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->tabArrowLeft:Landroid/view/View;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollX()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->tabArrowRight:Landroid/view/View;

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v4}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollX()I

    move-result v4

    if-ne v4, v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 120
    goto :goto_1

    :cond_2
    move v2, v3

    .line 121
    goto :goto_2
.end method


# virtual methods
.method public final getCurrentColor()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->currentColor:I

    return v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->setVisibility(I)V

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onMeasure(II)V

    .line 91
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->showHideTabArrow()V

    .line 92
    return-void
.end method

.method protected onOpen(Z)V
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->setVisibility(I)V

    .line 98
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorToButtonMap:Ljava/util/Map;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->currentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorToButtonMap:Ljava/util/Map;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->currentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 104
    :cond_0
    iput p1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->currentColor:I

    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorToButtonMap:Ljava/util/Map;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->currentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorToButtonMap:Ljava/util/Map;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->currentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->onColorSelectedListener:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$OnColorSelectedListener;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$OnColorSelectedListener;->onColorSelected(I)V

    .line 109
    :cond_1
    return-void
.end method

.method public final setOnColorSelectedListener(Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$OnColorSelectedListener;)V
    .locals 0
    .param p1, "onColorSelectedListener"    # Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$OnColorSelectedListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->onColorSelectedListener:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$OnColorSelectedListener;

    .line 113
    return-void
.end method

.method public updateSecretMode(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 127
    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->rootView:Landroid/view/View;

    const v1, 0x7f0204ea

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorToButtonMap:Ljava/util/Map;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->currentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->colorToButtonMap:Ljava/util/Map;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->currentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 136
    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->rootView:Landroid/view/View;

    const v1, 0x7f0204e9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
