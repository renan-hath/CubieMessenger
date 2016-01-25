.class public Lcom/aviary/android/feather/headless/moa/MoaAction;
.super Ljava/lang/Object;
.source "MoaAction.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected description:Ljava/lang/String;

.field protected jsonParameters:Lorg/json/JSONArray;

.field private final mOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->mOptions:Ljava/util/HashMap;

    .line 28
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private addParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->mOptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/aviary/android/feather/headless/moa/MoaAction;

    iget-object v6, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->name:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/aviary/android/feather/headless/moa/MoaAction;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    iget-object v6, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->description:Ljava/lang/String;

    iput-object v6, v0, Lcom/aviary/android/feather/headless/moa/MoaAction;->description:Ljava/lang/String;

    .line 37
    iget-object v6, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->jsonParameters:Lorg/json/JSONArray;

    if-eqz v6, :cond_0

    .line 39
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    iget-object v7, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->jsonParameters:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lcom/aviary/android/feather/headless/moa/MoaAction;->jsonParameters:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->mOptions:Ljava/util/HashMap;

    monitor-enter v7

    .line 46
    :try_start_1
    iget-object v6, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->mOptions:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 47
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 45
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    return-object v0

    .line 40
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 52
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Lcom/aviary/android/feather/headless/moa/MoaParameter;

    if-eqz v6, :cond_2

    .line 53
    check-cast v5, Lcom/aviary/android/feather/headless/moa/MoaParameter;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/aviary/android/feather/headless/moa/MoaParameter;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 45
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 55
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_3
    invoke-direct {v0, v4, v5}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->mOptions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;D)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 97
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public setValue(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 93
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/headless/moa/MoaParameter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "value":Lcom/aviary/android/feather/headless/moa/MoaParameter;, "Lcom/aviary/android/feather/headless/moa/MoaParameter<*>;"
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public setValue(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 101
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/headless/moa/MoaAction;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-void
.end method
