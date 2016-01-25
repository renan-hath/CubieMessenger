.class public abstract Lcom/liquable/nemo/notice/BaseSystemNotice;
.super Lcom/liquable/nemo/notice/BaseNotice;
.source "BaseSystemNotice.java"


# instance fields
.field private final noticeTime:Ljava/util/Date;

.field private final systemId:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "noticeTime"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/notice/BaseNotice;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->title:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->systemId:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->noticeTime:Ljava/util/Date;

    .line 41
    return-void
.end method

.method public static createFromDto(Lcom/liquable/nemo/notice/ISystemNoticeDto;)Lcom/liquable/nemo/notice/BaseSystemNotice;
    .locals 3
    .param p0, "noticeDto"    # Lcom/liquable/nemo/notice/ISystemNoticeDto;

    .prologue
    .line 11
    instance-of v0, p0, Lcom/liquable/nemo/notice/NewStickerSystemNoticeDto;

    if-eqz v0, :cond_0

    .line 12
    check-cast p0, Lcom/liquable/nemo/notice/NewStickerSystemNoticeDto;

    .end local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    invoke-static {p0}, Lcom/liquable/nemo/notice/NewStickerNotice;->create(Lcom/liquable/nemo/notice/NewStickerSystemNoticeDto;)Lcom/liquable/nemo/notice/NewStickerNotice;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    .line 13
    .restart local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    :cond_0
    instance-of v0, p0, Lcom/liquable/nemo/notice/UrlSystemNoticeDto;

    if-eqz v0, :cond_1

    .line 14
    check-cast p0, Lcom/liquable/nemo/notice/UrlSystemNoticeDto;

    .end local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    invoke-static {p0}, Lcom/liquable/nemo/notice/UrlNotice;->create(Lcom/liquable/nemo/notice/UrlSystemNoticeDto;)Lcom/liquable/nemo/notice/UrlNotice;

    move-result-object v0

    goto :goto_0

    .line 15
    .restart local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    :cond_1
    instance-of v0, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;

    if-eqz v0, :cond_2

    .line 16
    check-cast p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;

    .end local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    invoke-static {p0}, Lcom/liquable/nemo/notice/HtmlNotice;->create(Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;)Lcom/liquable/nemo/notice/HtmlNotice;

    move-result-object v0

    goto :goto_0

    .line 17
    .restart local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    :cond_2
    instance-of v0, p0, Lcom/liquable/nemo/notice/StickerThumbnailSystemNoticeDto;

    if-eqz v0, :cond_3

    .line 18
    check-cast p0, Lcom/liquable/nemo/notice/StickerThumbnailSystemNoticeDto;

    .end local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    invoke-static {p0}, Lcom/liquable/nemo/notice/StickerThumbnailNotice;->create(Lcom/liquable/nemo/notice/StickerThumbnailSystemNoticeDto;)Lcom/liquable/nemo/notice/StickerThumbnailNotice;

    move-result-object v0

    goto :goto_0

    .line 19
    .restart local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    :cond_3
    instance-of v0, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;

    if-eqz v0, :cond_4

    .line 20
    check-cast p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;

    .end local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    invoke-static {p0}, Lcom/liquable/nemo/notice/ReactivationStickerNotice;->create(Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;)Lcom/liquable/nemo/notice/ReactivationStickerNotice;

    move-result-object v0

    goto :goto_0

    .line 21
    .restart local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    :cond_4
    instance-of v0, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;

    if-eqz v0, :cond_5

    .line 22
    check-cast p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;

    .end local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    invoke-static {p0}, Lcom/liquable/nemo/notice/VersionNotice;->create(Lcom/liquable/nemo/notice/VersionSystemNoticeDto;)Lcom/liquable/nemo/notice/VersionNotice;

    move-result-object v0

    goto :goto_0

    .line 23
    .restart local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    :cond_5
    instance-of v0, p0, Lcom/liquable/nemo/notice/UnknownNoticeDto;

    if-eqz v0, :cond_6

    .line 24
    check-cast p0, Lcom/liquable/nemo/notice/UnknownNoticeDto;

    .end local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    invoke-static {p0}, Lcom/liquable/nemo/notice/PlainNotice;->fallback(Lcom/liquable/nemo/notice/UnknownNoticeDto;)Lcom/liquable/nemo/notice/PlainNotice;

    move-result-object v0

    goto :goto_0

    .line 26
    .restart local p0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected notice dto class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    invoke-super {p0, p1}, Lcom/liquable/nemo/notice/BaseNotice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 52
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/liquable/nemo/notice/BaseSystemNotice;

    .line 55
    .local v0, "other":Lcom/liquable/nemo/notice/BaseSystemNotice;
    iget-object v3, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->systemId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 56
    iget-object v3, v0, Lcom/liquable/nemo/notice/BaseSystemNotice;->systemId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->systemId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/BaseSystemNotice;->systemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 60
    goto :goto_0
.end method

.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/BaseSystemNotice;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoticeTime()Ljava/util/Date;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->noticeTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 88
    const/16 v0, 0x1f

    .line 89
    .local v0, "prime":I
    invoke-super {p0}, Lcom/liquable/nemo/notice/BaseNotice;->hashCode()I

    move-result v1

    .line 90
    .local v1, "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->systemId:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 91
    return v1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->systemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BaseSystemNotice [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", noticeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/BaseSystemNotice;->noticeTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/BaseSystemNotice;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getNoticeType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/BaseSystemNotice;->getNoticeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isHidden()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/BaseSystemNotice;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isRead()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/BaseSystemNotice;->isRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
