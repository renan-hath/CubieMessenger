.class public Lcom/aviary/android/feather/headless/moa/MoaActionFactory;
.super Ljava/lang/Object;
.source "MoaActionFactory.java"


# direct methods
.method public static action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lcom/aviary/android/feather/headless/moa/MoaAction;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/headless/moa/MoaAction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-direct {v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;-><init>()V

    return-object v0
.end method

.method public static varargs actionList([Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .locals 5
    .param p0, "type"    # [Ljava/lang/String;

    .prologue
    .line 78
    new-instance v1, Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-direct {v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;-><init>()V

    .line 80
    .local v1, "actionList":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 84
    return-object v1

    .line 80
    :cond_0
    aget-object v2, p0, v3

    .line 81
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 82
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static metadata()Lcom/aviary/android/feather/headless/moa/MoaMetadata;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/aviary/android/feather/headless/moa/MoaMetadata;

    invoke-direct {v0}, Lcom/aviary/android/feather/headless/moa/MoaMetadata;-><init>()V

    return-object v0
.end method
