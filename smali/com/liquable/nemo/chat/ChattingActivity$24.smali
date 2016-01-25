.class Lcom/liquable/nemo/chat/ChattingActivity$24;
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
    .line 1331
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/liquable/nemo/util/SendTextAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1334
    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->val$intent:Landroid/content/Intent;

    .line 1335
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1334
    invoke-static {v4, v5}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v0

    .line 1339
    .local v0, "audioInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    instance-of v4, v0, Lcom/liquable/nemo/android/provider/AudioInfo;

    if-nez v4, :cond_1

    .line 1340
    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1341
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1342
    .local v1, "ext":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1343
    .local v2, "mime":Ljava/lang/String;
    const-string/jumbo v4, "audio"

    invoke-static {v2, v4}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1344
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1355
    .end local v0    # "audioInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "mime":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 1346
    .restart local v0    # "audioInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    .restart local v1    # "ext":Ljava/lang/String;
    .restart local v2    # "mime":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v4

    new-array v5, v7, [Lcom/liquable/nemo/group/model/ChatGroup;

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 1347
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v6}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-interface {v4, v5, v6, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendAudioMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V

    .line 1348
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v5}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->val$intent:Landroid/content/Intent;

    .line 1349
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 1350
    invoke-virtual {v7}, Lcom/liquable/nemo/chat/ChattingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1348
    invoke-virtual {v4, v5, v6, v7}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAudioMessage(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 1353
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "mime":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v4

    new-array v5, v7, [Lcom/liquable/nemo/group/model/ChatGroup;

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 1354
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v6}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-interface {v4, v5, v6, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendAudioMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V

    .line 1355
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v5}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v5

    check-cast v0, Lcom/liquable/nemo/android/provider/AudioInfo;

    .end local v0    # "audioInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 1357
    invoke-virtual {v6}, Lcom/liquable/nemo/chat/ChattingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 1355
    invoke-virtual {v4, v5, v0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAudioMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/android/provider/AudioInfo;Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1331
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$24;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->removeDialog(I)V

    .line 1363
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v1, 0x7f0d03f9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1365
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1367
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1331
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$24;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$24;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->showDialog(I)V

    .line 1372
    return-void
.end method
