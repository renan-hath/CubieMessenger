.class public Lcom/liquable/nemo/chat/paint/PaintStickerWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "PaintStickerWidget.java"


# instance fields
.field private onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintStickerProperty;",
            ">;"
        }
    .end annotation
.end field

.field private onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintStickerProperty;",
            ">;"
        }
    .end annotation
.end field

.field private onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintStickerProperty;",
            ">;"
        }
    .end annotation
.end field

.field private property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

.field private final stickerImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$1;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$1;-><init>(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    iput-object v6, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 28
    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$2;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$2;-><init>(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    iput-object v6, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 33
    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$3;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$3;-><init>(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    iput-object v6, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->getLayoutResId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 45
    .local v3, "rootView":Landroid/view/View;
    const v6, 0x7f080327

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->stickerImageView:Landroid/widget/ImageView;

    .line 47
    const v6, 0x7f080325

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 48
    .local v4, "saveBtn":Landroid/view/View;
    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$4;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$4;-><init>(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v6, 0x7f0801f8

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "deleteBtn":Landroid/view/View;
    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$5;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$5;-><init>(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v6, 0x7f080062

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "cancelBtn":Landroid/view/View;
    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$6;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$6;-><init>(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v6, 0x7f080328

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 77
    .local v5, "switchBtn":Landroid/view/View;
    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$7;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$7;-><init>(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v6, 0x7f080324

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "flipBtn":Landroid/view/View;
    new-instance v6, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$8;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$8;-><init>(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    return-object v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;Lcom/liquable/nemo/chat/paint/PaintStickerProperty;)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintStickerWidget;
    .param p1, "x1"    # Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    return-object p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->render()V

    return-void
.end method

.method private render()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    .line 122
    .local v8, "density":F
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerBitmaps(Lcom/liquable/nemo/model/sticker/StickerDto;F)Ljava/util/List;

    move-result-object v7

    .line 125
    .local v7, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerIndex()I

    move-result v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 126
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->stickerImageView:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/liquable/nemo/util/ImageUtils;->createEmptyBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerIndex()I

    move-result v2

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 132
    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->isFlip()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 135
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f030154

    return v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->setVisibility(I)V

    .line 112
    return-void
.end method

.method protected onOpen(Z)V
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public setOnCancelListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintStickerProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "onCancelListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintStickerProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 148
    return-void
.end method

.method public setOnDeleteListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintStickerProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "onDeleteListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintStickerProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 152
    return-void
.end method

.method public setOnSaveListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintStickerProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "onSaveListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintStickerProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 156
    return-void
.end method

.method public setProperty(Lcom/liquable/nemo/chat/paint/PaintStickerProperty;)V
    .locals 3
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .line 164
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerDto;->getHeight()I

    move-result v2

    .line 164
    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerDto;->getWidth()I

    move-result v2

    .line 166
    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 168
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->render()V

    .line 169
    return-void
.end method
