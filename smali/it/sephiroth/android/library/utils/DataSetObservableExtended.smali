.class public Lit/sephiroth/android/library/utils/DataSetObservableExtended;
.super Landroid/database/Observable;
.source "DataSetObservableExtended.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lit/sephiroth/android/library/utils/DataSetObserverExtended;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 4

    .prologue
    .line 12
    iget-object v2, p0, Lit/sephiroth/android/library/utils/DataSetObservableExtended;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 13
    :try_start_0
    iget-object v1, p0, Lit/sephiroth/android/library/utils/DataSetObservableExtended;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    monitor-exit v2

    .line 17
    return-void

    .line 13
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/utils/DataSetObserverExtended;

    .line 14
    .local v0, "observer":Lit/sephiroth/android/library/utils/DataSetObserverExtended;
    invoke-virtual {v0}, Lit/sephiroth/android/library/utils/DataSetObserverExtended;->onChanged()V

    goto :goto_0

    .line 12
    .end local v0    # "observer":Lit/sephiroth/android/library/utils/DataSetObserverExtended;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyInvalidated()V
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lit/sephiroth/android/library/utils/DataSetObservableExtended;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v1, p0, Lit/sephiroth/android/library/utils/DataSetObservableExtended;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    monitor-exit v2

    .line 77
    return-void

    .line 73
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/utils/DataSetObserverExtended;

    .line 74
    .local v0, "observer":Lit/sephiroth/android/library/utils/DataSetObserverExtended;
    invoke-virtual {v0}, Lit/sephiroth/android/library/utils/DataSetObserverExtended;->onInvalidated()V

    goto :goto_0

    .line 72
    .end local v0    # "observer":Lit/sephiroth/android/library/utils/DataSetObserverExtended;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
