.class abstract Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;
.super Ljava/lang/Object;
.source "YoutubePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "YoutubeList"
.end annotation


# static fields
.field private static final MIN_RETRY_INTERVAL:J = 0x7d0L


# instance fields
.field adapter:Lcom/liquable/nemo/chat/YoutubePickerAdapter;

.field hasLoaded:Z

.field lastFail:J

.field noMoreData:Z

.field startIndex:I

.field task:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->startIndex:I

    .line 83
    iput-boolean v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->noMoreData:Z

    .line 84
    iput-boolean v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->hasLoaded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V

    return-void
.end method

.method private isTaskRunning()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->task:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->task:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->task:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 91
    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->adapter:Lcom/liquable/nemo/chat/YoutubePickerAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->reset()V

    .line 96
    iput v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->startIndex:I

    .line 97
    iput-boolean v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->noMoreData:Z

    .line 98
    iput-boolean v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->hasLoaded:Z

    .line 99
    invoke-direct {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->isTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->task:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->task:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$000(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public abstract run()V
.end method

.method public run(Z)V
    .locals 6
    .param p1, "loadMore"    # Z

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->noMoreData:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->hasLoaded:Z

    if-nez v0, :cond_1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->lastFail:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 113
    :cond_1
    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run skipped:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": noMoreData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->noMoreData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " loadMore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hasLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->hasLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isTaskRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-direct {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->isTaskRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seconds after lastFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->lastFail:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->run()V

    goto :goto_0
.end method
