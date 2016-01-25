.class final Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;
.super Ljava/lang/Thread;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextureLoadThread"
.end annotation


# instance fields
.field public mIsLoading:Z

.field final synthetic this$0:Lcom/liquable/nemo/util/crop/RenderView;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/crop/RenderView;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;->this$0:Lcom/liquable/nemo/util/crop/RenderView;

    .line 67
    const-string/jumbo v0, "TextureLoad"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private load(Lcom/liquable/nemo/util/crop/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;->this$0:Lcom/liquable/nemo/util/crop/RenderView;

    .line 73
    .local v0, "view":Lcom/liquable/nemo/util/crop/RenderView;
    # invokes: Lcom/liquable/nemo/util/crop/RenderView;->loadTextureAsync(Lcom/liquable/nemo/util/crop/Texture;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/util/crop/RenderView;->access$000(Lcom/liquable/nemo/util/crop/RenderView;Lcom/liquable/nemo/util/crop/Texture;)V

    .line 74
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/RenderView;->requestRender()V

    .line 75
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 79
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 80
    # getter for: Lcom/liquable/nemo/util/crop/RenderView;->sVideoTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;
    invoke-static {}, Lcom/liquable/nemo/util/crop/RenderView;->access$100()Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    move-result-object v4

    if-ne v4, p0, :cond_0

    # getter for: Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueueVideo:Lcom/liquable/nemo/util/crop/Deque;
    invoke-static {}, Lcom/liquable/nemo/util/crop/RenderView;->access$200()Lcom/liquable/nemo/util/crop/Deque;

    move-result-object v1

    .line 82
    .local v1, "inputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    :goto_0
    # getter for: Lcom/liquable/nemo/util/crop/RenderView;->sLoadOutputQueue:Lcom/liquable/nemo/util/crop/Deque;
    invoke-static {}, Lcom/liquable/nemo/util/crop/RenderView;->access$600()Lcom/liquable/nemo/util/crop/Deque;

    move-result-object v2

    .line 86
    .local v2, "outputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    :goto_1
    const/4 v3, 0x0

    .line 87
    .local v3, "texture":Lcom/liquable/nemo/util/crop/Texture;
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/liquable/nemo/util/crop/Texture;

    move-object v3, v0

    if-nez v3, :cond_2

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 91
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :catch_0
    move-exception v4

    .line 107
    return-void

    .line 81
    .end local v1    # "inputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    .end local v2    # "outputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    .end local v3    # "texture":Lcom/liquable/nemo/util/crop/Texture;
    :cond_0
    # getter for: Lcom/liquable/nemo/util/crop/RenderView;->sCachedTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;
    invoke-static {}, Lcom/liquable/nemo/util/crop/RenderView;->access$300()Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    move-result-object v4

    if-ne v4, p0, :cond_1

    # getter for: Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueueCached:Lcom/liquable/nemo/util/crop/Deque;
    invoke-static {}, Lcom/liquable/nemo/util/crop/RenderView;->access$400()Lcom/liquable/nemo/util/crop/Deque;

    move-result-object v1

    goto :goto_0

    :cond_1
    # getter for: Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueue:Lcom/liquable/nemo/util/crop/Deque;
    invoke-static {}, Lcom/liquable/nemo/util/crop/RenderView;->access$500()Lcom/liquable/nemo/util/crop/Deque;

    move-result-object v1

    goto :goto_0

    .line 91
    .restart local v1    # "inputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    .restart local v2    # "outputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    .restart local v3    # "texture":Lcom/liquable/nemo/util/crop/Texture;
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :try_start_4
    # getter for: Lcom/liquable/nemo/util/crop/RenderView;->sCachedTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;
    invoke-static {}, Lcom/liquable/nemo/util/crop/RenderView;->access$300()Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    move-result-object v4

    if-eq v4, p0, :cond_3

    .line 93
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;->mIsLoading:Z

    .line 96
    :cond_3
    invoke-direct {p0, v3}, Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;->load(Lcom/liquable/nemo/util/crop/Texture;)V

    .line 97
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;->mIsLoading:Z

    .line 100
    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 101
    :try_start_5
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/crop/Deque;->addLast(Ljava/lang/Object;)V

    .line 102
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
.end method
