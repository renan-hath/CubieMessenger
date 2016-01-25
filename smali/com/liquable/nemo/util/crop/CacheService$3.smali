.class final Lcom/liquable/nemo/util/crop/CacheService$3;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/CacheService;->startNewThumbnailThread(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/CacheService$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1036
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1040
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CacheService$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/liquable/nemo/util/crop/CacheService;->buildThumbnails(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/liquable/nemo/util/crop/CacheService;->access$000(Landroid/content/Context;)V

    .line 1045
    :goto_0
    return-void

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
