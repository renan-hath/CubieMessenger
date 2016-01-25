.class public Lcom/liquable/nemo/chat/paint/SecretMaskView;
.super Landroid/widget/ImageView;
.source "SecretMaskView.java"


# instance fields
.field private gradient:Landroid/graphics/Shader;

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/SecretMaskView;->paint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/SecretMaskView;->rect:Landroid/graphics/Rect;

    .line 38
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/SecretMaskView;->gradient:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/ImageUtils;->createSecretShader(II)Landroid/graphics/Shader;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/SecretMaskView;->gradient:Landroid/graphics/Shader;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/SecretMaskView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/SecretMaskView;->gradient:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/SecretMaskView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/SecretMaskView;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/SecretMaskView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52
    return-void
.end method
