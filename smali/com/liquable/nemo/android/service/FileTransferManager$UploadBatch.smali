.class public Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;
.super Ljava/lang/Object;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadBatch"
.end annotation


# instance fields
.field private final uploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->uploads:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->uploads:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 3
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->uploads:Ljava/util/List;

    new-instance v1, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;-><init>(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method
