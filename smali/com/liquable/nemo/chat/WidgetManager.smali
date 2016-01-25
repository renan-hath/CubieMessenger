.class public Lcom/liquable/nemo/chat/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;,
        Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;,
        Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
    }
.end annotation


# static fields
.field public static debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private emojiMask:Landroid/view/View;

.field private hideMediaBarBecauseOfKeyboardOnOrInLandscaped:Z

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private onWidgetOpenCloseListener:Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

.field private final rootView:Landroid/view/View;

.field private final widgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;",
            "Lcom/liquable/nemo/chat/widget/ChattingWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/liquable/nemo/chat/WidgetManager;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/liquable/nemo/chat/WidgetManager$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/WidgetManager$1;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetOpenCloseListener:Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

    .line 77
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    .line 78
    iput-object p2, p0, Lcom/liquable/nemo/chat/WidgetManager;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/WidgetManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/WidgetManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/WidgetManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/WidgetManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/liquable/nemo/chat/WidgetManager;->openMedia()V

    return-void
.end method

.method private close(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 3
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 82
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "close:widgetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->close()V

    goto :goto_0
.end method

.method private closeInput()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "closeInput"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->close(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 104
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetOpenCloseListener:Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;->onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 105
    return-void
.end method

.method private closeMedia()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "closeMedia"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->close(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetOpenCloseListener:Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;->onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 111
    return-void
.end method

.method private conflictWithMedia()Z
    .locals 4

    .prologue
    .line 123
    sget-object v1, Lcom/liquable/nemo/chat/widget/MediaWidget;->conflictingWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 124
    .local v0, "conflictingWidget":Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    sget-object v1, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "conflicWithMedia:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x1

    .line 129
    .end local v0    # "conflictingWidget":Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initPaintEmojiWidget(Lcom/liquable/nemo/chat/paint/PaintWidget;)V
    .locals 3
    .param p1, "paintWidget"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v2, 0x7f080081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .line 263
    .local v0, "paintEmojiWidget":Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;
    invoke-virtual {p1, v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->initPaintEmojiWidget(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V

    .line 264
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method private initPaintStickerWidget(Lcom/liquable/nemo/chat/paint/PaintWidget;)V
    .locals 3
    .param p1, "paintWidget"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 268
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    .line 269
    .local v0, "paintStickerWidget":Lcom/liquable/nemo/chat/paint/PaintStickerWidget;
    invoke-virtual {p1, v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->initPaintStickerWidget(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    .line 270
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_STICKER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method private initPaintTextWidget(Lcom/liquable/nemo/chat/paint/PaintWidget;)V
    .locals 3
    .param p1, "paintWidget"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 274
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .line 275
    .local v0, "paintTextWidget":Lcom/liquable/nemo/chat/paint/PaintTextWidget;
    invoke-virtual {p1, v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->initPaintTextWidget(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    .line 276
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_TEXT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method private onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 3
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 358
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWidgetClose:widgetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/liquable/nemo/chat/WidgetManager;->openInput()V

    .line 360
    invoke-direct {p0}, Lcom/liquable/nemo/chat/WidgetManager;->openMedia()V

    .line 361
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager$14;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetOpenCloseListener:Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;->onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 370
    return-void

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->emojiMask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 3
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 373
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWidgetOpen:widgetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->conflictingWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/liquable/nemo/chat/WidgetManager;->closeInput()V

    .line 377
    :cond_0
    sget-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget;->conflictingWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-direct {p0}, Lcom/liquable/nemo/chat/WidgetManager;->closeMedia()V

    .line 380
    :cond_1
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager$14;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetOpenCloseListener:Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;->onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 389
    return-void

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->emojiMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private open(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 3
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 392
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open:widgetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->open(Z)V

    goto :goto_0
.end method

.method private openInput()V
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "openInput"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->open(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 414
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetOpenCloseListener:Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;->onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 415
    return-void
.end method

.method private openMedia()V
    .locals 3

    .prologue
    .line 418
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openMedia:hideMediaBarBecauseOfKeyboardOnOrInLandscaped:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/liquable/nemo/chat/WidgetManager;->hideMediaBarBecauseOfKeyboardOnOrInLandscaped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 419
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->hideMediaBarBecauseOfKeyboardOnOrInLandscaped:Z

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->open(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 423
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetOpenCloseListener:Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;->onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0
.end method


# virtual methods
.method public closeIfVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 3
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 91
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeIfVisible:widgetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0
.end method

.method public closeMediaFromLayout()V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "closeMediaFromLayout"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/liquable/nemo/chat/WidgetManager;->closeMedia()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->hideMediaBarBecauseOfKeyboardOnOrInLandscaped:Z

    goto :goto_0
.end method

.method public get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;
    .locals 1
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    return-object v0
.end method

.method public hideInputWidgetKeyboard()V
    .locals 2

    .prologue
    .line 137
    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .line 138
    .local v0, "inputWidget":Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->hideKeyboard()V

    .line 141
    :cond_0
    return-void
.end method

.method public initEmojiWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;Ljava/util/List;)V
    .locals 3
    .param p1, "onDownloadNewStickerBtnOnClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "onStickerSendListener"    # Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            "Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;>;"
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v2, 0x7f08008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->emojiMask:Landroid/view/View;

    .line 148
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .line 149
    .local v0, "emojiWidget":Lcom/liquable/nemo/chat/widget/EmojiWidget;
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/WidgetManager;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v0, v1, v2, p3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->init(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    .line 150
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setDownloadNewStickerBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->emojiMask:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/chat/WidgetManager$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/WidgetManager$2;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/WidgetManager$3;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$4;

    invoke-direct {v1, p0, p2}, Lcom/liquable/nemo/chat/WidgetManager$4;-><init>(Lcom/liquable/nemo/chat/WidgetManager;Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setOnStickerSelectListener(Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;)V

    .line 192
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/WidgetManager$5;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setOnEmojiSelectListener(Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;)V

    .line 211
    return-void
.end method

.method public initInputMessageWidget(ZLcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "isImageMode"    # Z
    .param p2, "onSendButtonClickedListener"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;
    .param p3, "onSecretModeListener"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;
    .param p4, "onTypeListener"    # Ljava/lang/Runnable;
    .param p5, "onFilterButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v2, 0x7f080083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .line 219
    .local v0, "inputMessageWidget":Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    invoke-virtual {v0, p4}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnTypeListener(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v0, p2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnSendButtonClickedListener(Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;)V

    .line 221
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$6;

    invoke-direct {v1, p0, p3}, Lcom/liquable/nemo/chat/WidgetManager$6;-><init>(Lcom/liquable/nemo/chat/WidgetManager;Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnSecretModeListener(Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;)V

    .line 230
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setIsImageMode(Z)V

    .line 231
    if-eqz p1, :cond_1

    .line 232
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$7;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/WidgetManager$7;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnPaintButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 240
    invoke-virtual {v0, p5}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnFilterButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void

    .line 243
    :cond_1
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$8;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/WidgetManager$8;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnEmojiButtonClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initMediaWidget(Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;Z)V
    .locals 3
    .param p1, "onActionClickListener"    # Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;
    .param p2, "isRobot"    # Z

    .prologue
    .line 255
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v2, 0x7f08008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/MediaWidget;

    .line 256
    .local v0, "mediaWidget":Lcom/liquable/nemo/chat/widget/MediaWidget;
    invoke-virtual {v0, p2}, Lcom/liquable/nemo/chat/widget/MediaWidget;->setRobot(Z)V

    .line 257
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/MediaWidget;->setOnActionClickListener(Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;)V

    .line 258
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public initPaintWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "onPictureBtnClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "onSendBtnClickListener"    # Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;
    .param p3, "onPaintDrawingListener"    # Ljava/lang/Runnable;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintWidget;

    .line 283
    .local v0, "paintWidget":Lcom/liquable/nemo/chat/paint/PaintWidget;
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$9;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/WidgetManager$9;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintWidget;->setOnCloseButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/paint/PaintWidget;->setOnPictureBtnClicked(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {v0, p2}, Lcom/liquable/nemo/chat/paint/PaintWidget;->setOnSendBtnClicked(Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;)V

    .line 293
    invoke-virtual {v0, p3}, Lcom/liquable/nemo/chat/paint/PaintWidget;->setOnPaintDrawingListener(Ljava/lang/Runnable;)V

    .line 295
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$10;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/WidgetManager$10;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintWidget;->setOnOpenEmojiWidget(Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;)V

    .line 304
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$11;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/WidgetManager$11;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintWidget;->setOnSwitchWidget(Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;)V

    .line 312
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->initPaintTextWidget(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    .line 313
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->initPaintStickerWidget(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    .line 314
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->initPaintEmojiWidget(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    .line 315
    return-void
.end method

.method public initVoiceRecordWindow(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;)V
    .locals 4
    .param p1, "onSendBtnClickListener"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;

    .prologue
    .line 318
    iget-object v2, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v3, 0x7f080082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .line 319
    .local v1, "voiceRecordWindow":Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;
    iget-object v2, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v3, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->VOICE_RECORDER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v3, 0x7f080350

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 322
    .local v0, "closeVoiceBtn":Landroid/widget/ImageButton;
    new-instance v2, Lcom/liquable/nemo/chat/WidgetManager$12;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/WidgetManager$12;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    invoke-virtual {v1, p1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->setOnSendBtnClicked(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;)V

    .line 330
    return-void
.end method

.method public initYoutubeWidget(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "onClippedButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->rootView:Landroid/view/View;

    const v2, 0x7f08008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    .line 334
    .local v0, "youtubeWidget":Lcom/liquable/nemo/chat/widget/YoutubeWidget;
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->setOnClippedButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-void
.end method

.method public isSecret()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z
    .locals 1
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->isVisible()Z

    move-result v0

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    .line 351
    .local v0, "widget":Lcom/liquable/nemo/chat/widget/ChattingWidget;
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onResume(Z)V

    goto :goto_0

    .line 355
    .end local v0    # "widget":Lcom/liquable/nemo/chat/widget/ChattingWidget;
    :cond_1
    return-void
.end method

.method public openIfNotVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 3
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 401
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openIfNotVisible: widgetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0
.end method

.method public openMediaFromLayout()V
    .locals 2

    .prologue
    .line 427
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "openMediaFromLayout"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/liquable/nemo/chat/WidgetManager;->conflictWithMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->hideMediaBarBecauseOfKeyboardOnOrInLandscaped:Z

    .line 432
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager$13;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/WidgetManager$13;-><init>(Lcom/liquable/nemo/chat/WidgetManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setIsSecret(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 441
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setIsSecret(Z)V

    .line 444
    :cond_0
    return-void
.end method

.method public final setOnWidgetOpenCloseListener(Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;)V
    .locals 0
    .param p1, "onWidgetOpenCloseListener"    # Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetOpenCloseListener:Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;

    .line 448
    return-void
.end method

.method public toggleAnyVisibleWidget()Z
    .locals 5

    .prologue
    .line 451
    sget-object v3, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "toggleAnyVisibleWidget"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 452
    iget-object v3, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 453
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;Lcom/liquable/nemo/chat/widget/ChattingWidget;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 454
    .local v1, "type":Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    .line 456
    .local v2, "widget":Lcom/liquable/nemo/chat/widget/ChattingWidget;
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->isTogglable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 458
    const/4 v3, 0x1

    .line 461
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;Lcom/liquable/nemo/chat/widget/ChattingWidget;>;"
    .end local v1    # "type":Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
    .end local v2    # "widget":Lcom/liquable/nemo/chat/widget/ChattingWidget;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 6
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 465
    sget-object v3, Lcom/liquable/nemo/chat/WidgetManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "toggleWidget:widgetType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 466
    iget-object v3, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 467
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;Lcom/liquable/nemo/chat/widget/ChattingWidget;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 468
    .local v1, "type":Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    .line 470
    .local v2, "widget":Lcom/liquable/nemo/chat/widget/ChattingWidget;
    if-eqz v1, :cond_0

    if-eq p1, v1, :cond_0

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->isTogglable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->close()V

    .line 472
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0

    .line 475
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;Lcom/liquable/nemo/chat/widget/ChattingWidget;>;"
    .end local v1    # "type":Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
    .end local v2    # "widget":Lcom/liquable/nemo/chat/widget/ChattingWidget;
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->toggle(Z)Z

    .line 477
    iget-object v3, p0, Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/chat/widget/ChattingWidget;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 482
    :goto_1
    return-void

    .line 480
    :cond_2
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/WidgetManager;->onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_1
.end method

.method public watchYoutube(Lcom/liquable/nemo/message/model/YoutubeMessage;)V
    .locals 2
    .param p1, "youtubeMessage"    # Lcom/liquable/nemo/message/model/YoutubeMessage;

    .prologue
    .line 485
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->setVideoId(Ljava/lang/String;)V

    .line 486
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->reload()V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0
.end method
