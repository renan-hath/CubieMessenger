.class public Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;
.super Lcom/aviary/android/feather/headless/moa/MoaParameter;
.source "MoaStrokeParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/headless/moa/MoaParameter",
        "<",
        "Lcom/aviary/android/feather/headless/moa/MoaPointParameter;",
        ">;"
    }
.end annotation


# instance fields
.field private brushmode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaPointParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private radius:D


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;D)V
    .locals 1
    .param p1, "m"    # Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;
    .param p2, "r"    # D

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mList:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->brushmode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 21
    iput-wide p2, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->radius:D

    .line 22
    return-void
.end method


# virtual methods
.method public addPoint(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 37
    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mList:Ljava/util/List;

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v2, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v1

    .line 40
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addPoint(Lcom/aviary/android/feather/headless/moa/MoaPointParameter;)V
    .locals 2
    .param p1, "point"    # Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    monitor-exit v1

    .line 28
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addPoint([F)V
    .locals 5
    .param p1, "points"    # [F

    .prologue
    .line 49
    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mList:Ljava/util/List;

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    aget v4, p1, v4

    invoke-direct {v2, v3, v4}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1

    .line 52
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 81
    new-instance v1, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;

    iget-object v2, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->brushmode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    iget-wide v3, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->radius:D

    invoke-direct {v1, v2, v3, v4}, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;-><init>(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;D)V

    .line 83
    .local v1, "result":Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;
    iget-object v3, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaPointParameter;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    monitor-exit v3

    .line 89
    return-object v1

    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-virtual {v2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->addPoint(Lcom/aviary/android/feather/headless/moa/MoaPointParameter;)V

    goto :goto_0

    .line 83
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaPointParameter;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public encode()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 57
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "brushmode"

    iget-object v5, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->brushmode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    invoke-virtual {v5}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v4, "radius"

    iget-wide v5, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->radius:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 64
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :try_start_1
    iget-object v4, p0, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaPointParameter;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    const-string/jumbo v4, "pointlist"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaPointParameter;>;"
    :goto_1
    return-object v3

    .line 67
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaPointParameter;>;"
    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-virtual {v4}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->encode()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 64
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaPointParameter;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 72
    .end local v0    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
