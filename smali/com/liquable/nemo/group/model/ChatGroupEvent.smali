.class public final enum Lcom/liquable/nemo/group/model/ChatGroupEvent;
.super Ljava/lang/Enum;
.source "ChatGroupEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/group/model/ChatGroupEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

.field public static final enum CREATE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final enum DELETE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final enum HISTORY_CLEAR:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final enum HISTORY_ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final enum ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final KEY_CHAT_GROUP_TOPIC:Ljava/lang/String; = "com.liquable.nemo.group.model.KEY_CHAT_GROUP_TOPIC"

.field public static final KEY_UPDATE_ICON_MESSAGE:Ljava/lang/String; = "com.liquable.nemo.group.model.KEY_UPDATE_ICON_MESSAGE"

.field public static final enum MEMBER_ADD:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final enum NEW_MESSAGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final enum READ_COUNT_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final enum REMOVED_BY_OWNER:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final enum TITLE_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

.field public static final enum UPDATE:Lcom/liquable/nemo/group/model/ChatGroupEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "CREATE"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->CREATE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->UPDATE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->DELETE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "TITLE_CHANGE"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->TITLE_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "ICON_CHANGE"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "HISTORY_ICON_CHANGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->HISTORY_ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    .line 11
    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "NEW_MESSAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->NEW_MESSAGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "MEMBER_ADD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->MEMBER_ADD:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "HISTORY_CLEAR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->HISTORY_CLEAR:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "REMOVED_BY_OWNER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->REMOVED_BY_OWNER:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    const-string/jumbo v1, "READ_COUNT_CHANGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->READ_COUNT_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    .line 9
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/liquable/nemo/group/model/ChatGroupEvent;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->CREATE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->UPDATE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->DELETE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->TITLE_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;->HISTORY_ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;->NEW_MESSAGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;->MEMBER_ADD:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;->HISTORY_CLEAR:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;->REMOVED_BY_OWNER:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;->READ_COUNT_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->$VALUES:[Lcom/liquable/nemo/group/model/ChatGroupEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static canHandle(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static getTopic(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string/jumbo v0, "com.liquable.nemo.group.model.KEY_CHAT_GROUP_TOPIC"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateIconMessage(Landroid/content/Intent;)Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string/jumbo v0, "com.liquable.nemo.group.model.KEY_UPDATE_ICON_MESSAGE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroupEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/group/model/ChatGroupEvent;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/liquable/nemo/group/model/ChatGroupEvent;->$VALUES:[Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/group/model/ChatGroupEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/group/model/ChatGroupEvent;

    return-object v0
.end method
