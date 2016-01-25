.class Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;
.super Ljava/lang/Object;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadPair"
.end annotation


# instance fields
.field private final localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

.field private ratio:D

.field private final remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 0
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 134
    iput-object p2, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p2, "x1"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p3, "x2"    # Lcom/liquable/nemo/android/service/FileTransferManager$1;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;-><init>(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    return-object v0
.end method


# virtual methods
.method public getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    return-object v0
.end method

.method public getRatio()D
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->ratio:D

    return-wide v0
.end method

.method public getRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    return-object v0
.end method

.method public updateRatio(D)V
    .locals 0
    .param p1, "ratio"    # D

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->ratio:D

    .line 151
    return-void
.end method
