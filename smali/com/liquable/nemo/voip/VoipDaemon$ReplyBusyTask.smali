.class final Lcom/liquable/nemo/voip/VoipDaemon$ReplyBusyTask;
.super Ljava/lang/Object;
.source "VoipDaemon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/VoipDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReplyBusyTask"
.end annotation


# instance fields
.field private final answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;

.field private final uniqueDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/session/AnswerCall;Ljava/lang/String;)V
    .locals 0
    .param p1, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;
    .param p2, "uniqueDeviceId"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/liquable/nemo/voip/VoipDaemon$ReplyBusyTask;->answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;

    .line 36
    iput-object p2, p0, Lcom/liquable/nemo/voip/VoipDaemon$ReplyBusyTask;->uniqueDeviceId:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 41
    new-instance v0, Lcom/liquable/nemo/voip/session/AnswerBusySession;

    iget-object v3, p0, Lcom/liquable/nemo/voip/VoipDaemon$ReplyBusyTask;->uniqueDeviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/voip/VoipDaemon$ReplyBusyTask;->answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;

    invoke-direct {v0, v3, v4}, Lcom/liquable/nemo/voip/session/AnswerBusySession;-><init>(Ljava/lang/String;Lcom/liquable/nemo/voip/session/AnswerCall;)V

    .line 43
    .local v0, "busy":Lcom/liquable/nemo/voip/session/AnswerBusySession;
    :try_start_0
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->start()Ljava/util/concurrent/Future;

    move-result-object v2

    .line 45
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->destroySync()V

    .line 56
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->destroySync()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    # getter for: Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/VoipDaemon;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    const-string/jumbo v4, "error while reply busy"

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->destroySync()V

    goto :goto_0

    .line 50
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 51
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    # getter for: Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/VoipDaemon;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    const-string/jumbo v4, "reply busy timeout"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->destroySync()V

    goto :goto_0

    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->destroySync()V

    throw v3
.end method
