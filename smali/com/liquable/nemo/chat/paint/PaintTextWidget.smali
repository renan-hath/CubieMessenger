.class public Lcom/liquable/nemo/chat/paint/PaintTextWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "PaintTextWidget.java"


# instance fields
.field private editBubbleLayout:Landroid/widget/RelativeLayout;

.field private editPaintText:Landroid/widget/EditText;

.field private lastYInDp:I

.field private onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintTextProperty;",
            ">;"
        }
    .end annotation
.end field

.field private onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintTextProperty;",
            ">;"
        }
    .end annotation
.end field

.field private onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintTextProperty;",
            ">;"
        }
    .end annotation
.end field

.field private property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintTextWidget$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget$1;-><init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 35
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintTextWidget$2;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget$2;-><init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 42
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintTextWidget$3;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget$3;-><init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 49
    const/high16 v5, -0x80000000

    iput v5, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->lastYInDp:I

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->getLayoutResId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "rootView":Landroid/view/View;
    const v5, 0x7f08032c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editBubbleLayout:Landroid/widget/RelativeLayout;

    .line 57
    const v5, 0x7f08032d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;

    .line 59
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;

    const/4 v6, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getTextSizePixel(Landroid/content/Context;)F

    move-result v7

    .line 59
    invoke-virtual {v5, v6, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 62
    const v5, 0x7f080325

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 63
    .local v3, "saveBtn":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;-><init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v5, 0x7f0801f8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "deleteBtn":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintTextWidget$5;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget$5;-><init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v5, 0x7f080062

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "cancelBtn":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintTextWidget$6;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget$6;-><init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v5, 0x7f08032e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, "styleBtn":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintTextWidget$7;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget$7;-><init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    return-object v0
.end method

.method static synthetic access$102(Lcom/liquable/nemo/chat/paint/PaintTextWidget;Lcom/liquable/nemo/chat/paint/PaintTextProperty;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;
    .param p1, "x1"    # Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    return-object p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->resetBubbleLayoutToWorkaroundIncorrectPaddingInSetProperty()V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editBubbleLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private resetBubbleLayoutToWorkaroundIncorrectPaddingInSetProperty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editBubbleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 171
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editBubbleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 172
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f030157

    return v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 129
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->lastYInDp:I

    .line 130
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->setVisibility(I)V

    .line 131
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v0

    .line 140
    .local v0, "yInDp":I
    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->lastYInDp:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    if-gtz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->lastYInDp:I

    .line 153
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onMeasure(II)V

    .line 154
    return-void

    .line 146
    :cond_1
    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->lastYInDp:I

    sub-int v1, v0, v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/chat/paint/OnPropertyListener;->onProperty(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onOpen(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintTextWidget$8;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget$8;-><init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public setOnCancelListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintTextProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "onCancelListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintTextProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 176
    return-void
.end method

.method public setOnDeleteListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintTextProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "onDeleteListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintTextProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 180
    return-void
.end method

.method public setOnSaveListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintTextProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "onSaveListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintTextProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 184
    return-void
.end method

.method public setProperty(Lcom/liquable/nemo/chat/paint/PaintTextProperty;)V
    .locals 2
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .line 193
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 200
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintBubbleStyle()Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editBubbleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->apply(Landroid/view/View;)V

    .line 201
    return-void
.end method
