.class public final enum Lcom/liquable/nemo/friend/model/FriendEvent;
.super Ljava/lang/Enum;
.source "FriendEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/friend/model/FriendEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum ACCOUNT_ICON_UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.friend.model.FRIEND_EVENT"

.field public static final enum ADD:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum BLOCKED:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum DELETE:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum FACEBOOK_ICON_UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum HAS_NEW_ONE_WAY_FRIEND:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum IMPORT:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum INVITE_FRIEND:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final KEY_FRIEND_MODEL:Ljava/lang/String; = "com.liquable.nemo.friend.model.KEY_FRIEND_MODEL"

.field public static final KEY_FRIEND_UID:Ljava/lang/String; = "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

.field public static final KEY_FRIEND_UIDS:Ljava/lang/String; = "com.liquable.nemo.friend.model.KEY_FRIEND_UIDS"

.field public static final enum RELOAD_FRIEND_LIST:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum RELOAD_RECOMMEND:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum REMOVE_RECOMMEND:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum UNBLOCKED:Lcom/liquable/nemo/friend/model/FriendEvent;

.field public static final enum UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->ADD:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->DELETE:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "IMPORT"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->IMPORT:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "BLOCKED"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->BLOCKED:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "UNBLOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->UNBLOCKED:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "ACCOUNT_ICON_UPDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->ACCOUNT_ICON_UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    .line 5
    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "FACEBOOK_ICON_UPDATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->FACEBOOK_ICON_UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "INVITE_FRIEND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->INVITE_FRIEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "RELOAD_RECOMMEND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->RELOAD_RECOMMEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "REMOVE_RECOMMEND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->REMOVE_RECOMMEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    .line 6
    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "RELOAD_FRIEND_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->RELOAD_FRIEND_LIST:Lcom/liquable/nemo/friend/model/FriendEvent;

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    const-string/jumbo v1, "HAS_NEW_ONE_WAY_FRIEND"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->HAS_NEW_ONE_WAY_FRIEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/liquable/nemo/friend/model/FriendEvent;

    sget-object v1, Lcom/liquable/nemo/friend/model/FriendEvent;->ADD:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/friend/model/FriendEvent;->DELETE:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/friend/model/FriendEvent;->UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/friend/model/FriendEvent;->IMPORT:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/friend/model/FriendEvent;->BLOCKED:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->UNBLOCKED:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->ACCOUNT_ICON_UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->FACEBOOK_ICON_UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->INVITE_FRIEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->RELOAD_RECOMMEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->REMOVE_RECOMMEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->RELOAD_FRIEND_LIST:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->HAS_NEW_ONE_WAY_FRIEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->$VALUES:[Lcom/liquable/nemo/friend/model/FriendEvent;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/FriendEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/friend/model/FriendEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/friend/model/FriendEvent;->$VALUES:[Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/friend/model/FriendEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/friend/model/FriendEvent;

    return-object v0
.end method
