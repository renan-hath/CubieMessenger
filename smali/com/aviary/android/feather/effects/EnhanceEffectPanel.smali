.class public Lcom/aviary/android/feather/effects/EnhanceEffectPanel;
.super Lcom/aviary/android/feather/effects/AbstractOptionPanel;
.source "EnhanceEffectPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/EnhanceEffectPanel$GenerateResultTask;,
        Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;
    }
.end annotation


# instance fields
.field enableFastPreview:Z

.field mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

.field private mFilterType:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field volatile mIsRendering:Z


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;
    .param p3, "type"    # Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 33
    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mIsRendering:Z

    .line 36
    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->enableFastPreview:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 45
    iput-object p3, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mFilterType:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/EnhanceEffectPanel;)Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mFilterType:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    return-object v0
.end method

.method static synthetic access$102(Lcom/aviary/android/feather/effects/EnhanceEffectPanel;Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;)Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EnhanceEffectPanel;
    .param p1, "x1"    # Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    return-object p1
.end method

.method private killCurrentTask()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->cancel(Z)Z

    .line 174
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->renderFilter:Lcom/aviary/android/feather/library/filters/EnhanceFilter;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/filters/EnhanceFilter;->stop()Z

    .line 175
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->onProgressEnd()V

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mIsRendering:Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    .line 180
    :cond_0
    return-void

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected generateOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 148
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_enhance:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getIsChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->getIsChanged()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mIsRendering:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivate()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onActivate()V

    .line 70
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 73
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getFastPreviewEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->enableFastPreview:Z

    .line 74
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->killCurrentTask()V

    .line 154
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCancel()Z
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->killCurrentTask()V

    .line 167
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onCancel()Z

    move-result v0

    return v0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->killCurrentTask()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mIsRendering:Z

    .line 161
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onCancelled()V

    .line 162
    return-void
.end method

.method public onCheckedChanged(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;ZZ)V
    .locals 6
    .param p1, "buttonView"    # Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    .param p2, "isChecked"    # Z
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    iget-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v2, v4}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(Z)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v0

    .line 93
    .local v0, "id":I
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 95
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_2

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    sget-object v1, Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;->HiDef:Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;

    .line 99
    .local v1, "type":Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->killCurrentTask()V

    .line 101
    sget v2, Lcom/aviary/android/feather/R$id;->button1:I

    if-ne v0, v2, :cond_4

    .line 102
    sget-object v1, Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;->HiDef:Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;

    .line 109
    :cond_3
    :goto_1
    if-nez p2, :cond_6

    .line 111
    iget-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 112
    iget-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v4, v5}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->onPreviewChanged(Landroid/graphics/Bitmap;ZZ)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->setIsChanged(Z)V

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 116
    iget-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mTrackingAttributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 103
    :cond_4
    sget v2, Lcom/aviary/android/feather/R$id;->button2:I

    if-ne v0, v2, :cond_5

    .line 104
    sget-object v1, Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;->Illuminate:Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;

    goto :goto_1

    .line 105
    :cond_5
    sget v2, Lcom/aviary/android/feather/R$id;->button3:I

    if-ne v0, v2, :cond_3

    .line 106
    sget-object v1, Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;->ColorFix:Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;

    goto :goto_1

    .line 119
    :cond_6
    if-eqz v1, :cond_1

    .line 120
    new-instance v2, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;-><init>(Lcom/aviary/android/feather/effects/EnhanceEffectPanel;)V

    iput-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    .line 121
    iget-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    new-array v3, v5, [Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    iget-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mTrackingAttributes:Ljava/util/HashMap;

    const-string/jumbo v3, "Effects"

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 54
    .local v0, "panel":Landroid/view/ViewGroup;
    sget v1, Lcom/aviary/android/feather/R$id;->button1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 55
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 56
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 58
    :cond_0
    sget v1, Lcom/aviary/android/feather/R$id;->button2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 59
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 60
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 62
    :cond_1
    sget v1, Lcom/aviary/android/feather/R$id;->button3:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 63
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 65
    :cond_2
    return-void
.end method

.method public onDeactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onDeactivate()V

    .line 80
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 83
    return-void
.end method

.method protected onGenerateResult()V
    .locals 3

    .prologue
    .line 263
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mIsRendering:Z

    if-eqz v1, :cond_0

    .line 264
    new-instance v0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$GenerateResultTask;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$GenerateResultTask;-><init>(Lcom/aviary/android/feather/effects/EnhanceEffectPanel;)V

    .line 265
    .local v0, "task":Lcom/aviary/android/feather/effects/EnhanceEffectPanel$GenerateResultTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$GenerateResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 269
    .end local v0    # "task":Lcom/aviary/android/feather/effects/EnhanceEffectPanel$GenerateResultTask;
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {p0, v1, v2}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    goto :goto_0
.end method

.method protected onProgressEnd()V
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->enableFastPreview:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->onProgressModalEnd()V

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onProgressEnd()V

    goto :goto_0
.end method

.method protected onProgressStart()V
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->enableFastPreview:Z

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->onProgressModalStart()V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onProgressStart()V

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->setEnabled(Z)V

    return-void
.end method
