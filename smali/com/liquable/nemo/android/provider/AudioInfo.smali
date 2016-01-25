.class public Lcom/liquable/nemo/android/provider/AudioInfo;
.super Lcom/liquable/nemo/android/provider/MediaInfo;
.source "AudioInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/liquable/nemo/android/provider/AudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x64187bfee1c7923cL


# instance fields
.field private final albumId:Ljava/lang/String;

.field private final artist:Ljava/lang/String;

.field final logger:Lcom/liquable/nemo/util/Logger;

.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/liquable/nemo/android/provider/AudioInfo$1;

    invoke-direct {v0}, Lcom/liquable/nemo/android/provider/AudioInfo$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/android/provider/AudioInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/provider/MediaInfo;-><init>(Landroid/os/Parcel;)V

    .line 20
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->logger:Lcom/liquable/nemo/util/Logger;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->albumId:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->artist:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->suffix:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "albumId"    # Ljava/lang/String;
    .param p5, "artist"    # Ljava/lang/String;
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "suffix"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/liquable/nemo/android/provider/MediaInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->logger:Lcom/liquable/nemo/util/Logger;

    .line 57
    iput-object p4, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->albumId:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->artist:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->suffix:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getAlbumArtUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/liquable/nemo/android/provider/AudioInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/android/provider/AudioInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-gtz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v3

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "res":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 74
    invoke-virtual {p0}, Lcom/liquable/nemo/android/provider/AudioInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 73
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "album_art"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 80
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 85
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 94
    if-eqz v7, :cond_0

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 88
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 89
    .local v6, "albumArtUri":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 94
    if-eqz v7, :cond_0

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 92
    :cond_3
    :try_start_2
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 94
    if-eqz v7, :cond_0

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 94
    .end local v6    # "albumArtUri":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public sendMessages(Ljava/util/List;Landroid/content/Context;)Z
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p1, p0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAudioMessages(Ljava/util/List;Lcom/liquable/nemo/android/provider/AudioInfo;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AudioInfo [albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-super {p0}, Lcom/liquable/nemo/android/provider/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/android/provider/MediaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/android/provider/AudioInfo;->suffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return-void
.end method
