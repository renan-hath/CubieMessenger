.class public final Lcom/aviary/android/feather/library/services/LocalDataService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "LocalDataService.java"


# instance fields
.field private destImageUri:Landroid/net/Uri;

.field private exifBundle:Landroid/os/Bundle;

.field private mEnableFastPreview:Ljava/lang/Boolean;

.field private mOriginalIntent:Landroid/content/Intent;

.field private outputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private sourceImagePath:Ljava/lang/String;

.field private sourceImageSize:[I

.field private sourceImageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 23
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->outputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->sourceImageSize:[I

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->exifBundle:Landroid/os/Bundle;

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->mOriginalIntent:Landroid/content/Intent;

    .line 36
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public final declared-synchronized getDestImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->destImageUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExternalPacksEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 234
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->getExternalPacksEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getExternalPacksEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->getExternalPacksEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getExternalPacksEnabled(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 183
    packed-switch p1, :pswitch_data_0

    .line 192
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 185
    :pswitch_1
    const-string/jumbo v0, "effect-enable-external-pack"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 187
    :pswitch_2
    const-string/jumbo v0, "frames-enable-external-pack"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 189
    :pswitch_3
    const-string/jumbo v0, "stickers-enable-external-pack"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFastPreviewEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 249
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->mEnableFastPreview:Ljava/lang/Boolean;

    if-nez v5, :cond_0

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "value":Z
    const-string/jumbo v5, "effect-enable-fast-preview"

    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentContainsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    const-string/jumbo v3, "effect-enable-fast-preview"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 264
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->mEnableFastPreview:Ljava/lang/Boolean;

    .line 266
    .end local v2    # "value":Z
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->mEnableFastPreview:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 255
    .restart local v2    # "value":Z
    :cond_1
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getCpuMhz()I

    move-result v0

    .line 257
    .local v0, "mhz":I
    if-lez v0, :cond_3

    .line 258
    const/16 v5, 0x3e8

    if-lt v0, v5, :cond_2

    move v2, v3

    .line 259
    :goto_1
    goto :goto_0

    :cond_2
    move v2, v4

    .line 258
    goto :goto_1

    .line 260
    :cond_3
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getCpuSpeed()F

    move-result v1

    .line 261
    .local v1, "speed":F
    const/high16 v5, 0x44af0000    # 1400.0f

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_4

    move v2, v3

    :goto_2
    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_2
.end method

.method public getIntentContainsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 155
    .local v2, "value":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    move-object p2, v2

    .line 159
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p2

    .line 151
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public final declared-synchronized getOriginalExifBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->exifBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getOutputFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->outputFormat:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSourceImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->sourceImagePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSourceImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->sourceImageUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final declared-synchronized setDestImageUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "destImageUri"    # Landroid/net/Uri;

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->destImageUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setOriginalExifBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->exifBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 125
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->exifBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOriginalIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->mOriginalIntent:Landroid/content/Intent;

    .line 47
    return-void
.end method

.method public final declared-synchronized setOutputFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1
    .param p1, "outputFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->outputFormat:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setSourceImagePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceImagePath"    # Ljava/lang/String;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->sourceImagePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSourceImageSize([I)V
    .locals 4
    .param p1, "value"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->sourceImageSize:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 88
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->sourceImageSize:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 89
    return-void
.end method

.method public final declared-synchronized setSourceImageUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "sourceImageUri"    # Landroid/net/Uri;

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/LocalDataService;->sourceImageUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
