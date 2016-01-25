.class public Lcom/aviary/android/feather/headless/filters/impl/CropFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "CropFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "crop"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>([Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public setPreviewSize(Lcom/aviary/android/feather/headless/moa/MoaPointParameter;)V
    .locals 3
    .param p1, "value"    # Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    .prologue
    .line 24
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 25
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    const-string/jumbo v1, "previewsize"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 26
    return-void
.end method

.method public setSize(Lcom/aviary/android/feather/headless/moa/MoaPointParameter;)V
    .locals 3
    .param p1, "size"    # Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    .prologue
    .line 19
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 20
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    const-string/jumbo v1, "size"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 21
    return-void
.end method

.method public setTopLeft(Lcom/aviary/android/feather/headless/moa/MoaPointParameter;)V
    .locals 3
    .param p1, "topleft"    # Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    .prologue
    .line 14
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 15
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    const-string/jumbo v1, "upperleftpoint"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 16
    return-void
.end method
