.class Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;
.super Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
.source "MainLoopVoipSoundEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingtoneBased"
.end annotation


# instance fields
.field private final ringtone:Landroid/media/Ringtone;

.field private final vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 134
    invoke-direct {p0, v7}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;-><init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$1;)V

    .line 135
    const-string/jumbo v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 136
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 138
    .local v2, "ringerMode":I
    const/4 v1, 0x0

    .line 144
    .local v1, "playVibrate":Z
    packed-switch v2, :pswitch_data_0

    .line 158
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {p1, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->ringtone:Landroid/media/Ringtone;

    .line 159
    const/4 v1, 0x1

    .line 163
    :goto_0
    if-eqz v1, :cond_1

    .line 164
    const-string/jumbo v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->vibrator:Landroid/os/Vibrator;

    .line 168
    :goto_1
    return-void

    .line 146
    :pswitch_0
    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {p1, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->ringtone:Landroid/media/Ringtone;

    .line 147
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    .line 148
    .local v3, "vibrateSetting":I
    if-ne v3, v4, :cond_0

    move v1, v4

    .line 149
    :goto_2
    goto :goto_0

    :cond_0
    move v1, v5

    .line 148
    goto :goto_2

    .line 151
    .end local v3    # "vibrateSetting":I
    :pswitch_1
    iput-object v7, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->ringtone:Landroid/media/Ringtone;

    goto :goto_0

    .line 154
    :pswitch_2
    iput-object v7, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->ringtone:Landroid/media/Ringtone;

    .line 155
    const/4 v1, 0x1

    .line 156
    goto :goto_0

    .line 166
    :cond_1
    iput-object v7, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->vibrator:Landroid/os/Vibrator;

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDestroy()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 178
    :cond_1
    return-void
.end method

.method protected onPlay()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;->vibrator:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 188
    :cond_1
    return-void

    .line 186
    :array_0
    .array-data 8
        0x0
        0x1f4
        0x12c
        0xc8
    .end array-data
.end method
