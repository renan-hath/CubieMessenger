.class Lcom/liquable/nemo/util/crop/MediaFeed$1;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/MediaFeed;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

.field final synthetic val$copyMediaBuckets:Ljava/util/ArrayList;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/MediaFeed;Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    iput-object p2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->val$copyMediaBuckets:Ljava/util/ArrayList;

    iput p3, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->val$operation:I

    iput-object p4, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 510
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->val$copyMediaBuckets:Ljava/util/ArrayList;

    .line 511
    .local v6, "mediaBuckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaBucket;>;"
    iget v10, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->val$operation:I

    if-nez v10, :cond_6

    .line 512
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 513
    .local v7, "numBuckets":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_4

    .line 514
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaBucket;

    .line 515
    .local v0, "bucket":Lcom/liquable/nemo/util/crop/MediaBucket;
    iget-object v9, v0, Lcom/liquable/nemo/util/crop/MediaBucket;->mediaSet:Lcom/liquable/nemo/util/crop/MediaSet;

    .line 516
    .local v9, "set":Lcom/liquable/nemo/util/crop/MediaSet;
    iget-object v4, v0, Lcom/liquable/nemo/util/crop/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 517
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    if-eqz v9, :cond_1

    if-nez v4, :cond_1

    .line 519
    iget-object v10, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    invoke-virtual {v10, v9}, Lcom/liquable/nemo/util/crop/MediaFeed;->removeMediaSet(Lcom/liquable/nemo/util/crop/MediaSet;)V

    .line 513
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    :cond_1
    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 522
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 525
    .local v8, "numItems":I
    iget-object v10, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mClusterSets:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$000(Lcom/liquable/nemo/util/crop/MediaFeed;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/MediaClustering;

    .line 526
    .local v1, "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v8, :cond_3

    .line 527
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 528
    .local v3, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    iget-object v10, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # invokes: Lcom/liquable/nemo/util/crop/MediaFeed;->removeItemFromMediaSet(Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaSet;)V
    invoke-static {v10, v3, v9}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$100(Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaItem;Lcom/liquable/nemo/util/crop/MediaSet;)V

    .line 529
    if-eqz v1, :cond_2

    .line 530
    invoke-virtual {v1, v3}, Lcom/liquable/nemo/util/crop/MediaClustering;->removeItemFromClustering(Lcom/liquable/nemo/util/crop/MediaItem;)V

    .line 526
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 533
    .end local v3    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_3
    invoke-virtual {v9}, Lcom/liquable/nemo/util/crop/MediaSet;->updateNumExpectedItems()V

    .line 534
    invoke-virtual {v9, v11}, Lcom/liquable/nemo/util/crop/MediaSet;->generateTitle(Z)V

    goto :goto_1

    .line 537
    .end local v0    # "bucket":Lcom/liquable/nemo/util/crop/MediaBucket;
    .end local v1    # "clustering":Lcom/liquable/nemo/util/crop/MediaClustering;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .end local v5    # "j":I
    .end local v8    # "numItems":I
    .end local v9    # "set":Lcom/liquable/nemo/util/crop/MediaSet;
    :cond_4
    iget-object v10, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/crop/MediaFeed;->updateListener(Z)V

    .line 538
    iget-object v10, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # setter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mMediaFeedNeedsToRun:Z
    invoke-static {v10, v11}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$202(Lcom/liquable/nemo/util/crop/MediaFeed;Z)Z

    .line 539
    iget-object v10, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;
    invoke-static {v10}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$300(Lcom/liquable/nemo/util/crop/MediaFeed;)Lcom/liquable/nemo/util/crop/DataSource;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 540
    iget-object v10, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;
    invoke-static {v10}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$300(Lcom/liquable/nemo/util/crop/MediaFeed;)Lcom/liquable/nemo/util/crop/DataSource;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, v6, v12}, Lcom/liquable/nemo/util/crop/DataSource;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z

    .line 545
    .end local v2    # "i":I
    .end local v7    # "numBuckets":I
    :cond_5
    :goto_3
    return-void

    .line 543
    :cond_6
    iget-object v10, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;
    invoke-static {v10}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$300(Lcom/liquable/nemo/util/crop/MediaFeed;)Lcom/liquable/nemo/util/crop/DataSource;

    move-result-object v10

    iget v11, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->val$operation:I

    iget-object v12, p0, Lcom/liquable/nemo/util/crop/MediaFeed$1;->val$data:Ljava/lang/Object;

    invoke-interface {v10, v11, v6, v12}, Lcom/liquable/nemo/util/crop/DataSource;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z

    goto :goto_3
.end method
