.class Lcom/liquable/nemo/chat/ChattingActivity$10;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;


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
    .line 753
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$10;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomStickerAdd()V
    .locals 4

    .prologue
    .line 756
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->allowCreateCustomSticker()Z

    move-result v0

    .line 757
    .local v0, "allowCreateCustomSticker":Z
    if-nez v0, :cond_0

    .line 758
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$10;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v3, 0x7f0d01cd

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 765
    :goto_0
    return-void

    .line 762
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$10;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const-class v3, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 764
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$10;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v3, Lcom/liquable/nemo/chat/ChattingRequestCode;->CREATE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCustomStickerSend(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 3
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 769
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$10;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 770
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->activity:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendCustomStickerMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V

    .line 772
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$10;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendCustomStickerMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    .line 773
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$10;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 774
    return-void
.end method
