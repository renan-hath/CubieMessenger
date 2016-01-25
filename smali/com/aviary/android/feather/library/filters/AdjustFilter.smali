.class public Lcom/aviary/android/feather/library/filters/AdjustFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "AdjustFilter.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>([Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private setFeatherEditSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 75
    iget-object v1, p0, Lcom/aviary/android/feather/library/filters/AdjustFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const-string/jumbo v2, "setfeathereditsize"

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 76
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v1, "setfeathereditsize"

    invoke-static {v1}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/aviary/android/feather/library/filters/AdjustFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 80
    :cond_0
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 81
    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 82
    return-void
.end method


# virtual methods
.method public setFixedRotation(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 61
    rem-int/lit8 v2, p1, 0x5a

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 62
    iget-object v2, p0, Lcom/aviary/android/feather/library/filters/AdjustFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const-string/jumbo v3, "rotate90"

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 63
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v2, "rotate90"

    invoke-static {v2}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/aviary/android/feather/library/filters/AdjustFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v2, v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 66
    invoke-direct {p0, v1, v1}, Lcom/aviary/android/feather/library/filters/AdjustFilter;->setFeatherEditSize(II)V

    .line 68
    :cond_0
    const-string/jumbo v2, "angle"

    invoke-virtual {v0, v2, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 71
    .end local v0    # "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFlip(ZZ)Z
    .locals 3
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    .line 94
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/filters/AdjustFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const-string/jumbo v2, "flip"

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 96
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    if-nez v0, :cond_1

    .line 97
    const-string/jumbo v1, "flip"

    invoke-static {v1}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/aviary/android/feather/library/filters/AdjustFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 100
    :cond_1
    const-string/jumbo v1, "horizontal"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Z)V

    .line 101
    const-string/jumbo v1, "vertical"

    invoke-virtual {v0, v1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Z)V

    .line 102
    const/4 v1, 0x1

    .line 104
    .end local v0    # "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStraighten(DDD)Z
    .locals 3
    .param p1, "angle"    # D
    .param p3, "width"    # D
    .param p5, "height"    # D

    .prologue
    .line 39
    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/aviary/android/feather/library/filters/AdjustFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const-string/jumbo v2, "rotate"

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 41
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    if-nez v0, :cond_0

    .line 42
    const-string/jumbo v1, "rotate"

    invoke-static {v1}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/aviary/android/feather/library/filters/AdjustFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 45
    :cond_0
    const-string/jumbo v1, "angle"

    invoke-virtual {v0, v1, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 46
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p3, p4}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 47
    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1, p5, p6}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 48
    const/4 v1, 0x1

    .line 50
    .end local v0    # "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
