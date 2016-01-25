.class Lcom/aviary/android/feather/effects/EffectsPanel$3;
.super Ljava/lang/Object;
.source "EffectsPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/EffectsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mInitializedFirstTime:Z

.field final synthetic this$0:Lcom/aviary/android/feather/effects/EffectsPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/EffectsPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSurfaceChanged(ZII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 317
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EffectsPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSurfaceChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 319
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->mInitializedFirstTime:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    const-string/jumbo v1, "original"

    # invokes: Lcom/aviary/android/feather/effects/EffectsPanel;->renderFirstTime(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$100(Lcom/aviary/android/feather/effects/EffectsPanel;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EffectsPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/PluginService;->registerOnUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;)V

    .line 324
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/effects/EffectsPanel;->updateInstalledPacks(Z)V

    .line 329
    :goto_0
    iput-boolean v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->mInitializedFirstTime:Z

    .line 330
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EffectsPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget v1, v1, Lcom/aviary/android/feather/effects/EffectsPanel;->mSelectedPosition:I

    invoke-virtual {v0, v1, v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedPosition(IZ)V

    goto :goto_0
.end method

.method public OnSurfaceCreated()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$3;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EffectsPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onSurfaceCreated"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 313
    return-void
.end method
