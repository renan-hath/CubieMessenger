.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;
.super Ljava/lang/Object;
.source "SelectSharingChatGroupActivity.java"

# interfaces
.implements Lcom/liquable/nemo/share/Sharable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextData"
.end annotation


# instance fields
.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;->text:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;->title:Ljava/lang/String;

    .line 253
    return-void
.end method


# virtual methods
.method public share(Landroid/content/Context;Ljava/util/List;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;->text:Ljava/lang/String;

    .line 258
    .local v2, "content":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;->title:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;->text:Ljava/lang/String;

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;->text:Ljava/lang/String;

    const-string/jumbo v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    :cond_0
    :try_start_0
    new-instance v0, Lcom/liquable/nemo/util/BitlyService;

    invoke-direct {v0}, Lcom/liquable/nemo/util/BitlyService;-><init>()V

    .line 262
    .local v0, "bitlyService":Lcom/liquable/nemo/util/BitlyService;
    iget-object v4, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;->text:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/util/BitlyService;->getShortUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 268
    .end local v0    # "bitlyService":Lcom/liquable/nemo/util/BitlyService;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;->title:Ljava/lang/String;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "msg":Ljava/lang/String;
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 270
    .local v1, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v5

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sget-object v7, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    invoke-interface {v5, v6, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendTextMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V

    .line 272
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v5, v1, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendTextMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .line 268
    goto :goto_1

    .line 274
    .restart local v3    # "msg":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    return v4

    .line 263
    .end local v3    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
