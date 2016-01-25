.class public final Lcom/liquable/nemo/util/crop/MediaFeed;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/crop/MediaFeed$Listener;
    }
.end annotation


# static fields
.field private static final JOIN_TIMEOUT:I = 0x32

.field private static final NUM_INTERRUPT_RETRIES:I = 0x1e

.field private static final NUM_ITEMS_LOOKAHEAD:I = 0x3c

.field public static final OPERATION_CROP:I = 0x2

.field public static final OPERATION_DELETE:I = 0x0

.field public static final OPERATION_ROTATE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlbumSourceThread:Ljava/lang/Thread;

.field private final mBufferedRange:Lcom/liquable/nemo/util/crop/IndexRange;

.field private final mClusterSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            "Lcom/liquable/nemo/util/crop/MediaClustering;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

.field private mDataSourceThread:Ljava/lang/Thread;

.field private mExpandedMediaSetIndex:I

.field private mInClusteringMode:Z

.field private volatile mIsShutdown:Z

.field private mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

.field private mListenerNeedsLayout:Z

.field private mListenerNeedsUpdate:Z

.field private mLoading:Z

.field private mMediaFeedNeedsToRun:Z

.field private mMediaFilter:Lcom/liquable/nemo/util/crop/MediaFilter;

.field private mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

.field private final mMediaSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedRefresh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleImageMode:Z

.field private mSingleWrapper:Lcom/liquable/nemo/util/crop/MediaSet;

.field private final mVisibleRange:Lcom/liquable/nemo/util/crop/IndexRange;

.field private mWaitingForMediaScanner:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/crop/DataSource;Lcom/liquable/nemo/util/crop/MediaFeed$Listener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataSource"    # Lcom/liquable/nemo/util/crop/DataSource;
    .param p3, "listener"    # Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "MediaFeed"

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/liquable/nemo/util/crop/IndexRange;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/IndexRange;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mVisibleRange:Lcom/liquable/nemo/util/crop/IndexRange;

    .line 48
    new-instance v0, Lcom/liquable/nemo/util/crop/IndexRange;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/IndexRange;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mBufferedRange:Lcom/liquable/nemo/util/crop/IndexRange;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 52
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    .line 53
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 54
    new-instance v0, Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/MediaSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mSingleWrapper:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 55
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    .line 56
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    .line 61
    iput-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    .line 62
    iput-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContentObservers:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    .line 70
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mIsShutdown:Z

    .line 73
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    .line 75
    iput-object p2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mSingleWrapper:Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/util/crop/MediaSet;->setNumExpectedItems(I)V

    .line 77
    iput-boolean v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mLoading:Z

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/crop/MediaFeed;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p1, "x1"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .param p2, "x2"    # Lcom/liquable/nemo/util/crop/MediaSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/crop/MediaFeed;->removeItemFromMediaSet(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaSet;)V

    return-void
.end method

.method static synthetic access$202(Lcom/liquable/nemo/util/crop/MediaFeed;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    return p1
.end method

.method static synthetic access$300(Lcom/liquable/nemo/util/crop/MediaFeed;)Lcom/liquable/nemo/util/crop/DataSource;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/util/crop/MediaFeed;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/util/crop/MediaFeed;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaFeed;->loadMediaSets()V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/util/crop/MediaFeed;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mWaitingForMediaScanner:Z

    return v0
.end method

.method static synthetic access$602(Lcom/liquable/nemo/util/crop/MediaFeed;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mWaitingForMediaScanner:Z

    return p1
.end method

.method static synthetic access$700(Lcom/liquable/nemo/util/crop/MediaFeed;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/crop/MediaFeed;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$802(Lcom/liquable/nemo/util/crop/MediaFeed;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/MediaFeed;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mLoading:Z

    return p1
.end method

.method private disableClusteringIfNecessary()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    iget-boolean v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    if-eqz v2, :cond_0

    .line 133
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    .line 134
    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 137
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadMediaSets()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 345
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    if-nez v6, :cond_0

    .line 372
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 349
    .local v4, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    monitor-enter v4

    .line 350
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 351
    .local v1, "numSets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 352
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 353
    .local v3, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/liquable/nemo/util/crop/MediaSet;->mFlagForDelete:Z

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    .end local v3    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_1
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    iget-object v7, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    invoke-interface {v7}, Lcom/liquable/nemo/util/crop/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p0, v7}, Lcom/liquable/nemo/util/crop/DataSource;->refresh(Lcom/liquable/nemo/util/crop/MediaFeed;[Ljava/lang/String;)V

    .line 356
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    invoke-interface {v6, p0}, Lcom/liquable/nemo/util/crop/DataSource;->loadMediaSets(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 357
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v5, "setsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 359
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 360
    .restart local v3    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    iget-boolean v6, v3, Lcom/liquable/nemo/util/crop/MediaSet;->mFlagForDelete:Z

    if-eqz v6, :cond_2

    .line 361
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 364
    .end local v3    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 365
    .local v2, "numSetsToRemove":I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 366
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 368
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 369
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iput-boolean v8, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 371
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/util/crop/MediaFeed;->updateListener(Z)V

    goto :goto_0

    .line 369
    .end local v0    # "i":I
    .end local v1    # "numSets":I
    .end local v2    # "numSetsToRemove":I
    .end local v5    # "setsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private refresh([Ljava/lang/String;)V
    .locals 3
    .param p1, "databaseUris"    # [Ljava/lang/String;

    .prologue
    .line 560
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    monitor-enter v1

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    if-eqz v0, :cond_0

    .line 562
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 563
    :try_start_1
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 567
    return-void

    .line 564
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 566
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private removeItemFromMediaSet(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaSet;)V
    .locals 3
    .param p1, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .param p2, "mediaSet"    # Lcom/liquable/nemo/util/crop/MediaSet;

    .prologue
    .line 580
    invoke-virtual {p2, p1}, Lcom/liquable/nemo/util/crop/MediaSet;->removeItem(Lcom/liquable/nemo/util/crop/MediaItem;)Z

    .line 581
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    monitor-enter v2

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 583
    .local v0, "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/crop/MediaClustering;->removeItemFromClustering(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 586
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 588
    return-void

    .line 586
    .end local v0    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private repeatShuttingDownThread(Ljava/lang/Thread;)V
    .locals 5
    .param p1, "targetThread"    # Ljava/lang/Thread;

    .prologue
    .line 598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 601
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "MediaFeed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot stop the thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 612
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    return-void

    .line 609
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    const-string/jumbo v2, "MediaFeed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot stop the thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 901
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/liquable/nemo/util/crop/MediaFeed;->showToast(Ljava/lang/String;IZ)V

    .line 902
    return-void
.end method

.method private showToast(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "centered"    # Z

    .prologue
    .line 905
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/App;->get(Landroid/content/Context;)Lcom/liquable/nemo/util/crop/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/App;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/App;->get(Landroid/content/Context;)Lcom/liquable/nemo/util/crop/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/App;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/util/crop/MediaFeed$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/liquable/nemo/util/crop/MediaFeed$2;-><init>(Lcom/liquable/nemo/util/crop/MediaFeed;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    :cond_0
    return-void
.end method


# virtual methods
.method public addItemToMediaSet(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaSet;)V
    .locals 8
    .param p1, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .param p2, "mediaSet"    # Lcom/liquable/nemo/util/crop/MediaSet;

    .prologue
    const/4 v7, 0x1

    .line 81
    iput-object p2, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mParentMediaSet:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 82
    invoke-virtual {p2, p1}, Lcom/liquable/nemo/util/crop/MediaSet;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 83
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    monitor-enter v2

    .line 84
    :try_start_0
    iget v1, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mClusteringState:I

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 86
    .local v0, "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/liquable/nemo/util/crop/MediaClustering;

    .end local v0    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    invoke-virtual {p2}, Lcom/liquable/nemo/util/crop/MediaSet;->isPicassaAlbum()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/MediaClustering;-><init>(Z)V

    .line 88
    .restart local v0    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    iget-wide v3, p2, Lcom/liquable/nemo/util/crop/MediaSet;->mMaxTimestamp:J

    iget-wide v5, p2, Lcom/liquable/nemo/util/crop/MediaSet;->mMinTimestamp:J

    sub-long/2addr v3, v5

    .line 91
    invoke-virtual {p2}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumExpectedItems()I

    move-result v1

    .line 90
    invoke-virtual {v0, v3, v4, v1}, Lcom/liquable/nemo/util/crop/MediaClustering;->setTimeRange(JI)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/crop/MediaClustering;->addItemForClustering(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 93
    const/4 v1, 0x1

    iput v1, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mClusteringState:I

    .line 95
    .end local v0    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iput-boolean v7, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addMediaSet(JLcom/liquable/nemo/util/crop/DataSource;)Lcom/liquable/nemo/util/crop/MediaSet;
    .locals 2
    .param p1, "setId"    # J
    .param p3, "dataSource"    # Lcom/liquable/nemo/util/crop/DataSource;

    .prologue
    .line 100
    new-instance v0, Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-direct {v0, p3}, Lcom/liquable/nemo/util/crop/MediaSet;-><init>(Lcom/liquable/nemo/util/crop/DataSource;)V

    .line 101
    .local v0, "mediaSet":Lcom/liquable/nemo/util/crop/MediaSet;
    iput-wide p1, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    .line 102
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 106
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 107
    return-object v0
.end method

.method public canExpandSet(I)Z
    .locals 8
    .param p1, "slotIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 111
    move v1, p1

    .line 112
    .local v1, "mediaSetIndex":I
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    if-ltz v1, :cond_0

    .line 113
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 114
    .local v2, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumItems()I

    move-result v4

    if-lez v4, :cond_0

    .line 115
    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 116
    .local v0, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    iget-wide v4, v0, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 122
    .end local v0    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v2    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_0
    :goto_0
    return v3

    .line 119
    .restart local v0    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .restart local v2    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public copySlotStateFrom(Lcom/liquable/nemo/util/crop/MediaFeed;)V
    .locals 1
    .param p1, "another"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 126
    iget v0, p1, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    iput v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    .line 127
    iget-boolean v0, p1, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    .line 128
    return-void
.end method

.method public expandMediaSet(I)V
    .locals 4
    .param p1, "mediaSetIndex"    # I

    .prologue
    const/4 v3, 0x1

    .line 142
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    invoke-interface {v1, p0}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedAboutToChange(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 145
    :cond_0
    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    if-lez v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 149
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 150
    .local v0, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumItems()I

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/MediaSet;->clear()V

    .line 155
    .end local v0    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_1
    iput p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    .line 156
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz p1, :cond_2

    .line 162
    :cond_2
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/util/crop/MediaFeed;->updateListener(Z)V

    .line 163
    iput-boolean v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 164
    return-void
.end method

.method public getBreaks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClustering()Lcom/liquable/nemo/util/crop/MediaClustering;
    .locals 3

    .prologue
    .line 195
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClustersForSet(Lcom/liquable/nemo/util/crop/MediaSet;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "set"    # Lcom/liquable/nemo/util/crop/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;>;"
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 205
    .local v1, "mediaClustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/MediaClustering;->getClusters()Ljava/util/ArrayList;

    move-result-object v0

    .line 209
    .end local v1    # "mediaClustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    :cond_0
    return-object v0
.end method

.method public getCurrentSet()Lcom/liquable/nemo/util/crop/MediaSet;
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataSource()Lcom/liquable/nemo/util/crop/DataSource;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    return-object v0
.end method

.method public getExpandedMediaSet()Lcom/liquable/nemo/util/crop/MediaSet;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 224
    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaSet;

    goto :goto_0
.end method

.method public getFilteredSet()Lcom/liquable/nemo/util/crop/MediaSet;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

    return-object v0
.end method

.method public getMediaSet(J)Lcom/liquable/nemo/util/crop/MediaSet;
    .locals 7
    .param p1, "setId"    # J

    .prologue
    const/4 v4, 0x0

    .line 238
    const-wide/16 v5, -0x1

    cmp-long v5, p1, v5

    if-eqz v5, :cond_1

    .line 240
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 241
    .local v2, "mMediaSetsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 242
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 243
    .local v3, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    iget-wide v5, v3, Lcom/liquable/nemo/util/crop/MediaSet;->mId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    .line 244
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/liquable/nemo/util/crop/MediaSet;->mFlagForDelete:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "i":I
    .end local v2    # "mMediaSetsSize":I
    .end local v3    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :goto_1
    return-object v3

    .line 241
    .restart local v1    # "i":I
    .restart local v2    # "mMediaSetsSize":I
    .restart local v3    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    .end local v2    # "mMediaSetsSize":I
    .end local v3    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 249
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v3, v4

    .line 252
    goto :goto_1
.end method

.method public getMediaSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumSlots()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 260
    iget v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    .line 261
    .local v1, "currentMediaSetIndex":I
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 262
    .local v2, "mediaSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 264
    .local v3, "mediaSetsSize":I
    iget-boolean v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    if-nez v6, :cond_3

    .line 265
    if-eq v1, v7, :cond_0

    if-lt v1, v3, :cond_1

    .line 279
    .end local v3    # "mediaSetsSize":I
    :cond_0
    :goto_0
    return v3

    .line 268
    .restart local v3    # "mediaSetsSize":I
    :cond_1
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

    if-nez v6, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/util/crop/MediaSet;

    move-object v5, v6

    .line 270
    .local v5, "setToUse":Lcom/liquable/nemo/util/crop/MediaSet;
    :goto_1
    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumExpectedItems()I

    move-result v3

    goto :goto_0

    .line 268
    .end local v5    # "setToUse":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

    goto :goto_1

    .line 272
    :cond_3
    if-eq v1, v7, :cond_4

    if-ge v1, v3, :cond_4

    .line 273
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 274
    .local v4, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 275
    .local v0, "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    if-eqz v0, :cond_4

    .line 276
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/MediaClustering;->getClustersForDisplay()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    .line 279
    .end local v0    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    .end local v4    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSetForSlot(I)Lcom/liquable/nemo/util/crop/MediaSet;
    .locals 12
    .param p1, "slotIndex"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v0, 0x0

    .line 283
    if-gez p1, :cond_0

    move-object v9, v0

    .line 321
    :goto_0
    return-object v9

    .line 287
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 288
    .local v5, "mediaSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 289
    .local v6, "mediaSetsSize":I
    iget v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    .line 291
    .local v3, "currentMediaSetIndex":I
    iget-boolean v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    if-nez v9, :cond_7

    .line 292
    if-eq v3, v10, :cond_1

    if-lt v3, v6, :cond_3

    .line 293
    :cond_1
    if-lt p1, v6, :cond_2

    move-object v9, v0

    .line 294
    goto :goto_0

    .line 296
    :cond_2
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/util/crop/MediaSet;

    goto :goto_0

    .line 298
    :cond_3
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mSingleWrapper:Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumItems()I

    move-result v9

    if-nez v9, :cond_4

    .line 299
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mSingleWrapper:Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-virtual {v9, v0}, Lcom/liquable/nemo/util/crop/MediaSet;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 301
    :cond_4
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/util/crop/MediaSet;

    move-object v8, v9

    .line 303
    .local v8, "setToUse":Lcom/liquable/nemo/util/crop/MediaSet;
    :goto_1
    invoke-virtual {v8}, Lcom/liquable/nemo/util/crop/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 304
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    invoke-virtual {v8}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumItems()I

    move-result v9

    if-lt p1, v9, :cond_6

    move-object v9, v0

    .line 305
    goto :goto_0

    .line 301
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .end local v8    # "setToUse":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_5
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

    goto :goto_1

    .line 307
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .restart local v8    # "setToUse":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_6
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mSingleWrapper:Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/crop/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mSingleWrapper:Lcom/liquable/nemo/util/crop/MediaSet;

    goto :goto_0

    .line 309
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .end local v8    # "setToUse":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_7
    if-eq v3, v10, :cond_8

    if-ge v3, v6, :cond_8

    .line 310
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 311
    .local v7, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 312
    .local v1, "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    if-eqz v1, :cond_8

    .line 313
    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/MediaClustering;->getClustersForDisplay()Ljava/util/ArrayList;

    move-result-object v2

    .line 314
    .local v2, "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, p1, :cond_8

    .line 315
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    .line 316
    .local v0, "cluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->generateCaption(Landroid/content/Context;)V

    move-object v9, v0

    .line 317
    goto/16 :goto_0

    .end local v0    # "cluster":Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;
    .end local v1    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    .end local v2    # "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;>;"
    .end local v7    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_8
    move-object v9, v0

    .line 321
    goto/16 :goto_0
.end method

.method public getWaitingForMediaScanner()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mWaitingForMediaScanner:Z

    return v0
.end method

.method public hasExpandedMediaSet()Z
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClustered()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mLoading:Z

    return v0
.end method

.method public isSingleImageMode()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mSingleImageMode:Z

    return v0
.end method

.method public moveSetToFront(Lcom/liquable/nemo/util/crop/MediaSet;)V
    .locals 10
    .param p1, "mediaSet"    # Lcom/liquable/nemo/util/crop/MediaSet;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 375
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 376
    .local v2, "mediaSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 377
    .local v3, "numSets":I
    if-nez v3, :cond_1

    .line 378
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 382
    .local v7, "setToFind":Lcom/liquable/nemo/util/crop/MediaSet;
    if-eq v7, p1, :cond_0

    .line 385
    invoke-virtual {v2, v8, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    const/4 v1, -0x1

    .line 387
    .local v1, "indexToSwapTill":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 388
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 389
    .local v4, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    if-ne v4, p1, :cond_3

    .line 390
    invoke-virtual {v2, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 391
    move v1, v0

    .line 395
    .end local v4    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_2
    const/4 v8, -0x1

    if-eq v1, v8, :cond_4

    .line 396
    move v0, v1

    :goto_2
    if-le v0, v9, :cond_4

    .line 397
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 398
    .local v5, "setEnd":Lcom/liquable/nemo/util/crop/MediaSet;
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 399
    .local v6, "setPrev":Lcom/liquable/nemo/util/crop/MediaSet;
    invoke-virtual {v2, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 400
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v2, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 396
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 387
    .end local v5    # "setEnd":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v6    # "setPrev":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v4    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    .end local v4    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_4
    iput-boolean v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 10

    .prologue
    .line 407
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContentObservers:Ljava/util/HashMap;

    .line 408
    .local v6, "observers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/database/ContentObserver;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 409
    .local v3, "numObservers":I
    if-lez v3, :cond_1

    .line 410
    new-array v8, v3, [Ljava/lang/String;

    .line 411
    .local v8, "uris":[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 412
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 413
    invoke-interface {v2, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "uris":[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .line 414
    .restart local v8    # "uris":[Ljava/lang/String;
    array-length v4, v8

    .line 415
    .local v4, "numUris":I
    iget-object v9, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 416
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 417
    aget-object v7, v8, v1

    .line 418
    .local v7, "uri":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 419
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/ContentObserver;

    .line 420
    .local v5, "observer":Landroid/database/ContentObserver;
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 421
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .end local v5    # "observer":Landroid/database/ContentObserver;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "i":I
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "numUris":I
    .end local v7    # "uri":Ljava/lang/String;
    .end local v8    # "uris":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 427
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;

    .line 431
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    .line 432
    .local v1, "dataSource":Lcom/liquable/nemo/util/crop/DataSource;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-interface {v1}, Lcom/liquable/nemo/util/crop/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "uris":[Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContentObservers:Ljava/util/HashMap;

    .line 469
    .local v2, "observers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/database/ContentObserver;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/MediaFeed;->refresh()V

    goto :goto_0
.end method

.method public performClustering()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 473
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    if-eqz v3, :cond_0

    .line 474
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    invoke-interface {v3, p0}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedAboutToChange(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 476
    :cond_0
    const/4 v2, 0x0

    .line 477
    .local v2, "setToUse":Lcom/liquable/nemo/util/crop/MediaSet;
    iget v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 478
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "setToUse":Lcom/liquable/nemo/util/crop/MediaSet;
    check-cast v2, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 480
    .restart local v2    # "setToUse":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_1
    if-eqz v2, :cond_2

    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    monitor-enter v4

    .line 484
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaClustering;

    move-object v1, v0

    .line 485
    if-eqz v1, :cond_3

    .line 486
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/liquable/nemo/util/crop/MediaClustering;->compute(Lcom/liquable/nemo/util/crop/MediaItem;Z)V

    .line 490
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    iput-boolean v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    .line 492
    invoke-virtual {p0, v6}, Lcom/liquable/nemo/util/crop/MediaFeed;->updateListener(Z)V

    .line 494
    .end local v1    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    :cond_2
    :goto_0
    return-void

    .line 488
    .restart local v1    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    :cond_3
    :try_start_1
    monitor-exit v4

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V
    .locals 6
    .param p1, "operation"    # I
    .param p3, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 499
    .local p2, "mediaBuckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaBucket;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 500
    .local v2, "numBuckets":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 501
    .local v0, "copyMediaBuckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaBucket;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 502
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_0
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    if-eqz v4, :cond_1

    .line 505
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    invoke-interface {v4, p0}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedAboutToChange(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 507
    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/liquable/nemo/util/crop/MediaFeed$1;

    invoke-direct {v4, p0, v0, p1, p3}, Lcom/liquable/nemo/util/crop/MediaFeed$1;-><init>(Lcom/liquable/nemo/util/crop/MediaFeed;Ljava/util/ArrayList;ILjava/lang/Object;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 547
    .local v3, "operationThread":Ljava/lang/Thread;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 549
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    if-eqz v0, :cond_0

    .line 553
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    invoke-interface {v2}, Lcom/liquable/nemo/util/crop/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    monitor-exit v1

    .line 557
    :cond_0
    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFilter()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 570
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilter:Lcom/liquable/nemo/util/crop/MediaFilter;

    .line 571
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 572
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    invoke-interface {v0, p0}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedAboutToChange(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 574
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/util/crop/MediaFeed;->updateListener(Z)V

    .line 576
    :cond_0
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 577
    return-void
.end method

.method public removeMediaSet(Lcom/liquable/nemo/util/crop/MediaSet;)V
    .locals 2
    .param p1, "set"    # Lcom/liquable/nemo/util/crop/MediaSet;

    .prologue
    .line 591
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    monitor-enter v1

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 595
    return-void

    .line 593
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public replaceMediaSet(JLcom/liquable/nemo/util/crop/DataSource;)Lcom/liquable/nemo/util/crop/MediaSet;
    .locals 4
    .param p1, "setId"    # J
    .param p3, "dataSource"    # Lcom/liquable/nemo/util/crop/DataSource;

    .prologue
    .line 615
    const-string/jumbo v1, "MediaFeed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Replacing media set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/util/crop/MediaFeed;->getMediaSet(J)Lcom/liquable/nemo/util/crop/MediaSet;

    move-result-object v0

    .line 617
    .local v0, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/MediaSet;->refresh()V

    .line 620
    :cond_0
    return-object v0
.end method

.method public restorePreviousClusteringState()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 624
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MediaFeed;->disableClusteringIfNecessary()Z

    move-result v0

    .line 625
    .local v0, "retVal":Z
    if-eqz v0, :cond_1

    .line 626
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    invoke-interface {v1, p0}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedAboutToChange(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 629
    :cond_0
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->updateListener(Z)V

    .line 630
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 632
    :cond_1
    return v0
.end method

.method public run()V
    .locals 36

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    .line 638
    .local v8, "dataSource":Lcom/liquable/nemo/util/crop/DataSource;
    const/16 v29, 0xa

    .line 639
    .local v29, "sleepMs":I
    const/16 v33, 0xa

    invoke-static/range {v33 .. v33}, Landroid/os/Process;->setThreadPriority(I)V

    .line 640
    if-eqz v8, :cond_e

    .line 641
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v33

    if-nez v33, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mIsShutdown:Z

    move/from16 v33, v0

    if-nez v33, :cond_e

    .line 642
    const/4 v9, 0x0

    .line 643
    .local v9, "databaseUris":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 644
    .local v24, "performRefresh":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 645
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_4

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 648
    .local v21, "numRequests":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v14, v0, :cond_1

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-static {v9, v0}, Lcom/liquable/nemo/util/crop/ArrayUtils;->addAll([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 648
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 651
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    .line 652
    const/16 v24, 0x1

    .line 654
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 655
    .local v31, "uris":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 656
    array-length v0, v9

    move/from16 v23, v0

    .line 657
    .local v23, "numUris":I
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v23

    if-ge v14, v0, :cond_3

    .line 658
    aget-object v30, v9, v14

    .line 659
    .local v30, "uri":Ljava/lang/String;
    if-eqz v30, :cond_2

    .line 660
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 664
    .end local v23    # "numUris":I
    .end local v30    # "uri":Ljava/lang/String;
    :cond_3
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v9, v0, [Ljava/lang/String;

    .line 665
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 667
    .end local v14    # "i":I
    .end local v21    # "numRequests":I
    .end local v31    # "uris":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    const/16 v28, 0x0

    .line 669
    .local v28, "settingFeedAboutToChange":Z
    if-eqz v24, :cond_6

    .line 670
    if-eqz v8, :cond_6

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    if-eqz v33, :cond_5

    .line 672
    const/16 v28, 0x1

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedAboutToChange(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 675
    :cond_5
    move-object/from16 v0, p0

    invoke-interface {v8, v0, v9}, Lcom/liquable/nemo/util/crop/DataSource;->refresh(Lcom/liquable/nemo/util/crop/MediaFeed;[Ljava/lang/String;)V

    .line 676
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 679
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    move/from16 v33, v0

    if-eqz v33, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    move/from16 v33, v0

    if-nez v33, :cond_f

    .line 680
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    if-eqz v33, :cond_7

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 683
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedChanged(Lcom/liquable/nemo/util/crop/MediaFeed;Z)V

    .line 684
    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 687
    :cond_7
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v33, v0

    :try_start_2
    invoke-static/range {v33 .. v34}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 698
    :goto_3
    const/16 v29, 0x12c

    .line 699
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/liquable/nemo/util/crop/App;->get(Landroid/content/Context;)Lcom/liquable/nemo/util/crop/App;

    move-result-object v4

    .line 703
    .local v4, "app":Lcom/liquable/nemo/util/crop/App;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/liquable/nemo/util/crop/App;->isPaused()Z

    move-result v33

    if-nez v33, :cond_0

    .line 706
    if-eqz v28, :cond_8

    .line 707
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/MediaFeed;->updateListener(Z)V

    .line 709
    :cond_8
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 711
    .local v17, "mediaSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    monitor-enter v17

    .line 712
    :try_start_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mExpandedMediaSetIndex:I

    .line 713
    .local v11, "expandedSetIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-lt v11, v0, :cond_9

    .line 714
    const/4 v11, -0x1

    .line 716
    :cond_9
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v11, v0, :cond_b

    .line 718
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 719
    .local v22, "numSets":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mVisibleRange:Lcom/liquable/nemo/util/crop/IndexRange;

    move-object/from16 v32, v0

    .line 720
    .local v32, "visibleRange":Lcom/liquable/nemo/util/crop/IndexRange;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mBufferedRange:Lcom/liquable/nemo/util/crop/IndexRange;

    .line 721
    .local v5, "bufferedRange":Lcom/liquable/nemo/util/crop/IndexRange;
    const/16 v26, 0x1

    .line 722
    .local v26, "scanMediaSets":Z
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    move/from16 v0, v22

    if-ge v14, v0, :cond_a

    .line 723
    move-object/from16 v0, v32

    iget v0, v0, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_13

    move-object/from16 v0, v32

    iget v0, v0, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-gt v14, v0, :cond_13

    if-eqz v26, :cond_13

    .line 724
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 725
    .local v27, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    move/from16 v20, v0

    .line 726
    .local v20, "numItemsLoaded":I
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumExpectedItems()I

    move-result v33

    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    const/16 v33, 0x8

    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    .line 727
    monitor-enter v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 728
    const/16 v33, 0x8

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v20

    move/from16 v3, v33

    invoke-interface {v8, v0, v1, v2, v3}, Lcom/liquable/nemo/util/crop/DataSource;->loadItemsForSet(Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaSet;II)V

    .line 729
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->checkForDeletedItems()V

    .line 730
    monitor-exit v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 731
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumExpectedItems()I

    move-result v33

    if-nez v33, :cond_10

    .line 732
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 754
    .end local v20    # "numItemsLoaded":I
    .end local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_a
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 755
    const/4 v14, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v14, v0, :cond_b

    .line 756
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 757
    .restart local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    iget v0, v5, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_17

    iget v0, v5, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-gt v14, v0, :cond_17

    .line 758
    if-eqz v26, :cond_16

    .line 759
    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    move/from16 v20, v0

    .line 760
    .restart local v20    # "numItemsLoaded":I
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumExpectedItems()I

    move-result v33

    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_16

    const/16 v33, 0x8

    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_16

    .line 761
    monitor-enter v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 762
    const/16 v33, 0x8

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v20

    move/from16 v3, v33

    invoke-interface {v8, v0, v1, v2, v3}, Lcom/liquable/nemo/util/crop/DataSource;->loadItemsForSet(Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaSet;II)V

    .line 763
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->checkForDeletedItems()V

    .line 764
    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 765
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumExpectedItems()I

    move-result v33

    if-nez v33, :cond_14

    .line 766
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 791
    .end local v5    # "bufferedRange":Lcom/liquable/nemo/util/crop/IndexRange;
    .end local v14    # "i":I
    .end local v20    # "numItemsLoaded":I
    .end local v22    # "numSets":I
    .end local v26    # "scanMediaSets":Z
    .end local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v32    # "visibleRange":Lcom/liquable/nemo/util/crop/IndexRange;
    :cond_b
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v11, v0, :cond_1d

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 793
    .restart local v22    # "numSets":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_7
    move/from16 v0, v22

    if-ge v14, v0, :cond_1a

    .line 795
    if-eq v14, v11, :cond_d

    .line 796
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 797
    .restart local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 798
    .local v6, "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    if-eqz v6, :cond_c

    .line 799
    invoke-virtual {v6}, Lcom/liquable/nemo/util/crop/MediaClustering;->clear()V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_c
    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    move/from16 v33, v0

    if-eqz v33, :cond_d

    .line 803
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 793
    .end local v6    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    .end local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 667
    .end local v4    # "app":Lcom/liquable/nemo/util/crop/App;
    .end local v11    # "expandedSetIndex":I
    .end local v14    # "i":I
    .end local v17    # "mediaSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .end local v22    # "numSets":I
    .end local v28    # "settingFeedAboutToChange":Z
    :catchall_0
    move-exception v33

    :try_start_8
    monitor-exit v34
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v33

    .line 684
    .restart local v28    # "settingFeedAboutToChange":Z
    :catchall_1
    move-exception v33

    :try_start_9
    monitor-exit v34
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v33

    .line 688
    :catch_0
    move-exception v10

    .line 872
    .end local v9    # "databaseUris":[Ljava/lang/String;
    .end local v24    # "performRefresh":Z
    .end local v28    # "settingFeedAboutToChange":Z
    :cond_e
    :goto_8
    return-void

    .line 693
    .restart local v9    # "databaseUris":[Ljava/lang/String;
    .restart local v24    # "performRefresh":Z
    .restart local v28    # "settingFeedAboutToChange":Z
    :cond_f
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v33, v0

    :try_start_a
    invoke-static/range {v33 .. v34}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 694
    :catch_1
    move-exception v10

    .line 695
    .local v10, "e":Ljava/lang/InterruptedException;
    goto :goto_8

    .line 730
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "app":Lcom/liquable/nemo/util/crop/App;
    .restart local v5    # "bufferedRange":Lcom/liquable/nemo/util/crop/IndexRange;
    .restart local v11    # "expandedSetIndex":I
    .restart local v14    # "i":I
    .restart local v17    # "mediaSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaSet;>;"
    .restart local v20    # "numItemsLoaded":I
    .restart local v22    # "numSets":I
    .restart local v26    # "scanMediaSets":Z
    .restart local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v32    # "visibleRange":Lcom/liquable/nemo/util/crop/IndexRange;
    :catchall_2
    move-exception v33

    :try_start_b
    monitor-exit v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v33

    .line 869
    .end local v5    # "bufferedRange":Lcom/liquable/nemo/util/crop/IndexRange;
    .end local v11    # "expandedSetIndex":I
    .end local v14    # "i":I
    .end local v20    # "numItemsLoaded":I
    .end local v22    # "numSets":I
    .end local v26    # "scanMediaSets":Z
    .end local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v32    # "visibleRange":Lcom/liquable/nemo/util/crop/IndexRange;
    :catchall_3
    move-exception v33

    monitor-exit v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v33

    .line 735
    .restart local v5    # "bufferedRange":Lcom/liquable/nemo/util/crop/IndexRange;
    .restart local v11    # "expandedSetIndex":I
    .restart local v14    # "i":I
    .restart local v20    # "numItemsLoaded":I
    .restart local v22    # "numSets":I
    .restart local v26    # "scanMediaSets":Z
    .restart local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v32    # "visibleRange":Lcom/liquable/nemo/util/crop/IndexRange;
    :cond_10
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    if-eqz v33, :cond_11

    .line 736
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedChanged(Lcom/liquable/nemo/util/crop/MediaFeed;Z)V

    .line 738
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    .line 740
    :cond_11
    const/16 v29, 0x64

    .line 741
    const/16 v26, 0x0

    .line 743
    :cond_12
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->setContainsValidItems()Z

    move-result v33

    if-nez v33, :cond_13

    .line 744
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    if-eqz v33, :cond_a

    .line 746
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedChanged(Lcom/liquable/nemo/util/crop/MediaFeed;Z)V

    .line 748
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_5

    .line 722
    .end local v20    # "numItemsLoaded":I
    .end local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 764
    .restart local v20    # "numItemsLoaded":I
    .restart local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :catchall_4
    move-exception v33

    :try_start_e
    monitor-exit v27
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v33

    .line 769
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    if-eqz v33, :cond_15

    .line 770
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedChanged(Lcom/liquable/nemo/util/crop/MediaFeed;Z)V

    .line 772
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    .line 774
    :cond_15
    const/16 v29, 0x64

    .line 775
    const/16 v26, 0x0

    .line 755
    .end local v20    # "numItemsLoaded":I
    :cond_16
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 778
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    move/from16 v33, v0

    if-nez v33, :cond_16

    iget v0, v5, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_18

    iget v0, v5, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-le v14, v0, :cond_16

    .line 780
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 781
    .restart local v6    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    if-eqz v6, :cond_19

    .line 782
    invoke-virtual {v6}, Lcom/liquable/nemo/util/crop/MediaClustering;->clear()V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    :cond_19
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumItems()I

    move-result v33

    if-eqz v33, :cond_16

    .line 786
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->clear()V

    goto :goto_9

    .line 808
    .end local v5    # "bufferedRange":Lcom/liquable/nemo/util/crop/IndexRange;
    .end local v6    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    .end local v26    # "scanMediaSets":Z
    .end local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v32    # "visibleRange":Lcom/liquable/nemo/util/crop/IndexRange;
    :cond_1a
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/liquable/nemo/util/crop/MediaSet;

    move-object/from16 v0, v33

    iget v0, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    move/from16 v20, v0

    .line 809
    .restart local v20    # "numItemsLoaded":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mVisibleRange:Lcom/liquable/nemo/util/crop/IndexRange;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    move/from16 v25, v0

    .line 811
    .local v25, "requestedItems":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mInClusteringMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1b

    .line 812
    const/16 v25, 0x0

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 814
    .restart local v6    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    if-eqz v6, :cond_1b

    .line 815
    invoke-virtual {v6}, Lcom/liquable/nemo/util/crop/MediaClustering;->getClustersForDisplay()Ljava/util/ArrayList;

    move-result-object v7

    .line 816
    .local v7, "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 817
    .local v18, "numClusters":I
    const/4 v14, 0x0

    :goto_a
    move/from16 v0, v18

    if-ge v14, v0, :cond_1b

    .line 818
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;

    invoke-virtual/range {v33 .. v33}, Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;->getNumExpectedItems()I

    move-result v33

    add-int v25, v25, v33

    .line 817
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 822
    .end local v6    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    .end local v7    # "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaClustering$Cluster;>;"
    .end local v18    # "numClusters":I
    :cond_1b
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 823
    .restart local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumExpectedItems()I

    move-result v33

    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    .line 828
    monitor-enter v27
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 829
    :try_start_10
    div-int/lit8 v33, v25, 0x3c

    mul-int/lit8 v33, v33, 0x3c

    add-int/lit8 v33, v33, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v20

    move/from16 v3, v33

    invoke-interface {v8, v0, v1, v2, v3}, Lcom/liquable/nemo/util/crop/DataSource;->loadItemsForSet(Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaSet;II)V

    .line 834
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->checkForDeletedItems()V

    .line 835
    monitor-exit v27
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 836
    :try_start_11
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumExpectedItems()I

    move-result v33

    if-nez v33, :cond_1c

    .line 837
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 838
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedChanged(Lcom/liquable/nemo/util/crop/MediaFeed;Z)V

    .line 840
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    .line 842
    :cond_1c
    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/util/crop/MediaSet;->mNumItemsLoaded:I

    move/from16 v33, v0

    move/from16 v0, v20

    move/from16 v1, v33

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1d

    .line 843
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedChanged(Lcom/liquable/nemo/util/crop/MediaFeed;Z)V

    .line 845
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    .line 849
    .end local v14    # "i":I
    .end local v20    # "numItemsLoaded":I
    .end local v22    # "numSets":I
    .end local v25    # "requestedItems":I
    .end local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilter:Lcom/liquable/nemo/util/crop/MediaFilter;

    .line 850
    .local v12, "filter":Lcom/liquable/nemo/util/crop/MediaFilter;
    if-eqz v12, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

    move-object/from16 v33, v0

    if-nez v33, :cond_21

    .line 851
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v11, v0, :cond_20

    .line 852
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 853
    .restart local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v16

    .line 854
    .local v16, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    invoke-virtual/range {v27 .. v27}, Lcom/liquable/nemo/util/crop/MediaSet;->getNumItems()I

    move-result v19

    .line 855
    .local v19, "numItems":I
    new-instance v13, Lcom/liquable/nemo/util/crop/MediaSet;

    invoke-direct {v13}, Lcom/liquable/nemo/util/crop/MediaSet;-><init>()V

    .line 856
    .local v13, "filteredSet":Lcom/liquable/nemo/util/crop/MediaSet;
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/liquable/nemo/util/crop/MediaSet;->setNumExpectedItems(I)V

    .line 857
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 858
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_b
    move/from16 v0, v19

    if-ge v14, v0, :cond_1f

    .line 859
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 860
    .local v15, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    invoke-virtual {v12, v15}, Lcom/liquable/nemo/util/crop/MediaFilter;->pass(Lcom/liquable/nemo/util/crop/MediaItem;)Z

    move-result v33

    if-eqz v33, :cond_1e

    .line 861
    invoke-virtual {v13, v15}, Lcom/liquable/nemo/util/crop/MediaSet;->addItem(Lcom/liquable/nemo/util/crop/MediaItem;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 858
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 835
    .end local v12    # "filter":Lcom/liquable/nemo/util/crop/MediaFilter;
    .end local v13    # "filteredSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v15    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v16    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .end local v19    # "numItems":I
    .restart local v20    # "numItemsLoaded":I
    .restart local v22    # "numSets":I
    .restart local v25    # "requestedItems":I
    :catchall_5
    move-exception v33

    :try_start_12
    monitor-exit v27
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw v33

    .line 864
    .end local v20    # "numItemsLoaded":I
    .end local v22    # "numSets":I
    .end local v25    # "requestedItems":I
    .restart local v12    # "filter":Lcom/liquable/nemo/util/crop/MediaFilter;
    .restart local v13    # "filteredSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .restart local v16    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .restart local v19    # "numItems":I
    :cond_1f
    invoke-virtual {v13}, Lcom/liquable/nemo/util/crop/MediaSet;->updateNumExpectedItems()V

    .line 865
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v13, v0}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    .line 867
    .end local v13    # "filteredSet":Lcom/liquable/nemo/util/crop/MediaSet;
    .end local v14    # "i":I
    .end local v16    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .end local v19    # "numItems":I
    .end local v27    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_20
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/MediaFeed;->updateListener(Z)V

    .line 869
    :cond_21
    monitor-exit v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_0
.end method

.method public setFilter(Lcom/liquable/nemo/util/crop/MediaFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/liquable/nemo/util/crop/MediaFilter;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilter:Lcom/liquable/nemo/util/crop/MediaFilter;

    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFilteredSet:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 877
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    invoke-interface {v0, p0}, Lcom/liquable/nemo/util/crop/MediaFeed$Listener;->onFeedAboutToChange(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 880
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 881
    return-void
.end method

.method public setSingleImageMode(Z)V
    .locals 0
    .param p1, "singleImageMode"    # Z

    .prologue
    .line 884
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mSingleImageMode:Z

    .line 885
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 5
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 888
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mVisibleRange:Lcom/liquable/nemo/util/crop/IndexRange;

    iget v3, v3, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mVisibleRange:Lcom/liquable/nemo/util/crop/IndexRange;

    iget v3, v3, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    if-eq p2, v3, :cond_1

    .line 889
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mVisibleRange:Lcom/liquable/nemo/util/crop/IndexRange;

    iput p1, v3, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    .line 890
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mVisibleRange:Lcom/liquable/nemo/util/crop/IndexRange;

    iput p2, v3, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    .line 891
    const/16 v0, 0x60

    .line 892
    .local v0, "numItems":I
    const/16 v1, 0x30

    .line 893
    .local v1, "numItemsBy2":I
    const/16 v2, 0x18

    .line 894
    .local v2, "numItemsBy4":I
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mBufferedRange:Lcom/liquable/nemo/util/crop/IndexRange;

    div-int/lit8 v4, p1, 0x30

    mul-int/lit8 v4, v4, 0x30

    add-int/lit8 v4, v4, -0x18

    iput v4, v3, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    .line 895
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mBufferedRange:Lcom/liquable/nemo/util/crop/IndexRange;

    iget-object v4, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mBufferedRange:Lcom/liquable/nemo/util/crop/IndexRange;

    iget v4, v4, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    add-int/lit8 v4, v4, 0x60

    iput v4, v3, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    .line 896
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 898
    .end local v0    # "numItems":I
    .end local v1    # "numItemsBy2":I
    .end local v2    # "numItemsBy4":I
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 922
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mIsShutdown:Z

    .line 923
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    if-eqz v5, :cond_0

    .line 924
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    invoke-interface {v5}, Lcom/liquable/nemo/util/crop/DataSource;->shutdown()V

    .line 925
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    invoke-direct {p0, v5}, Lcom/liquable/nemo/util/crop/MediaFeed;->repeatShuttingDownThread(Ljava/lang/Thread;)V

    .line 926
    iput-object v7, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    .line 928
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    .line 929
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    invoke-direct {p0, v5}, Lcom/liquable/nemo/util/crop/MediaFeed;->repeatShuttingDownThread(Ljava/lang/Thread;)V

    .line 930
    iput-object v7, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    .line 932
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 933
    .local v3, "numSets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 934
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/MediaSet;

    .line 935
    .local v4, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    invoke-virtual {v4}, Lcom/liquable/nemo/util/crop/MediaSet;->clear()V

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    .end local v4    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_2
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    monitor-enter v6

    .line 938
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 939
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 941
    .local v2, "numClusters":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    .line 942
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 943
    .local v1, "mc":Lcom/liquable/nemo/util/crop/MediaClustering;
    if-eqz v1, :cond_3

    .line 944
    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/MediaClustering;->clear()V

    .line 941
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 939
    .end local v1    # "mc":Lcom/liquable/nemo/util/crop/MediaClustering;
    .end local v2    # "numClusters":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 947
    .restart local v2    # "numClusters":I
    :cond_4
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 948
    iput-object v7, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListener:Lcom/liquable/nemo/util/crop/MediaFeed$Listener;

    .line 949
    iput-object v7, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;

    .line 950
    iput-object v7, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mSingleWrapper:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 951
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 954
    move-object v0, p0

    .line 955
    .local v0, "feed":Lcom/liquable/nemo/util/crop/MediaFeed;
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/MediaFeed;->onResume()V

    .line 956
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mLoading:Z

    .line 957
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    .line 958
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    const-string/jumbo v2, "MediaFeed"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 959
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mIsShutdown:Z

    .line 960
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/liquable/nemo/util/crop/MediaFeed$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/util/crop/MediaFeed$3;-><init>(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    .line 1005
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    const-string/jumbo v2, "MediaSets"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1006
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1007
    return-void
.end method

.method public updateListener(Z)V
    .locals 1
    .param p1, "needsLayout"    # Z

    .prologue
    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsUpdate:Z

    .line 1011
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed;->mListenerNeedsLayout:Z

    .line 1012
    return-void
.end method
