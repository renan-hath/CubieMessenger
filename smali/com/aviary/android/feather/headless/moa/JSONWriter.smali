.class public final Lcom/aviary/android/feather/headless/moa/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# direct methods
.method public static encode(Lcom/aviary/android/feather/headless/moa/MoaActionList;Lcom/aviary/android/feather/headless/moa/MoaMetadata;)Ljava/lang/String;
    .locals 12
    .param p0, "actionlist"    # Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .param p1, "metadata"    # Lcom/aviary/android/feather/headless/moa/MoaMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v8, "jroot":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 31
    .local v6, "jactionlist":Lorg/json/JSONArray;
    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 33
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaAction;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p1}, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->encode()Lorg/json/JSONObject;

    move-result-object v7

    .line 58
    .local v7, "jmetadata":Lorg/json/JSONObject;
    const-string/jumbo v10, "metadata"

    invoke-virtual {v8, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v10, "actionlist"

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 34
    .end local v7    # "jmetadata":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/headless/moa/MoaAction;

    .line 35
    .local v1, "current":Lcom/aviary/android/feather/headless/moa/MoaAction;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v9, "obj":Lorg/json/JSONObject;
    const-string/jumbo v10, "action"

    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 39
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 40
    .local v4, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 52
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 31
    .end local v1    # "current":Lcom/aviary/android/feather/headless/moa/MoaAction;
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaAction;>;"
    .end local v9    # "obj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 41
    .restart local v1    # "current":Lcom/aviary/android/feather/headless/moa/MoaAction;
    .restart local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v4    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaAction;>;"
    .restart local v9    # "obj":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 42
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/aviary/android/feather/headless/moa/MoaParameter;

    if-eqz v10, :cond_2

    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/aviary/android/feather/headless/moa/MoaParameter;

    invoke-virtual {v11}, Lcom/aviary/android/feather/headless/moa/MoaParameter;->encode()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 44
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/util/Collection;

    if-eqz v10, :cond_3

    .line 45
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 46
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-static {v0, v10}, Lcom/aviary/android/feather/headless/moa/JSONWriter;->encodeCollection(Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 49
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static encodeCollection(Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 4
    .param p0, "parent"    # Lorg/json/JSONArray;
    .param p1, "object"    # Ljava/util/Collection;

    .prologue
    .line 66
    monitor-enter p1

    .line 67
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, "arrayIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    monitor-exit p1

    .line 83
    return-void

    .line 69
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 70
    .local v2, "item":Ljava/lang/Object;
    instance-of v3, v2, Lcom/aviary/android/feather/headless/moa/MoaParameter;

    if-eqz v3, :cond_1

    .line 71
    check-cast v2, Lcom/aviary/android/feather/headless/moa/MoaParameter;

    .end local v2    # "item":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/aviary/android/feather/headless/moa/MoaParameter;->encode()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 66
    .end local v1    # "arrayIterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 73
    .restart local v1    # "arrayIterator":Ljava/util/Iterator;
    .restart local v2    # "item":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 74
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 75
    .local v0, "array":Lorg/json/JSONArray;
    check-cast v2, Ljava/util/Collection;

    .end local v2    # "item":Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/aviary/android/feather/headless/moa/JSONWriter;->encodeCollection(Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 76
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 78
    .end local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "item":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
