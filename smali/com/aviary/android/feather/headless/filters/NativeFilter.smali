.class public Lcom/aviary/android/feather/headless/filters/NativeFilter;
.super Ljava/lang/Object;
.source "NativeFilter.java"

# interfaces
.implements Lcom/aviary/android/feather/headless/filters/INativeFilter;


# instance fields
.field protected mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field protected mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 30
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-static {p1}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 31
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList([Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 39
    return-void
.end method


# virtual methods
.method public execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "dst"    # Landroid/graphics/Bitmap;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;->prepareActions(Lcom/aviary/android/feather/headless/moa/MoaActionList;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    .line 65
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/MoaResult;->execute()V

    .line 66
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    iget-object v0, v1, Lcom/aviary/android/feather/headless/moa/MoaResult;->outputBitmap:Landroid/graphics/Bitmap;

    .line 67
    .local v0, "output":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    .line 68
    return-object v0
.end method

.method public executeInPlace(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-static {v0, p1}, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;->prepareActions(Lcom/aviary/android/feather/headless/moa/MoaActionList;Landroid/graphics/Bitmap;)Lcom/aviary/android/feather/headless/moa/MoaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    .line 55
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/MoaResult;->execute()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    .line 57
    return-void
.end method

.method public getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    return-object v0
.end method

.method public prepare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;
    .locals 1
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "dst"    # Landroid/graphics/Bitmap;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;->prepareActions(Lcom/aviary/android/feather/headless/moa/MoaActionList;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;

    move-result-object v0

    return-object v0
.end method

.method public setPreviewSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "previewsize"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v3, v4}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 95
    return-void
.end method

.method public stop()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeFilter;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    iput v0, v1, Lcom/aviary/android/feather/headless/moa/MoaResult;->active:I

    .line 88
    const/4 v0, 0x1

    .line 90
    :cond_0
    return v0
.end method
