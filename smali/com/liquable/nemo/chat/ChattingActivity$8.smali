.class Lcom/liquable/nemo/chat/ChattingActivity$8;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->initEmojiWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$8;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSend(Ljava/lang/String;)V
    .locals 3
    .param p1, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$8;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 734
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->activity:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    .line 733
    invoke-interface {v0, p1, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendStickerMessage(Ljava/lang/String;ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V

    .line 736
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$8;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendStickerMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V

    .line 737
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/Pref;->saveFavoriteSticker(Ljava/lang/String;)V

    .line 738
    return-void
.end method
