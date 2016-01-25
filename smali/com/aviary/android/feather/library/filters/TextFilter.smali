.class public Lcom/aviary/android/feather/library/filters/TextFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "TextFilter.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "addtext"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>([Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public setBottomRight(DD)V
    .locals 3
    .param p1, "bottom"    # D
    .param p3, "right"    # D

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/TextFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "bottomright"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v2, p3, p4, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(DD)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 35
    return-void
.end method

.method public setFillColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/TextFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "fillcolor"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 19
    return-void
.end method

.method public setRotation(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/TextFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "rotation"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;F)V

    .line 27
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/TextFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "outlinecolor"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 23
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/TextFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 15
    return-void
.end method

.method public setTextSize(D)V
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/TextFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "textsize"

    invoke-virtual {v0, v1, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 39
    return-void
.end method

.method public setTopLeft(DD)V
    .locals 3
    .param p1, "top"    # D
    .param p3, "left"    # D

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/TextFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "topleft"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v2, p3, p4, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(DD)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 31
    return-void
.end method
