.class Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$3;
.super Ljava/lang/Object;
.source "MainLoopVoipSoundEffect.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playHungup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$3;->this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;

    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$3;->this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$200(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060004

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$3;->call()Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;

    move-result-object v0

    return-object v0
.end method
