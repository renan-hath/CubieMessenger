.class public interface abstract Lcom/liquable/nemo/message/model/IMediaMessage;
.super Ljava/lang/Object;
.source "IMediaMessage.java"

# interfaces
.implements Lcom/liquable/nemo/message/model/IDomainMessage;


# static fields
.field public static final UNSPECIFIED_THUMBNAIL_EDGE:I = -0x1


# virtual methods
.method public abstract getAllLocalKeyPaths()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllRemoteKeyPaths()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
.end method

.method public abstract getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
.end method

.method public abstract getShareEvent()Ljava/lang/String;
.end method
