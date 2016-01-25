.class public Lcom/aviary/android/feather/library/utils/EasingManager;
.super Ljava/lang/Object;
.source "EasingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;,
        Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;,
        Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;,
        Lcom/aviary/android/feather/library/utils/EasingManager$TickerStart;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$aviary$android$feather$library$utils$EasingManager$EaseType:[I

.field static final mHandler:Landroid/os/Handler;


# instance fields
.field mBase:J

.field mDuration:I

.field mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

.field mEasingCallback:Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;

.field mEndValue:D

.field mInverted:Z

.field mMethod:Ljava/lang/reflect/Method;

.field mRunning:Z

.field mStartValue:D

.field mTicker:Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;

.field mToken:Ljava/lang/String;

.field mValue:D


# direct methods
.method static synthetic $SWITCH_TABLE$com$aviary$android$feather$library$utils$EasingManager$EaseType()[I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/aviary/android/feather/library/utils/EasingManager;->$SWITCH_TABLE$com$aviary$android$feather$library$utils$EasingManager$EaseType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->values()[Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseIn:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseInOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseNone:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/aviary/android/feather/library/utils/EasingManager;->$SWITCH_TABLE$com$aviary$android$feather$library$utils$EasingManager$EaseType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEasingCallback:Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mToken:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method createInstance(Ljava/lang/Class;)Lit/sephiroth/android/library/imagezoom/easing/Easing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lit/sephiroth/android/library/imagezoom/easing/Easing;",
            ">;)",
            "Lit/sephiroth/android/library/imagezoom/easing/Easing;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lit/sephiroth/android/library/imagezoom/easing/Easing;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/sephiroth/android/library/imagezoom/easing/Easing;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1
.end method

.method getEasingMethod(Lit/sephiroth/android/library/imagezoom/easing/Easing;Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "instance"    # Lit/sephiroth/android/library/imagezoom/easing/Easing;
    .param p2, "type"    # Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0, p2}, Lcom/aviary/android/feather/library/utils/EasingManager;->getMethodName(Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "methodName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 147
    :cond_0
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method getMethodName(Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    .prologue
    .line 151
    invoke-static {}, Lcom/aviary/android/feather/library/utils/EasingManager;->$SWITCH_TABLE$com$aviary$android$feather$library$utils$EasingManager$EaseType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 153
    :pswitch_0
    const-string/jumbo v0, "easeIn"

    goto :goto_0

    .line 155
    :pswitch_1
    const-string/jumbo v0, "easeInOut"

    goto :goto_0

    .line 157
    :pswitch_2
    const-string/jumbo v0, "easeNone"

    goto :goto_0

    .line 159
    :pswitch_3
    const-string/jumbo v0, "easeOut"

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public start(Ljava/lang/Class;Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;DDI)V
    .locals 10
    .param p2, "type"    # Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;
    .param p3, "fromValue"    # D
    .param p5, "endValue"    # D
    .param p7, "durationMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lit/sephiroth/android/library/imagezoom/easing/Easing;",
            ">;",
            "Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;",
            "DDI)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lit/sephiroth/android/library/imagezoom/easing/Easing;>;"
    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/aviary/android/feather/library/utils/EasingManager;->start(Ljava/lang/Class;Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;DDIJ)V

    .line 61
    return-void
.end method

.method public start(Ljava/lang/Class;Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;DDIJ)V
    .locals 7
    .param p2, "type"    # Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;
    .param p3, "fromValue"    # D
    .param p5, "endValue"    # D
    .param p7, "durationMillis"    # I
    .param p8, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lit/sephiroth/android/library/imagezoom/easing/Easing;",
            ">;",
            "Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;",
            "DDIJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lit/sephiroth/android/library/imagezoom/easing/Easing;>;"
    iget-boolean v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mRunning:Z

    if-nez v2, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/utils/EasingManager;->createInstance(Ljava/lang/Class;)Lit/sephiroth/android/library/imagezoom/easing/Easing;

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    .line 76
    iget-object v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    invoke-virtual {p0, v2, p2}, Lcom/aviary/android/feather/library/utils/EasingManager;->getEasingMethod(Lit/sephiroth/android/library/imagezoom/easing/Easing;Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mMethod:Ljava/lang/reflect/Method;

    .line 81
    iget-object v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 85
    cmpl-double v2, p3, p5

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mInverted:Z

    .line 87
    iget-boolean v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mInverted:Z

    if-eqz v2, :cond_3

    .line 88
    iput-wide p5, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mStartValue:D

    .line 89
    iput-wide p3, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEndValue:D

    .line 94
    :goto_2
    iget-wide v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mStartValue:D

    iput-wide v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mValue:D

    .line 96
    iput p7, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mDuration:I

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p8

    iput-wide v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mBase:J

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mRunning:Z

    .line 99
    new-instance v2, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;-><init>(Lcom/aviary/android/feather/library/utils/EasingManager;)V

    iput-object v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mTicker:Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    add-long v0, v2, p8

    .line 102
    .local v0, "next":J
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-nez v2, :cond_4

    .line 103
    iget-object v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEasingCallback:Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;

    invoke-interface {v2, p3, p4}, Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;->onEasingStarted(D)V

    .line 108
    :goto_3
    sget-object v2, Lcom/aviary/android/feather/library/utils/EasingManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mTicker:Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;

    iget-object v4, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 85
    .end local v0    # "next":J
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 91
    :cond_3
    iput-wide p3, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mStartValue:D

    .line 92
    iput-wide p5, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEndValue:D

    goto :goto_2

    .line 105
    .restart local v0    # "next":J
    :cond_4
    sget-object v2, Lcom/aviary/android/feather/library/utils/EasingManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/aviary/android/feather/library/utils/EasingManager$TickerStart;

    invoke-direct {v3, p0, p3, p4}, Lcom/aviary/android/feather/library/utils/EasingManager$TickerStart;-><init>(Lcom/aviary/android/feather/library/utils/EasingManager;D)V

    iget-object v4, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mToken:Ljava/lang/String;

    const-wide/16 v5, 0x10

    sub-long v5, v0, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_3
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mRunning:Z

    .line 117
    sget-object v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mTicker:Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;

    iget-object v2, p0, Lcom/aviary/android/feather/library/utils/EasingManager;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 118
    return-void
.end method
