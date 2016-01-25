.class final enum Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;
.super Ljava/lang/Enum;
.source "MixpanelAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MixpanelEnv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

.field public static final enum PRODUCTION:Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

.field public static final enum STAGE:Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    const-string/jumbo v1, "STAGE"

    const-string/jumbo v2, "41dc370141cadadddff455d682a622d2"

    invoke-direct {v0, v1, v3, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->STAGE:Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    new-instance v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    const-string/jumbo v1, "PRODUCTION"

    const-string/jumbo v2, "9ff643773fa6e721ead2907318dff588"

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->PRODUCTION:Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    sget-object v1, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->STAGE:Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->PRODUCTION:Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->$VALUES:[Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p3, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->token:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->PRODUCTION:Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->STAGE:Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->$VALUES:[Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    return-object v0
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->token:Ljava/lang/String;

    return-object v0
.end method
