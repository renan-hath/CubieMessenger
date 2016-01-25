.class public Lcom/liquable/nemo/friend/model/Account$Builder;
.super Ljava/lang/Object;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/model/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private becomeFriendTime:J

.field private beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

.field private blocked:Z

.field private description:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fbuid:Ljava/lang/String;

.field private final friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

.field private iconExists:Z

.field private isBroadcaster:Z

.field private lastSyncTime:J

.field private final lastUpdateTime:J

.field private lookupKey:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private nicknameFromContact:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private photoId:Ljava/lang/Long;

.field private final uid:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/friend/model/Account$FriendState;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lastUpdateTime"    # J
    .param p5, "friendState"    # Lcom/liquable/nemo/friend/model/Account$FriendState;
    .param p6, "username"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->uid:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->name:Ljava/lang/String;

    .line 50
    iput-wide p3, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->lastUpdateTime:J

    .line 51
    iput-object p5, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 52
    iput-object p6, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->username:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/friend/model/Account$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->blocked:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->nicknameFromContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/friend/model/Account$Builder;)Lcom/liquable/nemo/friend/model/Account$FriendState;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/friend/model/Account$Builder;)Lcom/liquable/nemo/friend/model/Account$FriendState;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/friend/model/Account$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/friend/model/Account$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->becomeFriendTime:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->fbuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->lookupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->photoId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/friend/model/Account$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/friend/model/Account$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists:Z

    return v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/friend/model/Account$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster:Z

    return v0
.end method


# virtual methods
.method public becomeFriendTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "becomeFriendTime"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->becomeFriendTime:J

    .line 57
    return-object p0
.end method

.method public beforeBlockFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "beforeBlockFriendState"    # Lcom/liquable/nemo/friend/model/Account$FriendState;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 62
    return-object p0
.end method

.method public blocked(Z)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "blocked"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->blocked:Z

    .line 67
    return-object p0
.end method

.method public build()Lcom/liquable/nemo/friend/model/Account;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/model/Account;-><init>(Lcom/liquable/nemo/friend/model/Account$Builder;)V

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->description:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public displayName(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->displayName:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public email(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->email:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public fbuid(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "fbuid"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->fbuid:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public iconExists(Z)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "iconExists"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists:Z

    .line 96
    return-object p0
.end method

.method public isBroadcaster(Z)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "isBroadcaster"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster:Z

    .line 101
    return-object p0
.end method

.method public lastSyncTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "lastSyncTime"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime:J

    .line 106
    return-object p0
.end method

.method public lookupKey(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->lookupKey:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public nicknameFromContact(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "nicknameFromContact"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->nicknameFromContact:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public phoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public photoId(Ljava/lang/Long;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "photoId"    # Ljava/lang/Long;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->photoId:Ljava/lang/Long;

    .line 126
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account$Builder;->username:Ljava/lang/String;

    .line 131
    return-object p0
.end method
