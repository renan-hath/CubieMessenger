.class Lcom/liquable/nemo/chat/WidgetManager$10;
.super Ljava/lang/Object;
.source "WidgetManager.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/WidgetManager;->initPaintWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;Ljava/lang/Runnable;)V
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
    .line 295
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager$10;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;)V
    .locals 2
    .param p1, "selectionContext"    # Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager$10;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    # getter for: Lcom/liquable/nemo/chat/WidgetManager;->widgets:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/nemo/chat/WidgetManager;->access$000(Lcom/liquable/nemo/chat/WidgetManager;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setSelectionContext(Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;)V

    .line 300
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager$10;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 301
    return-void
.end method
