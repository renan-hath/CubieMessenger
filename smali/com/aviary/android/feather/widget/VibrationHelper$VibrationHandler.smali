.class Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;
.super Landroid/os/Handler;
.source "VibrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/VibrationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VibrationHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    # getter for: Lcom/aviary/android/feather/widget/VibrationHelper;->mVibrator:Landroid/os/Vibrator;
    invoke-static {}, Lcom/aviary/android/feather/widget/VibrationHelper;->access$000()Landroid/os/Vibrator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    # getter for: Lcom/aviary/android/feather/widget/VibrationHelper;->mVibrator:Landroid/os/Vibrator;
    invoke-static {}, Lcom/aviary/android/feather/widget/VibrationHelper;->access$000()Landroid/os/Vibrator;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "t":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
