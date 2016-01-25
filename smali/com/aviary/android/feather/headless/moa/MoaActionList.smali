.class public final Lcom/aviary/android/feather/headless/moa/MoaActionList;
.super Ljava/lang/Object;
.source "MoaActionList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/List",
        "<",
        "Lcom/aviary/android/feather/headless/moa/MoaAction;",
        ">;"
    }
.end annotation


# instance fields
.field protected actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public add(ILcom/aviary/android/feather/headless/moa/MoaAction;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Lcom/aviary/android/feather/headless/moa/MoaAction;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 137
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/aviary/android/feather/headless/moa/MoaAction;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(ILcom/aviary/android/feather/headless/moa/MoaAction;)V

    return-void
.end method

.method public add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z
    .locals 1
    .param p1, "action"    # Lcom/aviary/android/feather/headless/moa/MoaAction;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/aviary/android/feather/headless/moa/MoaAction;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/aviary/android/feather/headless/moa/MoaAction;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "arg1":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/aviary/android/feather/headless/moa/MoaAction;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/aviary/android/feather/headless/moa/MoaAction;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/aviary/android/feather/headless/moa/MoaAction;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 29
    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-direct {v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;-><init>()V

    .line 31
    .local v2, "list":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    iget-object v4, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    monitor-enter v4

    .line 32
    :try_start_0
    iget-object v3, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 33
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaAction;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    return-object v2

    .line 35
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/headless/moa/MoaAction;

    invoke-virtual {v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/headless/moa/MoaAction;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaAction;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/headless/moa/MoaAction;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v3, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    monitor-enter v3

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 159
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaAction;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    monitor-exit v3

    .line 167
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 161
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/headless/moa/MoaAction;

    .line 162
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/MoaAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    monitor-exit v3

    goto :goto_0

    .line 157
    .end local v0    # "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaAction;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/aviary/android/feather/headless/moa/MoaAction;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/headless/moa/MoaAction;

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->remove(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public set(ILcom/aviary/android/feather/headless/moa/MoaAction;)Lcom/aviary/android/feather/headless/moa/MoaAction;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Lcom/aviary/android/feather/headless/moa/MoaAction;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/headless/moa/MoaAction;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lcom/aviary/android/feather/headless/moa/MoaAction;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->set(ILcom/aviary/android/feather/headless/moa/MoaAction;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaActionList;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
