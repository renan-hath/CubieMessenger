.class Lcom/liquable/nemo/forum/ForumImagePreviewFragment$7;
.super Landroid/content/BroadcastReceiver;
.source "ForumImagePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$7;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 370
    const-string/jumbo v0, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$7;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # getter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$700(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v0, p2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->handleExtraFileTransferEvent(Landroid/content/Intent;)V

    .line 373
    :cond_0
    return-void
.end method
