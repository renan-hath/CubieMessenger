.class public Lcom/liquable/nemo/share/SharablePhoto;
.super Ljava/lang/Object;
.source "SharablePhoto.java"

# interfaces
.implements Lcom/liquable/nemo/share/Sharable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x28956c92f3081a42L


# instance fields
.field private final camera:Z

.field private final data:Ljava/lang/String;

.field private final pictureParameters:Lcom/liquable/nemo/analytics/PictureParameters;

.field private final secret:Z

.field private final text:Ljava/lang/String;

.field private final via:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;ZZLcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;)V
    .locals 2
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "secret"    # Z
    .param p4, "camera"    # Z
    .param p5, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .param p6, "pictureParameters"    # Lcom/liquable/nemo/analytics/PictureParameters;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p5, p0, Lcom/liquable/nemo/share/SharablePhoto;->via:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 58
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/SharablePhoto;->data:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/liquable/nemo/share/SharablePhoto;->text:Ljava/lang/String;

    .line 60
    iput-boolean p3, p0, Lcom/liquable/nemo/share/SharablePhoto;->secret:Z

    .line 61
    iput-boolean p4, p0, Lcom/liquable/nemo/share/SharablePhoto;->camera:Z

    .line 62
    iput-object p6, p0, Lcom/liquable/nemo/share/SharablePhoto;->pictureParameters:Lcom/liquable/nemo/analytics/PictureParameters;

    .line 63
    sget-object v1, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p6, v1, v0}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->use_native_camera:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isUseNativeCamera()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p6, v0, v1}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static exists(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    const-class v0, Lcom/liquable/nemo/share/SharablePhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharablePhoto;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    const-class v0, Lcom/liquable/nemo/share/SharablePhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/SharablePhoto;

    return-object v0
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/share/SharablePhoto;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    return-object v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/share/SharablePhoto;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPictureParameters()Lcom/liquable/nemo/analytics/PictureParameters;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/share/SharablePhoto;->pictureParameters:Lcom/liquable/nemo/analytics/PictureParameters;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/share/SharablePhoto;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/liquable/nemo/share/SharablePhoto;->camera:Z

    return v0
.end method

.method public isFromExternal()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/share/SharablePhoto;->via:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->external_intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecret()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/liquable/nemo/share/SharablePhoto;->secret:Z

    return v0
.end method

.method public share(Landroid/content/Context;Ljava/util/List;)Z
    .locals 15
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
    .line 101
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 102
    const/4 v14, 0x0

    .line 156
    :goto_0
    return v14

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v13

    check-cast v13, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 106
    .local v13, "picInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    if-nez v13, :cond_1

    const/4 v5, 0x0

    .line 107
    .local v5, "rotateDegree":I
    :goto_1
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 109
    .local v4, "fileUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 114
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->getText()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 110
    invoke-virtual/range {v1 .. v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendSecretPictureMessages(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)Z

    move-result v14

    .line 116
    .local v14, "result":Z
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    sget-object v7, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->camera:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    iget-object v9, p0, Lcom/liquable/nemo/share/SharablePhoto;->via:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    iget-object v10, p0, Lcom/liquable/nemo/share/SharablePhoto;->pictureParameters:Lcom/liquable/nemo/analytics/PictureParameters;

    const/4 v11, 0x1

    move-object/from16 v8, p2

    .line 118
    invoke-interface/range {v6 .. v11}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendSecretPictureMessage(Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;I)V

    .line 127
    new-instance v12, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v12, "fileToDelete":Ljava/io/File;
    invoke-static {v12}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 129
    sget-object v2, Lcom/liquable/nemo/chat/ImagePreviewActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete secret from camera:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 131
    invoke-static {v12}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "failed"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v2, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/liquable/nemo/camera/model/CameraManager;->intentRefreshGallery(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 106
    .end local v4    # "fileUri":Landroid/net/Uri;
    .end local v5    # "rotateDegree":I
    .end local v12    # "fileToDelete":Ljava/io/File;
    .end local v14    # "result":Z
    :cond_1
    invoke-virtual {v13}, Lcom/liquable/nemo/android/provider/PictureInfo;->getRotateDegree()I

    move-result v5

    goto :goto_1

    .line 131
    .restart local v4    # "fileUri":Landroid/net/Uri;
    .restart local v5    # "rotateDegree":I
    .restart local v12    # "fileToDelete":Ljava/io/File;
    .restart local v14    # "result":Z
    :cond_2
    const-string/jumbo v1, "successful"

    goto :goto_2

    .line 134
    .end local v12    # "fileToDelete":Ljava/io/File;
    :cond_3
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    sget-object v7, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->gallery:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    iget-object v9, p0, Lcom/liquable/nemo/share/SharablePhoto;->via:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    iget-object v10, p0, Lcom/liquable/nemo/share/SharablePhoto;->pictureParameters:Lcom/liquable/nemo/analytics/PictureParameters;

    const/4 v11, 0x1

    move-object/from16 v8, p2

    .line 135
    invoke-interface/range {v6 .. v11}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendSecretPictureMessage(Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;I)V

    goto/16 :goto_0

    .line 144
    .end local v14    # "result":Z
    :cond_4
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;->normal:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    iget-object v3, p0, Lcom/liquable/nemo/share/SharablePhoto;->via:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    iget-object v6, p0, Lcom/liquable/nemo/share/SharablePhoto;->pictureParameters:Lcom/liquable/nemo/analytics/PictureParameters;

    move-object/from16 v0, p2

    invoke-interface {v1, v0, v2, v3, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendCameraPictureMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;)V

    .line 156
    :goto_3
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 160
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SharablePhoto;->getText()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 156
    invoke-virtual/range {v1 .. v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendPictureMessages(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)Z

    move-result v14

    goto/16 :goto_0

    .line 150
    :cond_5
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/share/SharablePhoto;->via:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/liquable/nemo/share/SharablePhoto;->pictureParameters:Lcom/liquable/nemo/analytics/PictureParameters;

    move-object/from16 v0, p2

    invoke-interface {v1, v0, v2, v3, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendPictureMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;ILcom/liquable/nemo/analytics/PictureParameters;)V

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SharablePhoto [data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/share/SharablePhoto;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/share/SharablePhoto;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/share/SharablePhoto;->secret:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/share/SharablePhoto;->camera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", via="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/share/SharablePhoto;->via:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pictureParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/share/SharablePhoto;->pictureParameters:Lcom/liquable/nemo/analytics/PictureParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
