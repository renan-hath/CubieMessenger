.class public Lcom/aviary/android/feather/library/filters/StickerFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "StickerFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "addsticker"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>([Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/filters/StickerFilter;->setSourceDir(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/aviary/android/feather/library/filters/StickerFilter;->setUrl(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public setBottomRight(FF)V
    .locals 3
    .param p1, "right"    # F
    .param p2, "bottom"    # F

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "bottomright"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v2, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 44
    return-void
.end method

.method public setCenter(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "center"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v2, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 52
    return-void
.end method

.method public setExternal(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "external"

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public setRotation(D)V
    .locals 2
    .param p1, "radians"    # D

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "rotation"

    invoke-virtual {v0, v1, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 48
    return-void
.end method

.method public setScale(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "scale"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v2, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 56
    return-void
.end method

.method public setSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "size"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v3, v4}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 32
    return-void
.end method

.method public setSourceDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public setTopLeft(FF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "topleft"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v2, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 40
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
