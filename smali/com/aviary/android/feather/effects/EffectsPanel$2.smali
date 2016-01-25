.class Lcom/aviary/android/feather/effects/EffectsPanel$2;
.super Ljava/lang/Object;
.source "EffectsPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/library/threading/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/EffectsPanel;->renderFirstTime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/threading/FutureListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/EffectsPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/EffectsPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$2;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/aviary/android/feather/library/threading/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/library/threading/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "arg0":Lcom/aviary/android/feather/library/threading/Future;, "Lcom/aviary/android/feather/library/threading/Future<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$2;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$000(Lcom/aviary/android/feather/effects/EffectsPanel;)Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->requestRender()V

    .line 300
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$2;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/EffectsPanel;->contentReady()V

    .line 301
    return-void
.end method
