.class Lcom/liquable/nemo/chat/WidgetManager$4;
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

.field final synthetic val$onStickerSendListener:Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/WidgetManager;Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/WidgetManager;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager$4;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/WidgetManager$4;->val$onStickerSendListener:Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;)V
    .locals 4
    .param p1, "stickerCode"    # Ljava/lang/String;
    .param p2, "selectionContext"    # Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    .prologue
    .line 174
    instance-of v2, p2, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/liquable/nemo/chat/WidgetManager$4;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    # getter for: Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;
    invoke-static {v2}, Lcom/liquable/nemo/chat/WidgetManager;->access$000(Lcom/liquable/nemo/chat/WidgetManager;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintWidget;

    .line 177
    .local v0, "paintWidget":Lcom/liquable/nemo/chat/paint/PaintWidget;
    check-cast p2, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;

    .line 178
    .end local p2    # "selectionContext":Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;->getProperty()Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    move-result-object v2

    .line 177
    invoke-virtual {v0, p1, v2}, Lcom/liquable/nemo/chat/paint/PaintWidget;->completeCreateSticker(Ljava/lang/String;Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)Z

    move-result v1

    .line 180
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/liquable/nemo/chat/WidgetManager$4;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v3, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 189
    .end local v0    # "paintWidget":Lcom/liquable/nemo/chat/paint/PaintWidget;
    .end local v1    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local p2    # "selectionContext":Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/WidgetManager$4;->val$onStickerSendListener:Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/liquable/nemo/chat/WidgetManager$4;->val$onStickerSendListener:Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;

    invoke-interface {v2, p1}, Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;->onStickerSend(Ljava/lang/String;)V

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/chat/WidgetManager$4;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v3, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0
.end method
