.class public Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;
.super Lcom/aviary/android/feather/headless/moa/MoaParameter;
.source "MoaGraphicsOperationParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/headless/moa/MoaParameter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mBlurSize:I

.field mColor:I

.field mCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;",
            ">;"
        }
    .end annotation
.end field

.field mErase:I

.field mLock:Ljava/lang/Object;

.field mRadius:F


# direct methods
.method public constructor <init>(IFII)V
    .locals 1
    .param p1, "blurSize"    # I
    .param p2, "radius"    # F
    .param p3, "color"    # I
    .param p4, "erase"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mCommands:Ljava/util/List;

    .line 23
    iput p1, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mBlurSize:I

    .line 24
    iput p2, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mRadius:F

    .line 25
    iput p3, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mColor:I

    .line 26
    iput p4, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mErase:I

    .line 27
    return-void
.end method


# virtual methods
.method public addCommand(Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;)V
    .locals 2
    .param p1, "command"    # Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v1

    .line 33
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 61
    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;

    iget v3, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mBlurSize:I

    iget v4, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mRadius:F

    iget v5, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mColor:I

    iget v6, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mErase:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;-><init>(IFII)V

    .line 62
    .local v2, "param":Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;
    iget-object v4, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 63
    :try_start_0
    iget-object v3, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mCommands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    monitor-exit v4

    .line 71
    return-object v2

    .line 65
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;

    invoke-virtual {v3}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "current":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 67
    check-cast v0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;

    .end local v0    # "current":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->addCommand(Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;)V

    goto :goto_0

    .line 62
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public encode()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "blursize"

    iget v5, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mBlurSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v4, "radius"

    iget v5, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mRadius:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v4, "color"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mColor:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x30

    const/16 v8, 0x8

    invoke-static {v6, v7, v8}, Lcom/aviary/android/feather/headless/utils/StringUtils;->padRight(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string/jumbo v4, "erase"

    iget v5, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mErase:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 46
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    iget-object v4, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->mCommands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    const-string/jumbo v4, "commands"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;>;"
    :goto_1
    return-object v3

    .line 49
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;>;"
    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;

    invoke-virtual {v4}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->encode()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 46
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 53
    .end local v0    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
