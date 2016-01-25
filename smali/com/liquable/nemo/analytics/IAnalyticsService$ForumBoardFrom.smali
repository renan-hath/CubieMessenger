.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForumBoardFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

.field public static final enum category:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

.field public static final enum creator:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

.field public static final enum favorite:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

.field public static final enum hot:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

.field public static final enum recommend:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

.field public static final enum search:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

.field public static final enum web:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    const-string/jumbo v1, "category"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->category:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    const-string/jumbo v1, "favorite"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->favorite:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    const-string/jumbo v1, "recommend"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->recommend:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    const-string/jumbo v1, "search"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->search:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    const-string/jumbo v1, "creator"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->creator:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    const-string/jumbo v1, "web"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->web:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    const-string/jumbo v1, "hot"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->hot:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->category:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->favorite:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->recommend:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->search:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->creator:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->web:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->hot:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    return-object v0
.end method
