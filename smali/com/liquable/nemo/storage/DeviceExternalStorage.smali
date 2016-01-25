.class public Lcom/liquable/nemo/storage/DeviceExternalStorage;
.super Ljava/lang/Object;
.source "DeviceExternalStorage.java"


# static fields
.field private static final APP_DIR:Ljava/lang/String; = "cubie"

.field public static instance:Lcom/liquable/nemo/storage/DeviceExternalStorage;


# instance fields
.field private final appDir:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 24
    .local v0, "externalDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "cubie"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/liquable/nemo/storage/DeviceExternalStorage;->appDir:Ljava/io/File;

    .line 25
    iget-object v1, p0, Lcom/liquable/nemo/storage/DeviceExternalStorage;->appDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/liquable/nemo/storage/DeviceExternalStorage;->appDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 28
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;
    .locals 2

    .prologue
    .line 10
    const-class v1, Lcom/liquable/nemo/storage/DeviceExternalStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/storage/DeviceExternalStorage;->instance:Lcom/liquable/nemo/storage/DeviceExternalStorage;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/liquable/nemo/storage/DeviceExternalStorage;

    invoke-direct {v0}, Lcom/liquable/nemo/storage/DeviceExternalStorage;-><init>()V

    sput-object v0, Lcom/liquable/nemo/storage/DeviceExternalStorage;->instance:Lcom/liquable/nemo/storage/DeviceExternalStorage;

    .line 13
    :cond_0
    sget-object v0, Lcom/liquable/nemo/storage/DeviceExternalStorage;->instance:Lcom/liquable/nemo/storage/DeviceExternalStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "appRelativePath"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/liquable/nemo/storage/DeviceExternalStorage;->appDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 35
    :cond_0
    return-object v0
.end method

.method public isMediaMounted()Z
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x1

    .line 43
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
