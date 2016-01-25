.class final enum Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;
.super Ljava/lang/Enum;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FollowResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

.field public static final enum ALREADY_FOLLOWING:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

.field public static final enum FAILED:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

.field public static final enum SUCCESS:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->SUCCESS:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    const-string/jumbo v1, "ALREADY_FOLLOWING"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->ALREADY_FOLLOWING:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->FAILED:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    sget-object v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->SUCCESS:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->ALREADY_FOLLOWING:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->FAILED:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->$VALUES:[Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    const-class v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->$VALUES:[Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    invoke-virtual {v0}, [Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowResult;

    return-object v0
.end method
