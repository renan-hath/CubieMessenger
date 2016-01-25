.class public Lcom/liquable/nemo/util/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/Profiler$Record;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "Nemo"

.field private static debugLogger:Lcom/liquable/nemo/util/Logger;

.field public static isProfiing:Z

.field static timers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/util/Profiler$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/liquable/nemo/util/Profiler;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/Profiler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/Profiler;->timers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "Nemo"

    invoke-static {v0}, Lcom/liquable/nemo/util/Profiler;->start(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v1, 0x1

    sput-boolean v1, Lcom/liquable/nemo/util/Profiler;->isProfiing:Z

    .line 22
    new-instance v0, Lcom/liquable/nemo/util/Profiler$Record;

    invoke-direct {v0}, Lcom/liquable/nemo/util/Profiler$Record;-><init>()V

    .line 23
    .local v0, "r":Lcom/liquable/nemo/util/Profiler$Record;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/liquable/nemo/util/Profiler$Record;->t1:J

    iput-wide v1, v0, Lcom/liquable/nemo/util/Profiler$Record;->t0:J

    .line 24
    sget-object v1, Lcom/liquable/nemo/util/Profiler;->timers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/liquable/nemo/util/Profiler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":begin++++++++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static step(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string/jumbo v0, "Nemo"

    invoke-static {v0, p0}, Lcom/liquable/nemo/util/Profiler;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static step(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v3, Lcom/liquable/nemo/util/Profiler;->timers:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/Profiler$Record;

    .line 34
    .local v2, "r":Lcom/liquable/nemo/util/Profiler$Record;
    if-nez v2, :cond_0

    .line 35
    sget-object v3, Lcom/liquable/nemo/util/Profiler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    .local v0, "now":J
    sget-object v3, Lcom/liquable/nemo/util/Profiler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/liquable/nemo/util/Profiler$Record;->t1:J

    sub-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 40
    iput-wide v0, v2, Lcom/liquable/nemo/util/Profiler$Record;->t1:J

    goto :goto_0
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "Nemo"

    invoke-static {v0}, Lcom/liquable/nemo/util/Profiler;->stop(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static stop(Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string/jumbo v1, "end"

    invoke-static {p0, v1}, Lcom/liquable/nemo/util/Profiler;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/liquable/nemo/util/Profiler;->timers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/Profiler$Record;

    .line 50
    .local v0, "r":Lcom/liquable/nemo/util/Profiler$Record;
    if-nez v0, :cond_0

    .line 51
    sget-object v1, Lcom/liquable/nemo/util/Profiler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v1, Lcom/liquable/nemo/util/Profiler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":total++++++++++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/liquable/nemo/util/Profiler$Record;->t1:J

    iget-wide v5, v0, Lcom/liquable/nemo/util/Profiler$Record;->t0:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
