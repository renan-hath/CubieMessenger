.class public final Lcom/aviary/android/feather/library/services/HiResService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "HiResService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;
    }
.end annotation


# instance fields
.field private mServiceHandler:Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private running:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 3
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Service[hiresService]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->thread:Landroid/os/HandlerThread;

    .line 48
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/aviary/android/feather/library/services/HiResService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aviary/android/feather/library/services/HiResService;->handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Ljava/lang/String;
    .param p3, "apiKey"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 188
    sget-boolean v3, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/HiResService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handleFile: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 192
    :cond_0
    invoke-static {p1, p4}, Lcom/aviary/android/feather/library/utils/ExifUtils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 193
    .local v2, "orientation":I
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/HiResService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "orientation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->debug([Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v1

    .line 197
    .local v1, "actionList":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    if-eqz v2, :cond_1

    .line 198
    const-string/jumbo v3, "rotate90"

    invoke-static {v3}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 199
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    const-string/jumbo v3, "angle"

    invoke-virtual {v0, v3, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 200
    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 203
    .end local v0    # "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    :cond_1
    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 204
    invoke-virtual {p0, p2, p3, v1}, Lcom/aviary/android/feather/library/services/HiResService;->execute(Ljava/lang/String;Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 206
    :cond_2
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/HiResService;->stop()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->mServiceHandler:Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;

    .line 86
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V
    .locals 2
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "actions"    # Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->running:Z

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->mServiceHandler:Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;

    new-instance v1, Lcom/aviary/android/feather/library/services/HiResService$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/aviary/android/feather/library/services/HiResService$3;-><init>(Lcom/aviary/android/feather/library/services/HiResService;Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->running:Z

    return v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->running:Z

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->mServiceHandler:Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;

    new-instance v1, Lcom/aviary/android/feather/library/services/HiResService$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/aviary/android/feather/library/services/HiResService$1;-><init>(Lcom/aviary/android/feather/library/services/HiResService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->running:Z

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->mServiceHandler:Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;

    new-instance v1, Lcom/aviary/android/feather/library/services/HiResService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aviary/android/feather/library/services/HiResService$2;-><init>(Lcom/aviary/android/feather/library/services/HiResService;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->running:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->mServiceLooper:Landroid/os/Looper;

    .line 54
    new-instance v0, Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/HiResService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;-><init>(Lcom/aviary/android/feather/library/services/HiResService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->mServiceHandler:Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->running:Z

    .line 57
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->running:Z

    .line 65
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 66
    return-void
.end method
