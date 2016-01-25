.class public Lcom/liquable/nemo/RingtoneMediaScannerClient;
.super Ljava/lang/Object;
.source "RingtoneMediaScannerClient.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private conn:Landroid/media/MediaScannerConnection;

.field private final context:Landroid/content/Context;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->context:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->conn:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->path:Ljava/lang/String;

    const-string/jumbo v2, "audio/mp3"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 25
    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getNotificationSound()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p2}, Lcom/liquable/nemo/util/Pref;->setNotificationSound(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 30
    iput-object v2, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->conn:Landroid/media/MediaScannerConnection;

    .line 32
    return-void

    .line 29
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 30
    iput-object v2, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->conn:Landroid/media/MediaScannerConnection;

    throw v0
.end method

.method public startScan(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->path:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->conn:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 40
    :cond_0
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->conn:Landroid/media/MediaScannerConnection;

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/RingtoneMediaScannerClient;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 42
    return-void
.end method
