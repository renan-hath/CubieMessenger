.class public Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;
.super Landroid/content/Intent;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;
    }
.end annotation


# static fields
.field private static final CHAT_GROUP:Ljava/lang/String; = "CHAT_GROUP"

.field private static final FROM:Ljava/lang/String; = "FROM"

.field private static final IS_SECRET:Ljava/lang/String; = "IS_SECRET"

.field private static final OPEN_CAMERA:Ljava/lang/String; = "OPEN_CAMERA"

.field private static final OPEN_GALLERY:Ljava/lang/String; = "OPEN_GALLERY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 88
    return-void
.end method

.method public static fromChat(Landroid/content/Context;ZZZLcom/liquable/nemo/group/model/ChatGroup;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSecret"    # Z
    .param p2, "openCamera"    # Z
    .param p3, "openGallery"    # Z
    .param p4, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FROM"

    sget-object v2, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->CHAT:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "IS_SECRET"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "OPEN_CAMERA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "OPEN_GALLERY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string/jumbo v1, "CHAT_GROUP"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 112
    return-object v0
.end method

.method public static fromChatWithDataToEdit(Landroid/content/Context;ZLandroid/net/Uri;Lcom/liquable/nemo/group/model/ChatGroup;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSecret"    # Z
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FROM"

    sget-object v2, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->CHAT:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "IS_SECRET"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "CHAT_GROUP"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    return-object v0
.end method

.method public static fromDetectedExternalImage(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FROM"

    sget-object v2, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->DETECTED_EXTERNAL_IMAGE:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    return-object v0
.end method

.method public static fromExternalPicture(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FROM"

    sget-object v2, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->EXTERNAL:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    return-object v0
.end method

.method public static fromMain(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "openCamera"    # Z
    .param p2, "openGallery"    # Z

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FROM"

    sget-object v2, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->MAIN:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 153
    const-string/jumbo v1, "OPEN_CAMERA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string/jumbo v1, "OPEN_GALLERY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    return-object v0
.end method

.method public static getAlbumInfo(Landroid/content/Intent;)Lcom/liquable/nemo/gallery/AlbumInfo;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    const-class v0, Lcom/liquable/nemo/gallery/AlbumInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/gallery/AlbumInfo;

    return-object v0
.end method

.method public static getChatGroup(Landroid/content/Intent;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    const-string/jumbo v0, "CHAT_GROUP"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method public static getVia(Landroid/content/Intent;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$10;->$SwitchMap$com$liquable$nemo$chat$ImagePreviewActivity$CreateIntent$From:[I

    const-string/jumbo v0, "FROM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 181
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->main:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    goto :goto_0

    .line 171
    :pswitch_1
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    goto :goto_0

    .line 173
    :pswitch_2
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->external_intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    goto :goto_0

    .line 175
    :pswitch_3
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->camera:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    goto :goto_0

    .line 177
    :pswitch_4
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->detected_external_image:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isFromChat(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    const-string/jumbo v0, "FROM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->CHAT:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFromExternalIntentOrDetection(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 189
    const-string/jumbo v0, "FROM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->EXTERNAL:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "FROM"

    .line 190
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->DETECTED_EXTERNAL_IMAGE:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFromMain(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    const-string/jumbo v0, "FROM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;->MAIN:Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent$From;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpenCamera(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 198
    const-string/jumbo v1, "OPEN_CAMERA"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 199
    .local v0, "isOpenCamera":Z
    const-string/jumbo v1, "OPEN_CAMERA"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 200
    return v0
.end method

.method public static isOpenGallery(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    const-string/jumbo v1, "OPEN_GALLERY"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 205
    .local v0, "isOpenGallery":Z
    const-string/jumbo v1, "OPEN_GALLERY"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 206
    return v0
.end method

.method public static isSecret(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    const-string/jumbo v0, "IS_SECRET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
