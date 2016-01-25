.class public Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "PaintEmojiWidget.java"


# instance fields
.field private final emojiImageView:Landroid/widget/ImageView;

.field private onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;",
            ">;"
        }
    .end annotation
.end field

.field private onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;",
            ">;"
        }
    .end annotation
.end field

.field private onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;",
            ">;"
        }
    .end annotation
.end field

.field private property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$1;-><init>(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 24
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$2;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$2;-><init>(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 29
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$3;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$3;-><init>(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->getLayoutResId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 41
    .local v3, "rootView":Landroid/view/View;
    const v5, 0x7f080323

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->emojiImageView:Landroid/widget/ImageView;

    .line 43
    const v5, 0x7f080325

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 44
    .local v4, "saveBtn":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$4;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$4;-><init>(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v5, 0x7f0801f8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "deleteBtn":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$5;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$5;-><init>(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v5, 0x7f080062

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "cancelBtn":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$6;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$6;-><init>(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v5, 0x7f080324

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 72
    .local v2, "flipBtn":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$7;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$7;-><init>(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    return-object v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;)Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;
    .param p1, "x1"    # Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    return-object p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->render()V

    return-void
.end method

.method private render()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->getEmojiCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/liquable/nemo/chat/EmojiUtil;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->isFlip()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 103
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 104
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->emojiImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f030151

    return v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->setVisibility(I)V

    .line 90
    return-void
.end method

.method protected onOpen(Z)V
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public setOnCancelListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "onCancelListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 117
    return-void
.end method

.method public setOnDeleteListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "onDeleteListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onDeleteListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 121
    return-void
.end method

.method public setOnSaveListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "onSaveListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 125
    return-void
.end method

.method public setProperty(Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;)V
    .locals 0
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    .line 130
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->render()V

    .line 131
    return-void
.end method
