.class Lcom/liquable/nemo/cubiehead/ChattingLite$12;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;


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
    .line 559
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$12;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;)V
    .locals 3
    .param p1, "stickerCode"    # Ljava/lang/String;
    .param p2, "selectionContext"    # Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$12;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$12;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->enterMainActivity()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$500(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    .line 573
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$12;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 568
    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->lite:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    .line 567
    invoke-interface {v0, p1, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendStickerMessage(Ljava/lang/String;ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V

    .line 570
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$12;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendStickerMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V

    .line 571
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/Pref;->saveFavoriteSticker(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$12;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->toggleEmojiWidget()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1500(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    goto :goto_0
.end method
