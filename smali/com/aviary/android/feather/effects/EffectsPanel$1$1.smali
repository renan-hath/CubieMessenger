.class Lcom/aviary/android/feather/effects/EffectsPanel$1$1;
.super Ljava/lang/Object;
.source "EffectsPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/EffectsPanel$1;->onFutureDone(Lcom/aviary/android/feather/library/threading/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/effects/EffectsPanel$1;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/EffectsPanel$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/effects/EffectsPanel$1;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$1$1;->this$1:Lcom/aviary/android/feather/effects/EffectsPanel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$1$1;->this$1:Lcom/aviary/android/feather/effects/EffectsPanel$1;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EffectsPanel$1;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$1$1;->this$1:Lcom/aviary/android/feather/effects/EffectsPanel$1;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/EffectsPanel$1;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/EffectsPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/EffectsPanel$1$1;->this$1:Lcom/aviary/android/feather/effects/EffectsPanel$1;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/EffectsPanel$1;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/EffectsPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/effects/EffectsPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 141
    return-void
.end method
