.class public Lcom/liquable/nemo/message/model/CustomStickerMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "CustomStickerMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x467cf5fe92f2a596L


# instance fields
.field private final customStickerCode:Ljava/lang/String;

.field private final effectHeight:I

.field private final effectKeyPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final effectOffsetX:I

.field private final effectOffsetY:I

.field private final effectWidth:I

.field private final height:I

.field private final keyPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s3endpoint:Ljava/lang/String;

.field private final width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IILjava/util/List;IIII)V
    .locals 2
    .param p1, "customStickerCode"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "customStickerCode"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "keyPaths"
        .end annotation
    .end param
    .param p3, "s3endpoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "s3endpoint"
        .end annotation
    .end param
    .param p4, "width"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "width"
        .end annotation
    .end param
    .param p5, "height"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "height"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "effectKeyPaths"
        .end annotation
    .end param
    .param p7, "effectOffsetX"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "effectOffsetX"
        .end annotation
    .end param
    .param p8, "effectOffsetY"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "effectOffsetY"
        .end annotation
    .end param
    .param p9, "effectWidth"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "effectWidth"
        .end annotation
    .end param
    .param p10, "effectHeight"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "effectHeight"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIII)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 73
    .local p2, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "effectKeyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 74
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "code should not be null"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->customStickerCode:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->keyPaths:Ljava/util/List;

    .line 77
    iput-object p3, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->s3endpoint:Ljava/lang/String;

    .line 78
    iput p4, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->width:I

    .line 79
    iput p5, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->height:I

    .line 80
    iput-object p6, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectKeyPaths:Ljava/util/List;

    .line 81
    iput p7, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectOffsetX:I

    .line 82
    iput p8, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectOffsetY:I

    .line 83
    iput p9, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectWidth:I

    .line 84
    iput p10, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectHeight:I

    .line 85
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createBySender(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/message/model/CustomStickerMessage;
    .locals 11
    .param p0, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 26
    new-instance v0, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getCustomStickerCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getKeyPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 28
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getS3endpoint()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getWidth()I

    move-result v4

    .line 30
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getHeight()I

    move-result v5

    .line 31
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v6

    .line 32
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectOffsetX()I

    move-result v7

    .line 33
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectOffsetY()I

    move-result v8

    .line 34
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectWidth()I

    move-result v9

    .line 35
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectHeight()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/liquable/nemo/message/model/CustomStickerMessage;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IILjava/util/List;IIII)V

    .line 36
    .local v0, "message":Lcom/liquable/nemo/message/model/CustomStickerMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->initial()V

    .line 37
    return-object v0
.end method


# virtual methods
.method public getAnimatedKeyPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectKeyPaths:Ljava/util/List;

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->keyPaths:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectKeyPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->createAnimatedKeyPaths(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01e0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomStickerCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->customStickerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectFileKeyPaths()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "keyPathPairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, "keyPath":Ljava/lang/String;
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    invoke-direct {v4, v0}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v0    # "keyPath":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getEffectHeight()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectHeight:I

    return v0
.end method

.method public getEffectKeyPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectKeyPaths:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectKeyPaths:Ljava/util/List;

    goto :goto_0
.end method

.method public getEffectLocalKeyPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v2, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectKeyPaths:Ljava/util/List;

    if-nez v2, :cond_1

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 138
    :cond_0
    return-object v1

    .line 133
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, "localKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    iget-object v2, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectKeyPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "keyPath":Ljava/lang/String;
    new-instance v3, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    invoke-direct {v3, v0}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEffectOffsetX()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 143
    iget v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectOffsetX:I

    return v0
.end method

.method public getEffectOffsetY()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 148
    iget v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectOffsetY:I

    return v0
.end method

.method public getEffectWidth()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 153
    iget v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->effectWidth:I

    return v0
.end method

.method public getFirstEffectKeyPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 165
    iget v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->height:I

    return v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->CUSTOM_STICKER_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 173
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->CUSTOM_STICKER_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public getKeyPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->keyPaths:Ljava/util/List;

    return-object v0
.end method

.method public getLocalKeyPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, "localKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    iget-object v2, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->keyPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    .local v0, "keyPath":Ljava/lang/String;
    new-instance v3, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    invoke-direct {v3, v0}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0    # "keyPath":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 192
    const v0, 0x7f0d031d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "params":[Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteKeyPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "remoteKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    iget-object v2, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->keyPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, "keyPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->s3endpoint:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    .end local v0    # "keyPath":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getS3endpoint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->s3endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondEffectKeyPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getStickerFileKeyPaths()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, "keyPathPairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;>;"
    iget-object v2, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->keyPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, "keyPath":Ljava/lang/String;
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    invoke-direct {v4, v0}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->s3endpoint:Ljava/lang/String;

    .line 223
    invoke-static {v5, v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v0    # "keyPath":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getWidth()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lcom/liquable/nemo/message/model/CustomStickerMessage;->width:I

    return v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method
