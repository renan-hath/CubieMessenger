.class public Lcom/liquable/nemo/map/SharableLocation;
.super Ljava/lang/Object;
.source "SharableLocation.java"

# interfaces
.implements Lcom/liquable/nemo/share/Sharable;
.implements Ljava/io/Serializable;


# static fields
.field private static _1E6:I = 0x0

.field private static final serialVersionUID:J = 0x244e65545897d9f3L


# instance fields
.field private final address:Ljava/lang/String;

.field private final latitude:D

.field private final longitude:D

.field private final zoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0xf4240

    sput v0, Lcom/liquable/nemo/map/SharableLocation;->_1E6:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDI)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "zoom"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/map/SharableLocation;->address:Ljava/lang/String;

    .line 45
    iput p6, p0, Lcom/liquable/nemo/map/SharableLocation;->zoom:I

    .line 46
    iput-wide p2, p0, Lcom/liquable/nemo/map/SharableLocation;->latitude:D

    .line 47
    iput-wide p4, p0, Lcom/liquable/nemo/map/SharableLocation;->longitude:D

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/location/Location;I)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/location/Location;
    .param p3, "zoom"    # I

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/map/SharableLocation;-><init>(Ljava/lang/String;DDI)V

    .line 52
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/map/SharableLocation;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const-class v0, Lcom/liquable/nemo/map/SharableLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/map/SharableLocation;

    return-object v0
.end method

.method public static fromMessage(Lcom/liquable/nemo/message/model/LocationMessage;)Lcom/liquable/nemo/map/SharableLocation;
    .locals 7
    .param p0, "message"    # Lcom/liquable/nemo/message/model/LocationMessage;

    .prologue
    .line 24
    new-instance v0, Lcom/liquable/nemo/map/SharableLocation;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getLatitude()D

    move-result-wide v2

    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getLongitude()D

    move-result-wide v4

    .line 27
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getZoom()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/map/SharableLocation;-><init>(Ljava/lang/String;DDI)V

    return-object v0
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/map/SharableLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/map/SharableLocation;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getCenter()Lcom/google/android/maps/GeoPoint;
    .locals 6

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    iget-wide v1, p0, Lcom/liquable/nemo/map/SharableLocation;->latitude:D

    sget v3, Lcom/liquable/nemo/map/SharableLocation;->_1E6:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/liquable/nemo/map/SharableLocation;->longitude:D

    sget v4, Lcom/liquable/nemo/map/SharableLocation;->_1E6:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/liquable/nemo/map/SharableLocation;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/liquable/nemo/map/SharableLocation;->longitude:D

    return-wide v0
.end method

.method public final getZoom()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/liquable/nemo/map/SharableLocation;->zoom:I

    return v0
.end method

.method public share(Landroid/content/Context;Ljava/util/List;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendLocationMessage(Ljava/util/List;)V

    .line 83
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p2, p0}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendLocationMessages(Ljava/util/List;Lcom/liquable/nemo/map/SharableLocation;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 88
    const-string/jumbo v0, "geo:0,0?q=%1$s,%2$s(%4$s)&z=%3$s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/liquable/nemo/map/SharableLocation;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/liquable/nemo/map/SharableLocation;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 91
    invoke-virtual {p0}, Lcom/liquable/nemo/map/SharableLocation;->getZoom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 92
    invoke-virtual {p0}, Lcom/liquable/nemo/map/SharableLocation;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 88
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
