.class public Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "UpdateGroupIconMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37a28d0e3d4c2194L


# instance fields
.field private final iconFileName:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "topic"
        .end annotation
    .end param
    .param p2, "iconFileName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iconFileName"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->topic:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->iconFileName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static createBySender(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;
    .locals 1
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .local v0, "msg":Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->initial()V

    .line 20
    return-object v0
.end method

.method public static createLocalKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "iconFileName"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/chatgroup/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createRemoteKeyPathOfIcon(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "iconFileName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->remoteKeyPathOfIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method private static remoteKeyPathOfIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v0, "cubie/chatgroup/%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01ea

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->iconFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->UPDATE_CHAT_GROUP_ICON:Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method

.method public getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->topic:Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->iconFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->createLocalKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 71
    const v0, 0x7f0d0376

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "params":[Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteKeyPathOfIcon()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->topic:Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->iconFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->remoteKeyPathOfIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method
