.class Lcom/liquable/nemo/chat/ChattingActivity$23;
.super Lcom/liquable/nemo/util/SendTextAsyncTask;
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
        "Lcom/liquable/nemo/util/SendTextAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$23;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$23;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/liquable/nemo/util/SendTextAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1300
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    new-array v2, v5, [Lcom/liquable/nemo/group/model/ChatGroup;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$23;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 1301
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-interface {v1, v2, v3, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendVideoMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V

    .line 1302
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$23;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$23;->val$intent:Landroid/content/Intent;

    .line 1303
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1302
    invoke-static {v1, v2}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v0

    .line 1304
    .local v0, "videoInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    if-nez v0, :cond_0

    .line 1305
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1307
    .end local v0    # "videoInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    :goto_0
    return-object v1

    .restart local v0    # "videoInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$23;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    check-cast v0, Lcom/liquable/nemo/android/provider/VideoInfo;

    .end local v0    # "videoInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendVideoMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/android/provider/VideoInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1297
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$23;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$23;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->removeDialog(I)V

    .line 1313
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$23;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v1, 0x7f0d03fb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1317
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1297
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$23;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$23;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->showDialog(I)V

    .line 1322
    return-void
.end method
