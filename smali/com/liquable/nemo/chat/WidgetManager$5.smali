.class Lcom/liquable/nemo/chat/WidgetManager$5;
.super Ljava/lang/Object;
.source "WidgetManager.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/WidgetManager;->initEmojiWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/WidgetManager;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/WidgetManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/WidgetManager;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager$5;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inputEmojiToEditText(Ljava/lang/String;)V
    .locals 2
    .param p1, "emojiCode"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager$5;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    # getter for: Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/nemo/chat/WidgetManager;->access$000(Lcom/liquable/nemo/chat/WidgetManager;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEmoji(Ljava/lang/String;)V

    .line 195
    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;)V
    .locals 3
    .param p1, "emojiCode"    # Ljava/lang/String;
    .param p2, "selectionContext"    # Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    .prologue
    .line 199
    instance-of v1, p2, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager$5;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    # getter for: Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;
    invoke-static {v1}, Lcom/liquable/nemo/chat/WidgetManager;->access$000(Lcom/liquable/nemo/chat/WidgetManager;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintWidget;

    .line 202
    .local v0, "paintWidget":Lcom/liquable/nemo/chat/paint/PaintWidget;
    check-cast p2, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;

    .line 203
    .end local p2    # "selectionContext":Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;->getProperty()Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    move-result-object v1

    .line 202
    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/chat/paint/PaintWidget;->completeCreateEmoji(Ljava/lang/String;Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V

    .line 204
    iget-object v1, p0, Lcom/liquable/nemo/chat/WidgetManager$5;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 208
    .end local v0    # "paintWidget":Lcom/liquable/nemo/chat/paint/PaintWidget;
    :goto_0
    return-void

    .line 206
    .restart local p2    # "selectionContext":Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/WidgetManager$5;->inputEmojiToEditText(Ljava/lang/String;)V

    goto :goto_0
.end method
