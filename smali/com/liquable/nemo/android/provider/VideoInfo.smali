.class public Lcom/liquable/nemo/android/provider/VideoInfo;
.super Lcom/liquable/nemo/android/provider/MediaInfo;
.source "VideoInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/liquable/nemo/android/provider/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x70bffcef8b950cdL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/liquable/nemo/android/provider/VideoInfo$1;

    invoke-direct {v0}, Lcom/liquable/nemo/android/provider/VideoInfo$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/android/provider/VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/provider/MediaInfo;-><init>(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/android/provider/MediaInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
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
    .line 38
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p1, p0}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendVideoMessages(Ljava/util/List;Lcom/liquable/nemo/android/provider/VideoInfo;)Z

    move-result v0

    return v0
.end method
