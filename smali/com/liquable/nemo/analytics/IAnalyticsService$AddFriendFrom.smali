.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddFriendFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

.field public static final enum add_all:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

.field public static final enum dialog_group_info:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

.field public static final enum dialog_long_click:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

.field public static final enum dialog_system_message:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

.field public static final enum profile:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

.field public static final enum receive_confirm:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

.field public static final enum receive_one_way_friend:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    const-string/jumbo v1, "dialog_group_info"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->dialog_group_info:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .line 25
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    const-string/jumbo v1, "dialog_system_message"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->dialog_system_message:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .line 26
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    const-string/jumbo v1, "dialog_long_click"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->dialog_long_click:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .line 27
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    const-string/jumbo v1, "add_all"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->add_all:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .line 28
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    const-string/jumbo v1, "profile"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->profile:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .line 29
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    const-string/jumbo v1, "receive_confirm"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->receive_confirm:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .line 30
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    const-string/jumbo v1, "receive_one_way_friend"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->receive_one_way_friend:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->dialog_group_info:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->dialog_system_message:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->dialog_long_click:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->add_all:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->profile:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->receive_confirm:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->receive_one_way_friend:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    return-object v0
.end method
