.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowCaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

.field public static final enum effect:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

.field public static final enum forum:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

.field public static final enum forum_article_list:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

.field public static final enum gallery:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

.field public static final enum secret:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    const-string/jumbo v1, "gallery"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->gallery:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    .line 117
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    const-string/jumbo v1, "effect"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->effect:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    .line 118
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    const-string/jumbo v1, "secret"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->secret:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    .line 119
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    const-string/jumbo v1, "forum"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->forum:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    .line 120
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    const-string/jumbo v1, "forum_article_list"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->forum_article_list:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->gallery:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->effect:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->secret:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->forum:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->forum_article_list:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    return-object v0
.end method
