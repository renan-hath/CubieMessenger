.class public interface abstract Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
.super Ljava/lang/Object;
.source "IForumBoardBannerItemDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# virtual methods
.method public abstract getAndroidClickUrl()Ljava/lang/String;
.end method

.method public abstract getForumBoardBannerId()Ljava/lang/String;
.end method

.method public abstract getiPadClickUrl()Ljava/lang/String;
.end method

.method public abstract getiPhoneClickUrl()Ljava/lang/String;
.end method
