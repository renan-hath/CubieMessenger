.class public Lcom/liquable/nemo/message/model/OpenApiAppMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "OpenApiAppMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6ca80c76aadf42a5L


# instance fields
.field private final appName:Ljava/lang/String;

.field private final buttonGooglePlayUrl:Ljava/lang/String;

.field private final buttonImageUrl:Ljava/lang/String;

.field private final buttonText:Ljava/lang/String;

.field private final buttonUrlForAndroid:Ljava/lang/String;

.field private final buttonUrlForIos:Ljava/lang/String;

.field private final googlePlayUrlAsApkUrl:Z

.field private final imageHeight:I

.field private final imageUrl:Ljava/lang/String;

.field private final imageWidth:I

.field private final ipadAppStoreUrl:Ljava/lang/String;

.field private final iphoneAppStoreUrl:Ljava/lang/String;

.field private final linkGooglePlayUrl:Ljava/lang/String;

.field private final linkText:Ljava/lang/String;

.field private final linkUrlForAndroid:Ljava/lang/String;

.field private final linkUrlForIos:Ljava/lang/String;

.field private final notification:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "appName"
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "text"
        .end annotation
    .end param
    .param p3, "notification"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "notification"
        .end annotation
    .end param
    .param p4, "imageUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "imageUrl"
        .end annotation
    .end param
    .param p5, "imageWidth"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "imageWidth"
        .end annotation
    .end param
    .param p6, "imageHeight"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "imageHeight"
        .end annotation
    .end param
    .param p7, "linkText"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "linkText"
        .end annotation
    .end param
    .param p8, "linkUrlForAndroid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "linkUrlForAndroid"
        .end annotation
    .end param
    .param p9, "linkUrlForIos"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "linkUrlForIos"
        .end annotation
    .end param
    .param p10, "linkGooglePlayUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "linkGooglePlayUrl"
        .end annotation
    .end param
    .param p11, "googlePlayUrlAsApkUrl"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "googlePlayUrlAsApkUrl"
        .end annotation
    .end param
    .param p12, "buttonText"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "buttonText"
        .end annotation
    .end param
    .param p13, "buttonImageUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "buttonImageUrl"
        .end annotation
    .end param
    .param p14, "buttonUrlForAndroid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "buttonUrlForAndroid"
        .end annotation
    .end param
    .param p15, "buttonUrlForIos"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "buttonUrlForIos"
        .end annotation
    .end param
    .param p16, "buttonGooglePlayUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "buttonGooglePlayUrl"
        .end annotation
    .end param
    .param p17, "iphoneAppStoreUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iphoneAppStoreUrl"
        .end annotation
    .end param
    .param p18, "ipadAppStoreUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "ipadAppStoreUrl"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->appName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->text:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->notification:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageUrl:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageWidth:I

    .line 63
    iput p6, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageHeight:I

    .line 64
    iput-object p7, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkText:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkUrlForAndroid:Ljava/lang/String;

    .line 66
    iput-object p9, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkUrlForIos:Ljava/lang/String;

    .line 67
    iput-object p10, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkGooglePlayUrl:Ljava/lang/String;

    .line 68
    iput-boolean p11, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->googlePlayUrlAsApkUrl:Z

    .line 69
    iput-object p12, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonText:Ljava/lang/String;

    .line 70
    iput-object p13, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonImageUrl:Ljava/lang/String;

    .line 71
    iput-object p14, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonUrlForAndroid:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonUrlForIos:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonGooglePlayUrl:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->iphoneAppStoreUrl:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->ipadAppStoreUrl:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getNotification()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getButtonGooglePlayUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonGooglePlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonImageUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonUrlForAndroid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonUrlForAndroid:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonUrlForIos()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonUrlForIos:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageHeight:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 125
    iget v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageWidth:I

    return v0
.end method

.method public getIpadAppStoreUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->ipadAppStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIphoneAppStoreUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->iphoneAppStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->OPEN_API_APP_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->OPEN_API_APP_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public varargs getLastMsgText(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getNotification()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkGooglePlayUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkGooglePlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkText:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrlForAndroid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkUrlForAndroid:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrlForIos()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkUrlForIos:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->notification:Ljava/lang/String;

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getNotification()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppButton()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonText:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAppLink()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkText:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public isGooglePlayUrlAsApkUrl()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->googlePlayUrlAsApkUrl:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OpenApiAppMessage [appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->imageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", linkText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", linkUrlForAndroid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkUrlForAndroid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", linkUrlForIos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkUrlForIos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", linkGooglePlayUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->linkGooglePlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", buttonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", buttonImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", buttonUrlForAndroid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonUrlForAndroid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", buttonUrlForIos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonUrlForIos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", buttonGooglePlayUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->buttonGooglePlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iphoneAppStoreUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->iphoneAppStoreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ipadAppStoreUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->ipadAppStoreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", googlePlayUrlAsApkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->googlePlayUrlAsApkUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->notification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
