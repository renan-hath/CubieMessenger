.class public Lcom/aviary/android/feather/library/services/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/aviary/android/feather/library/services/BaseContextService;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mContext:Lcom/aviary/android/feather/library/services/IAviaryController;

.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 22
    .local p0, "this":Lcom/aviary/android/feather/library/services/ServiceLoader;, "Lcom/aviary/android/feather/library/services/ServiceLoader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mContext:Lcom/aviary/android/feather/library/services/IAviaryController;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mServices:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mMap:Ljava/util/HashMap;

    .line 26
    return-void
.end method

.method private get(Ljava/lang/String;Lcom/aviary/android/feather/library/services/IAviaryController;)Lcom/aviary/android/feather/library/services/BaseContextService;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/services/IAviaryController;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/aviary/android/feather/library/services/ServiceLoader;, "Lcom/aviary/android/feather/library/services/ServiceLoader<TT;>;"
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 106
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/aviary/android/feather/library/services/IAviaryController;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 107
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/services/BaseContextService;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 119
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_0
    return-object v3

    .line 108
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 119
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 110
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 125
    .local p0, "this":Lcom/aviary/android/feather/library/services/ServiceLoader;, "Lcom/aviary/android/feather/library/services/ServiceLoader<TT;>;"
    :try_start_0
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mServices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mServices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 136
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 128
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mServices:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/BaseContextService;

    .line 129
    .local v2, "service":Lcom/aviary/android/feather/library/services/BaseContextService;, "TT;"
    invoke-virtual {v2}, Lcom/aviary/android/feather/library/services/BaseContextService;->internalDispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "service":Lcom/aviary/android/feather/library/services/BaseContextService;, "TT;"
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mServices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 134
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 135
    throw v3
.end method

.method public getService(Ljava/lang/Class;)Lcom/aviary/android/feather/library/services/BaseContextService;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/aviary/android/feather/library/services/ServiceLoader;, "Lcom/aviary/android/feather/library/services/ServiceLoader<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/services/BaseContextService;

    .line 62
    :goto_0
    return-object v3

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 48
    .local v2, "service":Lcom/aviary/android/feather/library/services/BaseContextService;, "TT;"
    :try_start_0
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mContext:Lcom/aviary/android/feather/library/services/IAviaryController;

    invoke-direct {p0, v1, v4}, Lcom/aviary/android/feather/library/services/ServiceLoader;->get(Ljava/lang/String;Lcom/aviary/android/feather/library/services/IAviaryController;)Lcom/aviary/android/feather/library/services/BaseContextService;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Lcom/aviary/android/feather/library/services/BaseContextService;)V

    move-object v3, v2

    .line 59
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 51
    new-instance v4, Ljava/lang/IllegalAccessException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 54
    new-instance v4, Ljava/lang/IllegalAccessException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public register(Lcom/aviary/android/feather/library/services/BaseContextService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/aviary/android/feather/library/services/ServiceLoader;, "Lcom/aviary/android/feather/library/services/ServiceLoader<TT;>;"
    .local p1, "service":Lcom/aviary/android/feather/library/services/BaseContextService;, "TT;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public register(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/aviary/android/feather/library/services/ServiceLoader;, "Lcom/aviary/android/feather/library/services/ServiceLoader<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ServiceLoader;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
