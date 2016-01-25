.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InviteFriendFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

.field public static final enum facebook:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

.field public static final enum recommend:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

.field public static final enum recommend_in_main:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

.field public static final enum resend:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

.field public static final enum search_cubie_id:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

.field public static final enum space:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

.field public static final enum twitter:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    const-string/jumbo v1, "facebook"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->facebook:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .line 60
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    const-string/jumbo v1, "twitter"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->twitter:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .line 61
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    const-string/jumbo v1, "search_cubie_id"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->search_cubie_id:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .line 62
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    const-string/jumbo v1, "recommend"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->recommend:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .line 63
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    const-string/jumbo v1, "recommend_in_main"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->recommend_in_main:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .line 64
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    const-string/jumbo v1, "resend"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->resend:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .line 65
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    const-string/jumbo v1, "space"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->space:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->facebook:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->twitter:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->search_cubie_id:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->recommend:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->recommend_in_main:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->resend:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->space:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    return-object v0
.end method
