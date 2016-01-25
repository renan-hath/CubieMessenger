.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;
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
    name = "Forward"
.end annotation


# instance fields
.field private final domainMessage:Lcom/liquable/nemo/message/model/DomainMessage;

.field private final from:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V
    .locals 0
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;->domainMessage:Lcom/liquable/nemo/message/model/DomainMessage;

    .line 146
    iput-object p2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;->from:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static exists(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    const-string/jumbo v0, "MSG_UID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    const-string/jumbo v3, "MSG_UID"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "messageId":Ljava/lang/String;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    .line 130
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    const-string/jumbo v3, "MSG_FROM"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "messageFrom":Ljava/lang/String;
    new-instance v3, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;

    invoke-direct {v3, v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;-><init>(Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public share(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
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
    .line 152
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;->domainMessage:Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v1, v2, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->forwardMessage(Lcom/liquable/nemo/message/model/DomainMessage;Ljava/util/List;)Z

    move-result v0

    .line 154
    .local v0, "forwardResult":Z
    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;->domainMessage:Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;->from:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->forwardMessage(Lcom/liquable/nemo/message/model/DomainMessage;ILjava/lang/String;)V

    .line 157
    :cond_0
    return v0
.end method
