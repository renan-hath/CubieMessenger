.class public Lcom/liquable/nemo/android/provider/PictureInfo;
.super Lcom/liquable/nemo/android/provider/MediaInfo;
.source "PictureInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5414b195bb9ec9a5L


# instance fields
.field private final rotateDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/liquable/nemo/android/provider/PictureInfo$1;

    invoke-direct {v0}, Lcom/liquable/nemo/android/provider/PictureInfo$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/android/provider/PictureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/provider/MediaInfo;-><init>(Landroid/os/Parcel;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/android/provider/PictureInfo;->rotateDegree:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p5, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/liquable/nemo/android/provider/MediaInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput p4, p0, Lcom/liquable/nemo/android/provider/PictureInfo;->rotateDegree:I

    .line 44
    return-void
.end method


# virtual methods
.method public getRotateDegree()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/liquable/nemo/android/provider/PictureInfo;->rotateDegree:I

    return v0
.end method

.method public sendMessages(Ljava/util/List;Landroid/content/Context;)Z
    .locals 6
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
    .line 52
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget v4, p0, Lcom/liquable/nemo/android/provider/PictureInfo;->rotateDegree:I

    const/4 v5, 0x0

    move-object v2, p1

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendPictureMessages(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendSecretMessages(Ljava/util/List;Landroid/content/Context;)Z
    .locals 6
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
    .line 60
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 62
    invoke-virtual {p0}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget v4, p0, Lcom/liquable/nemo/android/provider/PictureInfo;->rotateDegree:I

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendSecretPictureMessages(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toImageSrc(Landroid/content/Context;)Lcom/liquable/nemo/util/imagesrc/ImageSrc;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;

    invoke-virtual {p0}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/android/provider/PictureInfo;->rotateDegree:I

    invoke-direct {v0, p1, v1, v2}, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PictureInfo [rotateDegree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/android/provider/PictureInfo;->rotateDegree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    .line 78
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/android/provider/MediaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget v0, p0, Lcom/liquable/nemo/android/provider/PictureInfo;->rotateDegree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
