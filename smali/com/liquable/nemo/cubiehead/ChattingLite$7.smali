.class Lcom/liquable/nemo/cubiehead/ChattingLite$7;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$7;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKeyPressed()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$7;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$700(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/chat/widget/EmojiWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$7;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$700(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/chat/widget/EmojiWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$7;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->hideEmojiWidget()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$800(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$7;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->chattingLiteCallback:Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$600(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;->onClose()V

    goto :goto_0
.end method
