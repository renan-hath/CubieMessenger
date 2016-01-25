.class Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$2;
.super Ljava/lang/Object;
.source "MainLoopVoipSoundEffect.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playCalling()V
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
    .line 313
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$2;->this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    const/16 v0, 0x18

    .line 319
    .local v0, "repeatCount":I
    new-instance v1, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;

    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$2;->this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$200(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060003

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;-><init>(Landroid/content/Context;II)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$2;->call()Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;

    move-result-object v0

    return-object v0
.end method
