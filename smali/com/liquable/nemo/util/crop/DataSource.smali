.class public interface abstract Lcom/liquable/nemo/util/crop/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# virtual methods
.method public abstract getDatabaseUris()[Ljava/lang/String;
.end method

.method public abstract getThumbnailCache()Lcom/liquable/nemo/util/crop/DiskCache;
.end method

.method public abstract loadItemsForSet(Lcom/liquable/nemo/util/crop/MediaFeed;Lcom/liquable/nemo/util/crop/MediaSet;II)V
.end method

.method public abstract loadMediaSets(Lcom/liquable/nemo/util/crop/MediaFeed;)V
.end method

.method public abstract performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract refresh(Lcom/liquable/nemo/util/crop/MediaFeed;[Ljava/lang/String;)V
.end method

.method public abstract shutdown()V
.end method
