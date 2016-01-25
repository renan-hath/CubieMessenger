.class final enum Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;
.super Ljava/lang/Enum;
.source "MainInviteFriendView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/main/MainInviteFriendView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InviteKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

.field public static final enum contacts:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

.field public static final enum cubieId:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

.field public static final enum facebook:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

.field public static final enum invites:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

.field public static final enum people_you_may_know:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

.field public static final enum twitter:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const-string/jumbo v1, "contacts"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->contacts:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    .line 39
    new-instance v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const-string/jumbo v1, "people_you_may_know"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->people_you_may_know:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    .line 40
    new-instance v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const-string/jumbo v1, "cubieId"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->cubieId:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    .line 41
    new-instance v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const-string/jumbo v1, "invites"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->invites:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    .line 42
    new-instance v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const-string/jumbo v1, "facebook"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->facebook:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    .line 43
    new-instance v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const-string/jumbo v1, "twitter"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->twitter:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    sget-object v1, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->contacts:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->people_you_may_know:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->cubieId:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->invites:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->facebook:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->twitter:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->$VALUES:[Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->$VALUES:[Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    invoke-virtual {v0}, [Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    return-object v0
.end method
