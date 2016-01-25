.class public Lcom/liquable/nemo/chat/paint/PaintView;
.super Landroid/view/View;
.source "PaintView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;,
        Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;,
        Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;,
        Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;,
        Lcom/liquable/nemo/chat/paint/PaintView$DecorationMenuAdapter;,
        Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;,
        Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;
    }
.end annotation


# static fields
.field private static final MAX_BITMAP_COUNT:I = 0x5

.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private final brushPaint:Landroid/graphics/Paint;

.field private final currentPath:Landroid/graphics/Path;

.field private final decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

.field private final density:F

.field private downX:F

.field private downY:F

.field private enablePaint:Z

.field private final eraserPaint:Landroid/graphics/Paint;

.field private mainBitmap:Landroid/graphics/Bitmap;

.field private final mainBitmapPaint:Landroid/graphics/Paint;

.field private mainCanvas:Landroid/graphics/Canvas;

.field private onEditPaintEmojiListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;",
            ">;"
        }
    .end annotation
.end field

.field private onEditPaintStickerListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintStickerProperty;",
            ">;"
        }
    .end annotation
.end field

.field private onPaintChangedListener:Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;

.field private onPrepareCreatingDecorationListener:Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;

.field private onSelectPaintTextListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintTextProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final paintItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/liquable/nemo/chat/paint/PaintItem;",
            ">;"
        }
    .end annotation
.end field

.field private paintMode:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

.field private posX:F

.field private posY:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 438
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 374
    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    .line 376
    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    .line 378
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    .line 380
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    .line 382
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    .line 384
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    .line 386
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmapPaint:Landroid/graphics/Paint;

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->enablePaint:Z

    .line 408
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/paint/PaintView$1;-><init>(Lcom/liquable/nemo/chat/paint/PaintView;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onSelectPaintTextListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 415
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintView$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/paint/PaintView$2;-><init>(Lcom/liquable/nemo/chat/paint/PaintView;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onPrepareCreatingDecorationListener:Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;

    .line 422
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintView$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/paint/PaintView$3;-><init>(Lcom/liquable/nemo/chat/paint/PaintView;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onEditPaintStickerListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 429
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintView$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/paint/PaintView$4;-><init>(Lcom/liquable/nemo/chat/paint/PaintView;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onEditPaintEmojiListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 439
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;-><init>(Lcom/liquable/nemo/chat/paint/PaintView;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    .line 440
    invoke-virtual {p0, p0}, Lcom/liquable/nemo/chat/paint/PaintView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    .line 442
    sget-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->BRUSH:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintMode:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    .line 443
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/paint/PaintView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/paint/PaintView;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onSelectPaintTextListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/paint/PaintView;)Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onPrepareCreatingDecorationListener:Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/paint/PaintView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/paint/PaintView;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onEditPaintStickerListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/paint/PaintView;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/paint/PaintView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onEditPaintEmojiListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    return-object v0
.end method

.method private changeStrokeWidth(ILandroid/graphics/Paint;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 454
    packed-switch p1, :pswitch_data_0

    .line 468
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :pswitch_0
    const/high16 v0, 0x42000000    # 32.0f

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 470
    :goto_0
    return-void

    .line 459
    :pswitch_1
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 462
    :pswitch_2
    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 465
    :pswitch_3
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private findDecoration(ILjava/lang/Class;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .locals 3
    .param p1, "paintItemIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/liquable/nemo/chat/paint/TransformablePaintItem;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 527
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 529
    .local v1, "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    if-ne p1, v0, :cond_0

    .line 537
    check-cast v1, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    .line 539
    .end local v1    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private notifyPaintChanged(Z)V
    .locals 1
    .param p1, "added"    # Z

    .prologue
    .line 638
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onPaintChangedListener:Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onPaintChangedListener:Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;->onPaintChanged(Lcom/liquable/nemo/chat/paint/PaintView;Z)V

    .line 641
    :cond_0
    return-void
.end method

.method private resetCanvas(Z)V
    .locals 4
    .param p1, "notifyChanged"    # Z

    .prologue
    const/4 v3, 0x0

    .line 756
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 760
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 761
    .local v0, "paintPath":Lcom/liquable/nemo/chat/paint/PaintItem;
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v2}, Lcom/liquable/nemo/chat/paint/PaintItem;->paint(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 763
    .end local v0    # "paintPath":Lcom/liquable/nemo/chat/paint/PaintItem;
    :cond_2
    if-eqz p1, :cond_0

    .line 764
    invoke-direct {p0, v3}, Lcom/liquable/nemo/chat/paint/PaintView;->notifyPaintChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public changeEraserWidth(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->changeStrokeWidth(ILandroid/graphics/Paint;)V

    .line 447
    return-void
.end method

.method public changeGraphicsWidth(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->changeStrokeWidth(ILandroid/graphics/Paint;)V

    .line 451
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 474
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 475
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 476
    sget-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->BRUSH:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->switchMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)V

    .line 477
    return-void
.end method

.method public completeCreateEmoji(Ljava/lang/String;Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V
    .locals 9
    .param p1, "emojiCode"    # Ljava/lang/String;
    .param p2, "property"    # Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    .prologue
    .line 480
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getX()I

    move-result v1

    .line 481
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getY()I

    move-result v2

    .line 482
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getScale()F

    move-result v3

    .line 483
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getRotation()F

    move-result v4

    const/4 v6, 0x0

    .line 486
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getPaintItemIndex()I

    move-result v7

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;-><init>(IIFFLjava/lang/String;ZI)V

    .line 488
    .local v0, "newProperty":Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
    new-instance v8, Lcom/liquable/nemo/chat/paint/PaintEmoji;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v1, v0, v2}, Lcom/liquable/nemo/chat/paint/PaintEmoji;-><init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;Lcom/liquable/nemo/chat/paint/PaintEmoji;)V

    .line 489
    .local v8, "paintEmoji":Lcom/liquable/nemo/chat/paint/PaintEmoji;
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 490
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 491
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->invalidate()V

    .line 492
    return-void
.end method

.method public completeCreateSticker(Lcom/liquable/nemo/model/sticker/StickerDto;Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V
    .locals 10
    .param p1, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;
    .param p2, "property"    # Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    .prologue
    const/4 v6, 0x0

    .line 497
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getX()I

    move-result v1

    .line 498
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getY()I

    move-result v2

    .line 499
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getScale()F

    move-result v3

    .line 500
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getRotation()F

    move-result v4

    .line 504
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;->getPaintItemIndex()I

    move-result v8

    move-object v5, p1

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;-><init>(IIFFLcom/liquable/nemo/model/sticker/StickerDto;IZI)V

    .line 506
    .local v0, "newProperty":Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    new-instance v9, Lcom/liquable/nemo/chat/paint/PaintSticker;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v9, v1, v0, v2}, Lcom/liquable/nemo/chat/paint/PaintSticker;-><init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintStickerProperty;Lcom/liquable/nemo/chat/paint/PaintSticker;)V

    .line 507
    .local v9, "paintSticker":Lcom/liquable/nemo/chat/paint/PaintSticker;
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 508
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->invalidate()V

    .line 510
    return-void
.end method

.method public deleteDecoration(I)V
    .locals 3
    .param p1, "paintItemIndex"    # I

    .prologue
    .line 513
    const-class v1, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    invoke-direct {p0, p1, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->findDecoration(ILjava/lang/Class;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v0

    .line 515
    .local v0, "found":Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    if-eqz v0, :cond_0

    .line 516
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    new-instance v2, Lcom/liquable/nemo/chat/paint/DeletedTransformablePaintItem;

    invoke-direct {v2, v0}, Lcom/liquable/nemo/chat/paint/DeletedTransformablePaintItem;-><init>(Lcom/liquable/nemo/chat/paint/TransformablePaintItem;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 518
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 519
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->invalidate()V

    .line 521
    :cond_0
    return-void
.end method

.method public getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 4

    .prologue
    .line 543
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 544
    .local v0, "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    instance-of v2, v0, Lcom/liquable/nemo/chat/paint/PaintBitmap;

    if-eqz v2, :cond_0

    .line 545
    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintBitmap;

    .end local v0    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintBitmap;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v2, v3, :cond_0

    .line 546
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 551
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public getNumberOfPaintSticker()I
    .locals 4

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "count":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 557
    .local v1, "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    instance-of v3, v1, Lcom/liquable/nemo/chat/paint/PaintSticker;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/liquable/nemo/chat/paint/PaintEmoji;

    if-eqz v3, :cond_0

    .line 558
    :cond_1
    invoke-interface {v1}, Lcom/liquable/nemo/chat/paint/PaintItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    .end local v1    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    :cond_2
    return v0
.end method

.method public getNumberOfPaintText()I
    .locals 5

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "count":I
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 569
    .local v1, "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    instance-of v4, v1, Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 570
    check-cast v2, Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    .line 571
    .local v2, "textBubble":Lcom/liquable/nemo/chat/paint/PaintTextBubble;
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    .end local v1    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    .end local v2    # "textBubble":Lcom/liquable/nemo/chat/paint/PaintTextBubble;
    :cond_1
    return v0
.end method

.method public hasAnyItem()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDecoration()Z
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 585
    .local v0, "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    instance-of v2, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    if-eqz v2, :cond_0

    .line 586
    const/4 v1, 0x1

    .line 589
    .end local v0    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initPaint(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x2

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v2, 0x1

    .line 593
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 594
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 595
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 596
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 597
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 598
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 599
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/chat/paint/PaintView;->changeGraphicsWidth(I)V

    .line 601
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 602
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 603
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 604
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 605
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 606
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 607
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 608
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/chat/paint/PaintView;->changeEraserWidth(I)V

    .line 609
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 610
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmap:Landroid/graphics/Bitmap;

    .line 611
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainCanvas:Landroid/graphics/Canvas;

    .line 612
    return-void
.end method

.method public isBlank()Z
    .locals 3

    .prologue
    .line 615
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 616
    .local v0, "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    invoke-interface {v0}, Lcom/liquable/nemo/chat/paint/PaintItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    const/4 v1, 0x0

    .line 620
    .end local v0    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPaintMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)Z
    .locals 1
    .param p1, "mode"    # Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintMode:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPastable()Z
    .locals 4

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "count":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 630
    .local v1, "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    instance-of v3, v1, Lcom/liquable/nemo/chat/paint/PaintBitmap;

    if-eqz v3, :cond_0

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    .end local v1    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    :cond_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 646
    sget-object v0, Lcom/liquable/nemo/chat/paint/PaintView$5;->$SwitchMap$com$liquable$nemo$chat$paint$PaintView$PaintMode:[I

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintMode:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 648
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 649
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 654
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 660
    :pswitch_2
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 661
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const/4 v12, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 668
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    .line 669
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    .line 671
    iget-boolean v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->enablePaint:Z

    if-nez v4, :cond_0

    .line 742
    :goto_0
    return v12

    .line 675
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 741
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->invalidate()V

    goto :goto_0

    .line 677
    :pswitch_0
    sget-object v4, Lcom/liquable/nemo/chat/paint/PaintView$5;->$SwitchMap$com$liquable$nemo$chat$paint$PaintView$PaintMode:[I

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintMode:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v5}, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 680
    :pswitch_1
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 681
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 682
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iput v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->downX:F

    .line 683
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iput v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->downY:F

    .line 684
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iput v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->x:F

    .line 685
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iput v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->y:F

    goto :goto_1

    .line 688
    :pswitch_2
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    invoke-virtual {v4, p2}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->onActionDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 693
    :pswitch_3
    sget-object v4, Lcom/liquable/nemo/chat/paint/PaintView$5;->$SwitchMap$com$liquable$nemo$chat$paint$PaintView$PaintMode:[I

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintMode:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v5}, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    goto :goto_1

    .line 696
    :pswitch_4
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 697
    .local v0, "dx":F
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 698
    .local v1, "dy":F
    cmpl-float v4, v0, v6

    if-gez v4, :cond_2

    cmpl-float v4, v1, v6

    if-ltz v4, :cond_1

    .line 699
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->x:F

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintView;->y:F

    iget v7, p0, Lcom/liquable/nemo/chat/paint/PaintView;->x:F

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->y:F

    iget v9, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 700
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iput v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->x:F

    .line 701
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iput v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->y:F

    goto :goto_1

    .line 705
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :pswitch_5
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    invoke-virtual {v4, p2}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->onActionMove(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 710
    :pswitch_6
    sget-object v4, Lcom/liquable/nemo/chat/paint/PaintView$5;->$SwitchMap$com$liquable$nemo$chat$paint$PaintView$PaintMode:[I

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintMode:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v5}, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    .line 738
    :goto_2
    invoke-direct {p0, v12}, Lcom/liquable/nemo/chat/paint/PaintView;->notifyPaintChanged(Z)V

    goto/16 :goto_1

    .line 712
    :pswitch_7
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->downX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->downY:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 713
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iget v7, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iget v9, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 717
    :goto_3
    new-instance v3, Lcom/liquable/nemo/chat/paint/PaintBrush;

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/chat/paint/PaintBrush;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 718
    .local v3, "paintPath":Lcom/liquable/nemo/chat/paint/PaintBrush;
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/paint/PaintBrush;->paint(Landroid/graphics/Canvas;)V

    .line 720
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    goto :goto_2

    .line 715
    .end local v3    # "paintPath":Lcom/liquable/nemo/chat/paint/PaintBrush;
    :cond_3
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->x:F

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintView;->y:F

    iget v7, p0, Lcom/liquable/nemo/chat/paint/PaintView;->x:F

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->y:F

    iget v9, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    .line 723
    :pswitch_8
    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->downX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->downY:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    .line 724
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iget v7, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    iget v9, p0, Lcom/liquable/nemo/chat/paint/PaintView;->density:F

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 728
    :goto_4
    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintEraser;

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->eraserPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v4, v5}, Lcom/liquable/nemo/chat/paint/PaintEraser;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 729
    .local v2, "paintEraser":Lcom/liquable/nemo/chat/paint/PaintEraser;
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/chat/paint/PaintEraser;->paint(Landroid/graphics/Canvas;)V

    .line 731
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_2

    .line 726
    .end local v2    # "paintEraser":Lcom/liquable/nemo/chat/paint/PaintEraser;
    :cond_4
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->currentPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/liquable/nemo/chat/paint/PaintView;->x:F

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintView;->y:F

    iget v7, p0, Lcom/liquable/nemo/chat/paint/PaintView;->x:F

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posX:F

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintView;->y:F

    iget v9, p0, Lcom/liquable/nemo/chat/paint/PaintView;->posY:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    .line 734
    :pswitch_9
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView;->decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    invoke-virtual {v4, p2}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->onActionUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 677
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 693
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 710
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public paste(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintBitmap;

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmapPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {v1, p1, v2, v3}, Lcom/liquable/nemo/chat/paint/PaintBitmap;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Bitmap$CompressFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 747
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 748
    return-void
.end method

.method public pastePicture(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintBitmap;

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmapPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {v1, p1, v2, v3}, Lcom/liquable/nemo/chat/paint/PaintBitmap;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Bitmap$CompressFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 752
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 753
    return-void
.end method

.method public setBrushColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 769
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 770
    return-void
.end method

.method public setEnablePaint(Z)V
    .locals 0
    .param p1, "enablePaint"    # Z

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->enablePaint:Z

    .line 774
    return-void
.end method

.method public setOnEditPaintEmojiListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
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
    .line 777
    .local p1, "onEditPaintEmojiListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onEditPaintEmojiListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 778
    return-void
.end method

.method public setOnEditPaintStickerListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
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
    .line 781
    .local p1, "onEditPaintStickerListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintStickerProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onEditPaintStickerListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 782
    return-void
.end method

.method public setOnPaintChangedListener(Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;)V
    .locals 0
    .param p1, "onPaintChangedListener"    # Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;

    .prologue
    .line 785
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onPaintChangedListener:Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;

    .line 786
    return-void
.end method

.method public setOnPrepareCreatingDecorationListener(Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;)V
    .locals 0
    .param p1, "onPrepareCreatingDecorationListener"    # Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onPrepareCreatingDecorationListener:Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;

    .line 790
    return-void
.end method

.method public setOnSelectPaintTextListener(Lcom/liquable/nemo/chat/paint/OnPropertyListener;)V
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
    .line 793
    .local p1, "onSelectPaintTextListener":Lcom/liquable/nemo/chat/paint/OnPropertyListener;, "Lcom/liquable/nemo/chat/paint/OnPropertyListener<Lcom/liquable/nemo/chat/paint/PaintTextProperty;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->onSelectPaintTextListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    .line 794
    return-void
.end method

.method public switchMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    .prologue
    const/4 v1, 0x1

    .line 797
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintMode:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    .line 799
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->reset()V

    .line 800
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView;->decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    sget-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->DECORATION:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->setShowHandle(Z)V

    .line 802
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 803
    return-void

    .line 800
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeSnapshot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 806
    sget-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->DECORATION:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->isPaintMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->setShowHandle(Z)V

    .line 810
    :cond_0
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 812
    sget-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->DECORATION:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->isPaintMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->decorationController:Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->setShowHandle(Z)V

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView;->mainBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 820
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 822
    .local v0, "last":Lcom/liquable/nemo/chat/paint/PaintItem;
    invoke-interface {v0}, Lcom/liquable/nemo/chat/paint/PaintItem;->undo()V

    .line 823
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 825
    .end local v0    # "last":Lcom/liquable/nemo/chat/paint/PaintItem;
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->hasAnyItem()Z

    move-result v1

    if-nez v1, :cond_1

    .line 826
    sget-object v1, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->BRUSH:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->switchMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)V

    .line 828
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 829
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->invalidate()V

    .line 830
    return-void
.end method

.method public updatePaintEmojiProperty(Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;)V
    .locals 4
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    .prologue
    .line 833
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->getPaintItemIndex()I

    move-result v1

    const-class v2, Lcom/liquable/nemo/chat/paint/PaintEmoji;

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/chat/paint/PaintView;->findDecoration(ILjava/lang/Class;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintEmoji;

    .line 834
    .local v0, "found":Lcom/liquable/nemo/chat/paint/PaintEmoji;
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintEmoji;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;-><init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;Lcom/liquable/nemo/chat/paint/PaintEmoji;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 835
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 836
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->invalidate()V

    .line 837
    return-void
.end method

.method public updatePaintStickewrProperty(Lcom/liquable/nemo/chat/paint/PaintStickerProperty;)V
    .locals 4
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .prologue
    .line 840
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getPaintItemIndex()I

    move-result v1

    const-class v2, Lcom/liquable/nemo/chat/paint/PaintSticker;

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/chat/paint/PaintView;->findDecoration(ILjava/lang/Class;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintSticker;

    .line 841
    .local v0, "found":Lcom/liquable/nemo/chat/paint/PaintSticker;
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintSticker;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lcom/liquable/nemo/chat/paint/PaintSticker;-><init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintStickerProperty;Lcom/liquable/nemo/chat/paint/PaintSticker;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 842
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 843
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->invalidate()V

    .line 844
    return-void
.end method

.method public updatePaintTextProperty(Lcom/liquable/nemo/chat/paint/PaintTextProperty;)V
    .locals 3
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .prologue
    .line 847
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintItemIndex()I

    move-result v1

    const-class v2, Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/chat/paint/PaintView;->findDecoration(ILjava/lang/Class;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    .line 849
    .local v0, "foundBubble":Lcom/liquable/nemo/chat/paint/PaintTextBubble;
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->create(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintTextProperty;Lcom/liquable/nemo/chat/paint/PaintTextBubble;)Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 850
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V

    .line 851
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintView;->invalidate()V

    .line 852
    return-void
.end method
