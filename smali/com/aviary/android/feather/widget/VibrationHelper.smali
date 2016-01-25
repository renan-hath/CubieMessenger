.class public Lcom/aviary/android/feather/widget/VibrationHelper;
.super Ljava/lang/Object;
.source "VibrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;
    }
.end annotation


# static fields
.field private static mVibrator:Landroid/os/Vibrator;


# instance fields
.field private mEnabled:Z

.field private mHandler:Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;

    invoke-direct {v0}, Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/VibrationHelper;->mHandler:Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;

    .line 23
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/VibrationHelper;->initialize(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/aviary/android/feather/widget/VibrationHelper;->setEnabled(Z)V

    .line 25
    return-void
.end method

.method static synthetic access$000()Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/aviary/android/feather/widget/VibrationHelper;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-class v2, Lcom/aviary/android/feather/widget/VibrationHelper;

    monitor-enter v2

    .line 29
    :try_start_0
    sget-object v1, Lcom/aviary/android/feather/widget/VibrationHelper;->mVibrator:Landroid/os/Vibrator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 31
    :try_start_1
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    sput-object v1, Lcom/aviary/android/feather/widget/VibrationHelper;->mVibrator:Landroid/os/Vibrator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 37
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "VibrationHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/VibrationHelper;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 40
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "VibrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/aviary/android/feather/widget/VibrationHelper;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/VibrationHelper;->mEnabled:Z

    .line 44
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public vibrate(I)V
    .locals 3
    .param p1, "milliseconds"    # I

    .prologue
    const/16 v2, 0x65

    .line 51
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/VibrationHelper;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/aviary/android/feather/widget/VibrationHelper;->mHandler:Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/aviary/android/feather/widget/VibrationHelper;->mHandler:Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;->removeMessages(I)V

    .line 55
    iget-object v1, p0, Lcom/aviary/android/feather/widget/VibrationHelper;->mHandler:Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 56
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 58
    iget-object v1, p0, Lcom/aviary/android/feather/widget/VibrationHelper;->mHandler:Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/widget/VibrationHelper$VibrationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
