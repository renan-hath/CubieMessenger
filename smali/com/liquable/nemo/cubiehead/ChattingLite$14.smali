.class Lcom/liquable/nemo/cubiehead/ChattingLite$14;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->initEmojiWidget(Landroid/view/View;)V
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
    .line 581
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$14;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomStickerAdd()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$14;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->enterMainActivity()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$500(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    .line 586
    return-void
.end method

.method public onCustomStickerSend(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 3
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$14;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$14;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->enterMainActivity()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$500(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$14;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 595
    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->lite:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendCustomStickerMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V

    .line 598
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$14;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendCustomStickerMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    .line 599
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$14;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->toggleEmojiWidget()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1500(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    goto :goto_0
.end method
