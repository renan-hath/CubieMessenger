.class Lcom/liquable/nemo/chat/widget/EmojiWidget$3;
.super Ljava/lang/Object;
.source "EmojiWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/EmojiWidget;->createOnCustomStickerSendListener()Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomStickerAdd()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/EmojiWidget;->onCustomStickerListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$100(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/EmojiWidget;->onCustomStickerListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$100(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;->onCustomStickerAdd()V

    .line 184
    :cond_0
    return-void
.end method

.method public onCustomStickerSend(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 2
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectionContext:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$200(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    move-result-object v0

    instance-of v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d016a

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/EmojiWidget;->onCustomStickerListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$100(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/EmojiWidget;->onCustomStickerListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$100(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;->onCustomStickerSend(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    goto :goto_0
.end method
