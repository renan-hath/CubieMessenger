.class Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;
.super Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
.source "MainLoopVoipSoundEffect.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaPlayerBased"
.end annotation


# instance fields
.field private count:I

.field private final player:Landroid/media/MediaPlayer;

.field private final repeatCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "repeatCount"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;-><init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$1;)V

    .line 79
    iput p3, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->repeatCount:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->count:I

    .line 81
    invoke-static {p1, p2}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->tryCreateForVoiceCall(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    .line 82
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 85
    :cond_0
    return-void
.end method

.method private static tryCreateForVoiceCall(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 44
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 47
    .local v1, "player":Landroid/media/MediaPlayer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "android.resource://com.liquable.nemo/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 50
    .local v2, "rawAssetUri":Landroid/net/Uri;
    invoke-virtual {v1, p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 52
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 53
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 67
    .end local v1    # "player":Landroid/media/MediaPlayer;
    .end local v2    # "rawAssetUri":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    const-string/jumbo v5, "error while create media player for voip sound effect."

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 57
    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/SecurityException;
    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    const-string/jumbo v5, "error while create media player for voip sound effect."

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 61
    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/IllegalStateException;
    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    const-string/jumbo v5, "error while create media player for voip sound effect."

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 64
    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    const-string/jumbo v5, "error while create media player for voip sound effect."

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 67
    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->count:I

    iget v3, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->repeatCount:I

    if-lt v2, v3, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->destroy()V

    goto :goto_0

    .line 95
    :cond_2
    const/4 v1, 0x0

    .line 97
    .local v1, "locked":Z
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 98
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 99
    iget v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->count:I

    .line 100
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 101
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_3
    if-eqz v1, :cond_0

    .line 107
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    if-eqz v1, :cond_0

    .line 107
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 107
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    throw v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onPlay()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 125
    :cond_0
    return-void
.end method
