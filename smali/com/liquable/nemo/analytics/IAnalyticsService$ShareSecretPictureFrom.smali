.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareSecretPictureFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

.field public static final enum camera:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

.field public static final enum gallery:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

.field public static final enum paint:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    const-string/jumbo v1, "gallery"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->gallery:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    .line 105
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    const-string/jumbo v1, "camera"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->camera:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    .line 106
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    const-string/jumbo v1, "paint"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->paint:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->gallery:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->camera:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->paint:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    return-object v0
.end method
