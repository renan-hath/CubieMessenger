.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;
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
    name = "Stream"
.end annotation


# instance fields
.field private final mimeType:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->uri:Landroid/net/Uri;

    .line 217
    iput-object p2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->mimeType:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->text:Ljava/lang/String;

    .line 219
    return-void
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->uri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public isImage()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public share(Landroid/content/Context;Ljava/util/List;)Z
    .locals 6
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
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->isImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->uri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->text:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendPictureMessages(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)Z

    move-result v4

    .line 235
    :cond_0
    :goto_0
    return v4

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAudioMessages(Ljava/util/List;Landroid/net/Uri;)Z

    move-result v4

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendVideoMessages(Ljava/util/List;Landroid/net/Uri;)Z

    move-result v4

    goto :goto_0
.end method
