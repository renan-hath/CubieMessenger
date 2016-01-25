.class public Lcom/liquable/nemo/chat/paint/PaintWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "PaintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;,
        Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;,
        Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;,
        Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;,
        Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;,
        Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;
    }
.end annotation


# instance fields
.field private brushBtn:Landroid/widget/ImageButton;

.field private clearBtn:Landroid/widget/ImageButton;

.field private closeBtn:Landroid/widget/ImageButton;

.field private colorSelectorWidget:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

.field private decorationBtn:Landroid/widget/ImageButton;

.field private eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

.field private eraserBrushsOnActionItem:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

.field private eraserBtn:Landroid/widget/ImageButton;

.field protected hasPaintViewInited:Z

.field protected modeHint:Landroid/widget/TextView;

.field private onOpenEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;

.field private onPaintDrawingListener:Ljava/lang/Runnable;

.field private onPictureBtnClicked:Landroid/view/View$OnClickListener;

.field onSendBtnClicked:Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;

.field private onSwitchWidget:Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;

.field private paintBrushOnActionItem:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

.field private paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

.field private paintEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

.field private paintStickerWidget:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

.field private paintTextWidget:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

.field protected final paintView:Lcom/liquable/nemo/chat/paint/PaintView;

.field protected paintWidgetBottom:Landroid/view/View;

.field private pictureBtn:Landroid/widget/ImageButton;

.field protected secretMaskView:Lcom/liquable/nemo/chat/paint/SecretMaskView;

.field private sendBtn:Landroid/widget/ImageButton;

.field private targetHeight:I

.field private targetWidth:I

.field private undoBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintWidget$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$1;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onSwitchWidget:Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;

    .line 159
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintWidget$2;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$2;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onPaintDrawingListener:Ljava/lang/Runnable;

    .line 172
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getLayoutResId()I

    move-result v6

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 174
    const v5, 0x7f080331

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/chat/paint/PaintView;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    .line 175
    const v5, 0x7f080332

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/chat/paint/SecretMaskView;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->secretMaskView:Lcom/liquable/nemo/chat/paint/SecretMaskView;

    .line 177
    const v5, 0x7f080333

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->modeHint:Landroid/widget/TextView;

    .line 179
    const v5, 0x7f080334

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintWidgetBottom:Landroid/view/View;

    .line 181
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getWindowSize()Landroid/util/Pair;

    move-result-object v3

    .line 182
    .local v3, "windowSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 183
    .local v4, "windowWidth":I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    .local v2, "windowHeight":I
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v5}, Lcom/liquable/nemo/chat/paint/PaintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 185
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    iput v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->targetHeight:I

    .line 188
    iput v4, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->targetWidth:I

    .line 189
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintWidget;->initQuickAction(Landroid/content/Context;)V

    .line 191
    const v5, 0x7f080339

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBtn:Landroid/widget/ImageButton;

    .line 192
    const v5, 0x7f08033a

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->decorationBtn:Landroid/widget/ImageButton;

    .line 193
    const v5, 0x7f080338

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->brushBtn:Landroid/widget/ImageButton;

    .line 195
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->decorationBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintWidget$3;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$3;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintWidget$4;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$4;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->brushBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintWidget$5;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$5;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v5, 0x7f08033b

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->pictureBtn:Landroid/widget/ImageButton;

    .line 227
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->pictureBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintWidget$6;

    invoke-direct {v6, p0, p1}, Lcom/liquable/nemo/chat/paint/PaintWidget$6;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v5, 0x7f080337

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->undoBtn:Landroid/widget/ImageButton;

    .line 240
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->undoBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintWidget$7;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$7;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v5, 0x7f080335

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->closeBtn:Landroid/widget/ImageButton;

    .line 250
    const v5, 0x7f080336

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->clearBtn:Landroid/widget/ImageButton;

    .line 251
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->clearBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintWidget$8;

    invoke-direct {v6, p0, p1}, Lcom/liquable/nemo/chat/paint/PaintWidget$8;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;Lcom/liquable/nemo/chat/paint/PaintWidget$1;)V

    .line 276
    .local v0, "onPaintChangedListener":Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;
    const v5, 0x7f08012c

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->sendBtn:Landroid/widget/ImageButton;

    .line 277
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->sendBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintWidget$9;

    invoke-direct {v6, p0, v0}, Lcom/liquable/nemo/chat/paint/PaintWidget$9;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->refreshButtonsState()V

    .line 299
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v5, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->setOnPaintChangedListener(Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;)V

    .line 301
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintWidget$10;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$10;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/chat/paint/PaintView;->setOnPrepareCreatingDecorationListener(Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;)V

    .line 309
    const v5, 0x7f080330

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/paint/PaintWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->colorSelectorWidget:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    .line 310
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->colorSelectorWidget:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintWidget$11;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$11;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->setOnColorSelectedListener(Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$OnColorSelectedListener;)V

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/paint/PaintWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->refreshButtonsState()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/paint/PaintWidget;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onPaintDrawingListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/chat/paint/PaintWidget;)Lcom/liquable/nemo/chat/paint/PaintTextWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintTextWidget:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/paint/PaintWidget;)Lnet/londatiga/android/BrushsQuickAction;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/paint/PaintWidget;)Lnet/londatiga/android/BrushsQuickAction;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/paint/PaintWidget;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onPictureBtnClicked:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/paint/PaintWidget;)Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onOpenEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/paint/PaintWidget;)Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/paint/PaintWidget;)Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onSwitchWidget:Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/chat/paint/PaintWidget;)Lcom/liquable/nemo/chat/paint/PaintStickerWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintStickerWidget:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    return-object v0
.end method

.method private buildPaintEmojiWidget()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$12;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$12;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->setOnEditPaintEmojiListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 330
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$13;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$13;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->setOnSaveListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 339
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$14;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$14;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->setOnDeleteListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 348
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$15;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$15;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->setOnCancelListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 355
    return-void
.end method

.method private buildPaintStickerWidget()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$16;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$16;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->setOnEditPaintStickerListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 367
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintStickerWidget:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$17;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$17;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->setOnSaveListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 376
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintStickerWidget:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$18;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$18;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->setOnDeleteListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 385
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintStickerWidget:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$19;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$19;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->setOnCancelListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 392
    return-void
.end method

.method private buildPaintTextWidget()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$20;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$20;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->setOnSelectPaintTextListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 404
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintTextWidget:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$21;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$21;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->setOnSaveListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 413
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintTextWidget:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$22;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$22;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->setOnDeleteListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 422
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintTextWidget:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$23;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$23;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->setOnCancelListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V

    .line 429
    return-void
.end method

.method private closeAction()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    invoke-virtual {v0}, Lnet/londatiga/android/BrushsQuickAction;->dismiss()V

    .line 438
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    invoke-virtual {v0}, Lnet/londatiga/android/BrushsQuickAction;->dismiss()V

    .line 439
    return-void
.end method

.method private getTargetHeight()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->targetHeight:I

    return v0
.end method

.method private getTargetWidth()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->targetWidth:I

    return v0
.end method

.method public static getTempPictureFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    const-string/jumbo v1, "temp-picture.png"

    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/PictureMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 102
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private initQuickAction(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 528
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintWidget$24;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$24;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushOnActionItem:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

    .line 535
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintWidget$25;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$25;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsOnActionItem:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

    .line 542
    return-void
.end method

.method private refreshButtonsState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 623
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    sget-object v4, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->ERASER:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/paint/PaintView;->isPaintMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 624
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->brushBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    sget-object v4, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->BRUSH:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/paint/PaintView;->isPaintMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 625
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->decorationBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    sget-object v4, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->DECORATION:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/paint/PaintView;->isPaintMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 626
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView;->isBlank()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 627
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->sendBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintView;->isBlank()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 628
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->clearBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintView;->hasAnyItem()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->undoBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintView;->hasAnyItem()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    sget-object v1, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->DECORATION:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->isPaintMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView;->hasDecoration()Z

    move-result v0

    if-nez v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->modeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 626
    goto :goto_0

    :cond_1
    move v1, v2

    .line 627
    goto :goto_1

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->modeHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateQuickAction(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSecret"    # Z

    .prologue
    const/4 v1, 0x2

    .line 671
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    invoke-virtual {v2}, Lnet/londatiga/android/BrushsQuickAction;->isSecret()Z

    move-result v2

    if-eq v2, p2, :cond_1

    .line 672
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    if-nez v2, :cond_4

    move v0, v1

    .line 674
    .local v0, "selectedIndex":I
    :goto_0
    new-instance v2, Lnet/londatiga/android/BrushsQuickAction;

    invoke-direct {v2, p1, p2}, Lnet/londatiga/android/BrushsQuickAction;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    .line 675
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushOnActionItem:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

    invoke-virtual {v2, v3}, Lnet/londatiga/android/BrushsQuickAction;->setOnActionItemClickListener(Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;)V

    .line 676
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    invoke-virtual {v2, v0}, Lnet/londatiga/android/BrushsQuickAction;->setSelectedAction(I)V

    .line 680
    .end local v0    # "selectedIndex":I
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    invoke-virtual {v2}, Lnet/londatiga/android/BrushsQuickAction;->isSecret()Z

    move-result v2

    if-eq v2, p2, :cond_3

    .line 681
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    if-nez v2, :cond_5

    move v0, v1

    .line 683
    .restart local v0    # "selectedIndex":I
    :goto_1
    new-instance v1, Lnet/londatiga/android/BrushsQuickAction;

    invoke-direct {v1, p1, p2}, Lnet/londatiga/android/BrushsQuickAction;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    .line 684
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsOnActionItem:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

    invoke-virtual {v1, v2}, Lnet/londatiga/android/BrushsQuickAction;->setOnActionItemClickListener(Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;)V

    .line 685
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    invoke-virtual {v1, v0}, Lnet/londatiga/android/BrushsQuickAction;->setSelectedAction(I)V

    .line 687
    .end local v0    # "selectedIndex":I
    :cond_3
    return-void

    .line 672
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    .line 673
    invoke-virtual {v2}, Lnet/londatiga/android/BrushsQuickAction;->getSelectedActionIndex()I

    move-result v0

    goto :goto_0

    .line 681
    :cond_5
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBrushsAction:Lnet/londatiga/android/BrushsQuickAction;

    .line 682
    invoke-virtual {v1}, Lnet/londatiga/android/BrushsQuickAction;->getSelectedActionIndex()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView;->clear()V

    .line 433
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->refreshButtonsState()V

    .line 434
    return-void
.end method

.method public completeCreateEmoji(Ljava/lang/String;Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V
    .locals 1
    .param p1, "emojiCode"    # Ljava/lang/String;
    .param p2, "property"    # Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/chat/paint/PaintView;->completeCreateEmoji(Ljava/lang/String;Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V

    .line 443
    return-void
.end method

.method public completeCreateSticker(Ljava/lang/String;Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)Z
    .locals 7
    .param p1, "stickerCode"    # Ljava/lang/String;
    .param p2, "property"    # Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 447
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v6, p1, v5}, Lcom/liquable/nemo/sticker/model/StickerManager;->findVisibleSticker(Ljava/lang/String;Z)Lcom/liquable/nemo/sticker/model/VisibleSticker;

    move-result-object v3

    .line 449
    .local v3, "visibleSticker":Lcom/liquable/nemo/sticker/model/VisibleSticker;
    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/VisibleSticker;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v2

    .line 450
    .local v2, "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/VisibleSticker;->isFound()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d04b5

    invoke-static {v5, v6}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 466
    :goto_0
    return v4

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 457
    .local v1, "density":F
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v6, v2, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerBitmaps(Lcom/liquable/nemo/model/sticker/StickerDto;F)Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d04c7

    invoke-static {v5, v6}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 461
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v5, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadSticker(Lcom/liquable/nemo/model/sticker/StickerDto;)V

    goto :goto_0

    .line 465
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v4, v2, p2}, Lcom/liquable/nemo/chat/paint/PaintView;->completeCreateSticker(Lcom/liquable/nemo/model/sticker/StickerDto;Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V

    move v4, v5

    .line 466
    goto :goto_0
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 470
    const v0, 0x7f03015a

    return v0
.end method

.method public getPaintBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView;->takeSnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getPaintTextWidget()Lcom/liquable/nemo/chat/paint/PaintTextWidget;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintTextWidget:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    return-object v0
.end method

.method protected getWindowSize()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 491
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    .line 490
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 492
    .local v2, "windowWidth":I
    const/high16 v3, 0x44200000    # 640.0f

    int-to-float v4, v2

    div-float v0, v3, v4

    .line 493
    .local v0, "ratio":F
    const/high16 v3, 0x43f00000    # 480.0f

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 494
    .local v1, "windowHeight":I
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public initPaintEmojiWidget(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V
    .locals 0
    .param p1, "paintEmojiWidget"    # Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .line 499
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->buildPaintEmojiWidget()V

    .line 500
    return-void
.end method

.method public initPaintStickerWidget(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V
    .locals 0
    .param p1, "paintStickerWidget"    # Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintStickerWidget:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    .line 504
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->buildPaintStickerWidget()V

    .line 505
    return-void
.end method

.method public initPaintTextWidget(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V
    .locals 0
    .param p1, "paintTextWidget"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintTextWidget:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .line 517
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->buildPaintTextWidget()V

    .line 518
    return-void
.end method

.method protected initPaintView()V
    .locals 4

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getWindowSize()Landroid/util/Pair;

    move-result-object v1

    .line 522
    .local v1, "windowSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 523
    .local v2, "windowWidth":I
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 524
    .local v0, "windowHeight":I
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v3, v2, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->initPaint(II)V

    .line 525
    return-void
.end method

.method public isPastable()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView;->isPastable()Z

    move-result v0

    return v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 550
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->colorSelectorWidget:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->close()V

    .line 552
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->closeAction()V

    .line 553
    return-void
.end method

.method protected onOpen(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 557
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 558
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->hasPaintViewInited:Z

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->hasPaintViewInited:Z

    .line 560
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->initPaintView()V

    .line 561
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->colorSelectorWidget:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->setColor(I)V

    .line 563
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->colorSelectorWidget:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->open(Z)V

    .line 565
    return-void
.end method

.method public paste(Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 569
    const/4 v3, 0x0

    .line 570
    .local v3, "isJpgFile":Z
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "filePath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 572
    const/4 v3, 0x1

    .line 574
    :cond_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 576
    .local v1, "decodeFile":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 577
    const/4 v4, 0x0

    .line 594
    :goto_0
    return v4

    .line 580
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getTargetWidth()I

    move-result v5

    .line 581
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getTargetHeight()I

    move-result v6

    .line 579
    invoke-static {v1, v5, v6, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 584
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 586
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v5, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->pastePicture(Landroid/graphics/Bitmap;)V

    .line 592
    :goto_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6, p3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->pasteToDrawingBoard(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v5, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->paste(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public pastePicture(Ljava/lang/String;)Z
    .locals 6
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 604
    invoke-static {}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getTempPictureFile()Ljava/io/File;

    move-result-object v2

    .line 605
    .local v2, "tempPictureFile":Ljava/io/File;
    if-nez v2, :cond_0

    .line 606
    const/4 v3, 0x0

    .line 619
    :goto_0
    return v3

    .line 609
    :cond_0
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v4, v2, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->savePictureImageAsJpeg(Ljava/io/File;Ljava/io/File;)Z

    .line 610
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 612
    .local v1, "decodeBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getTargetWidth()I

    move-result v4

    .line 613
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getTargetHeight()I

    move-result v5

    .line 611
    invoke-static {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 615
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->pastePicture(Landroid/graphics/Bitmap;)V

    .line 617
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v4

    const-class v5, Lcom/liquable/nemo/message/model/PictureMessage;

    invoke-interface {v4, v5, p1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->pasteToDrawingBoard(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnCloseButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    return-void
.end method

.method public setOnOpenEmojiWidget(Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;)V
    .locals 0
    .param p1, "onOpenEmojiWidget"    # Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onOpenEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;

    .line 645
    return-void
.end method

.method public setOnPaintDrawingListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onPaintDrawingListener"    # Ljava/lang/Runnable;

    .prologue
    .line 648
    if-eqz p1, :cond_0

    .line 649
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onPaintDrawingListener:Ljava/lang/Runnable;

    .line 651
    :cond_0
    return-void
.end method

.method public setOnPictureBtnClicked(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onPictureBtnClicked"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->pictureBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 660
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->pictureBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 658
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onPictureBtnClicked:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public setOnSendBtnClicked(Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;)V
    .locals 0
    .param p1, "onSendBtnClicked"    # Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onSendBtnClicked:Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;

    .line 664
    return-void
.end method

.method public setOnSwitchWidget(Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;)V
    .locals 0
    .param p1, "onSwitchWidget"    # Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onSwitchWidget:Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;

    .line 668
    return-void
.end method

.method public updateSecretMode(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 691
    if-eqz p1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintWidgetBottom:Landroid/view/View;

    const v1, 0x7f0204e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 693
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->secretMaskView:Lcom/liquable/nemo/chat/paint/SecretMaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->brushBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 695
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 696
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->clearBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 697
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->closeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 698
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->undoBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 699
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->decorationBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 700
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->pictureBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 701
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->sendBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 715
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/chat/paint/PaintWidget;->updateQuickAction(Landroid/content/Context;Z)V

    .line 716
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->colorSelectorWidget:Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/paint/ColorSelectorWidget;->updateSecretMode(Z)V

    .line 717
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintWidgetBottom:Landroid/view/View;

    const v1, 0x7f0204e7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 704
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->secretMaskView:Lcom/liquable/nemo/chat/paint/SecretMaskView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->brushBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204db

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 706
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->eraserBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 707
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->clearBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 708
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->closeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 709
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->undoBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 710
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->decorationBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 711
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->pictureBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 712
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget;->sendBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0204e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
