.class public Lcom/aviary/android/feather/library/filters/BorderFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "BorderFilter.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "imageborders"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>([Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public setBorderName(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/BorderFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "bordername"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 17
    return-void
.end method

.method public setHiRes(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/BorderFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "large"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Z)V

    .line 21
    return-void
.end method

.method public setSize(D)V
    .locals 2
    .param p1, "size"    # D

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/BorderFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "bordersize"

    invoke-virtual {v0, v1, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 25
    return-void
.end method

.method public setSourceApp(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/BorderFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 13
    return-void
.end method
