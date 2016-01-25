.class public Lcom/liquable/nemo/share/SharableVideo;
.super Ljava/lang/Object;
.source "SharableVideo.java"

# interfaces
.implements Lcom/liquable/nemo/share/Sharable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x19856caa00e93ee2L


# instance fields
.field private final camera:Z

.field private final data:Ljava/lang/String;

.field private final duration:J

.field private final facing:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ZJLcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;)V
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "camera"    # Z
    .param p3, "duration"    # J
    .param p5, "facing"    # Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/SharableVideo;->data:Ljava/lang/String;

    .line 41
    iput-boolean p2, p0, Lcom/liquable/nemo/share/SharableVideo;->camera:Z

    .line 42
    iput-wide p3, p0, Lcom/liquable/nemo/share/SharableVideo;->duration:J

    .line 43
    iput-object p5, p0, Lcom/liquable/nemo/share/SharableVideo;->facing:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    .line 44
    return-void
.end method

.method public static exists(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const-class v0, Lcom/liquable/nemo/share/SharableVideo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharableVideo;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    const-class v0, Lcom/liquable/nemo/share/SharableVideo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/SharableVideo;

    return-object v0
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/share/SharableVideo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/share/SharableVideo;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/liquable/nemo/share/SharableVideo;->duration:J

    return-wide v0
.end method

.method public getFacing()Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/share/SharableVideo;->facing:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/liquable/nemo/share/SharableVideo;->camera:Z

    return v0
.end method

.method public share(Landroid/content/Context;Ljava/util/List;)Z
    .locals 6
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
    .line 70
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharableVideo;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 74
    :cond_0
    instance-of v0, p1, Lcom/liquable/nemo/chat/ChattingActivity;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 77
    .local v2, "via":Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    :goto_1
    iget-boolean v0, p0, Lcom/liquable/nemo/share/SharableVideo;->camera:Z

    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharableVideo;->getFacing()Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    move-result-object v3

    iget-wide v4, p0, Lcom/liquable/nemo/share/SharableVideo;->duration:J

    move-object v1, p2

    .line 78
    invoke-interface/range {v0 .. v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendCameraVideoMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;J)V

    .line 86
    :goto_2
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharableVideo;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendVideoMessages(Ljava/util/List;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0

    .line 74
    .end local v2    # "via":Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    :cond_1
    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->main:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    goto :goto_1

    .line 83
    .restart local v2    # "via":Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    :cond_2
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p2, v2, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendVideoMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SharableVideo [data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/share/SharableVideo;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/share/SharableVideo;->camera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/share/SharableVideo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/share/SharableVideo;->facing:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
