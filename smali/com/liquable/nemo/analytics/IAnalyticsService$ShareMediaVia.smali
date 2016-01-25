.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareMediaVia"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

.field public static final EXTERNAL_VIAS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum camera:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

.field public static final enum chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

.field public static final enum detected_external_image:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

.field public static final enum external_intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

.field public static final enum main:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

.field public static final enum share_board:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    const-string/jumbo v1, "chat"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 91
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    const-string/jumbo v1, "main"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->main:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 92
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    const-string/jumbo v1, "external_intent"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->external_intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 93
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    const-string/jumbo v1, "share_board"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->share_board:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 94
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    const-string/jumbo v1, "camera"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->camera:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 95
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    const-string/jumbo v1, "detected_external_image"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->detected_external_image:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 89
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->main:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->external_intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->share_board:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->camera:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->detected_external_image:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 97
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->external_intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->share_board:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->detected_external_image:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->EXTERNAL_VIAS:Ljava/util/EnumSet;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    return-object v0
.end method
