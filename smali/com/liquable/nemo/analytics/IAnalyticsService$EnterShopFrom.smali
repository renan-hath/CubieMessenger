.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnterShopFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

.field public static final enum chattinglite:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

.field public static final enum emoji_widget:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

.field public static final enum main:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

.field public static final enum main_chat_group_list:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    const-string/jumbo v1, "emoji_widget"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->emoji_widget:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    .line 49
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    const-string/jumbo v1, "chattinglite"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->chattinglite:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    .line 50
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    const-string/jumbo v1, "main"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->main:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    .line 51
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    const-string/jumbo v1, "main_chat_group_list"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->main_chat_group_list:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->emoji_widget:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->chattinglite:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->main:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->main_chat_group_list:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    return-object v0
.end method
