.class public Lcom/aviary/android/feather/library/tracking/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;


# direct methods
.method public static close()Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->close()Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "sdkVersion"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    sget-object v1, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    if-nez v1, :cond_0

    .line 47
    :try_start_0
    const-string/jumbo v1, "com.aviary.android.feather.library.external.tracking.TrackerFactory"

    const-string/jumbo v4, "create"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 48
    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    .line 47
    invoke-static {v1, v4, v5, v6}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    sput-object v1, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;
    :try_end_0
    .catch Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    sget-object v1, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    return v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException;
    const-string/jumbo v1, "Tracker"

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException;
    :cond_1
    move v1, v3

    .line 53
    goto :goto_1
.end method

.method public static initializeTracking(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "search"    # Z

    .prologue
    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "_package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "val":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "key_time":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 89
    .local v5, "val_time":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v3, Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;-><init>(Landroid/content/Context;)V

    .line 94
    .local v3, "task":Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/util/Map;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v3, v7}, Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method public static open()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->open()V

    .line 66
    :cond_0
    return-void
.end method

.method public static recordTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "theTag"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public static recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .param p0, "theTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    invoke-virtual {v0, p0, p1}, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setABGroup(Ljava/lang/String;)V
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->setABGroup(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public static upload()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/aviary/android/feather/library/tracking/Tracker;->mInstance:Lcom/aviary/android/feather/library/tracking/AbstractTracker;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->upload()V

    .line 72
    :cond_0
    return-void
.end method
