.class final Lcom/liquable/nemo/util/crop/CacheService$2;
.super Ljava/lang/Thread;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/CacheService;->restartThread(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/CacheService$2;->val$action:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/liquable/nemo/util/crop/CacheService$2;->val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 974
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CacheService$2;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CacheService$2;->val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 978
    return-void

    .line 976
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CacheService$2;->val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v0
.end method
