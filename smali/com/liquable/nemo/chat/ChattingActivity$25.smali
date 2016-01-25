.class Lcom/liquable/nemo/chat/ChattingActivity$25;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->onLoggedInActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$animatedFiles:Ljava/util/ArrayList;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Landroid/content/Context;ZLjava/io/File;Ljava/util/ArrayList;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showToast"    # Z

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p4, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->val$file:Ljava/io/File;

    iput-object p5, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->val$animatedFiles:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->val$selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 1397
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$25;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 1400
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->val$animatedFiles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->val$selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->create(Ljava/io/File;Ljava/util/ArrayList;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .line 1401
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->showDialog(I)V

    .line 1407
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->removeDialog(I)V

    .line 1412
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1397
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$25;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1416
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;->self:Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->addCustomSticker(Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;)V

    .line 1417
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$25;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->refreshCustomStickers()V

    .line 1418
    return-void
.end method
