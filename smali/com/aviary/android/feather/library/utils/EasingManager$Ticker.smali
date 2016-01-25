.class Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;
.super Ljava/lang/Object;
.source "EasingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/utils/EasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ticker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/utils/EasingManager;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/utils/EasingManager;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mBase:J

    .line 183
    .local v3, "base":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 184
    .local v11, "now":J
    sub-long v5, v11, v3

    .line 186
    .local v5, "diff":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v13, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mValue:D

    .line 189
    .local v13, "old":D
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mMethod:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mStartValue:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEndValue:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mDuration:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Double;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v15

    .line 201
    .local v15, "value":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-wide v15, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mValue:D

    .line 203
    const-wide/16 v17, 0x10

    div-long v17, v5, v17

    move-wide/from16 v0, v17

    long-to-int v8, v0

    .line 204
    .local v8, "frame":I
    add-int/lit8 v17, v8, 0x1

    mul-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v9, v3, v17

    .line 206
    .local v9, "next":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v17, v5, v17

    if-gez v17, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEasingCallback:Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mInverted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEndValue:D

    move-wide/from16 v18, v0

    sub-double v15, v18, v15

    .end local v15    # "value":D
    :cond_0
    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-interface {v0, v1, v2, v13, v14}, Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;->onEasingValueChanged(DD)V

    .line 208
    sget-object v17, Lcom/aviary/android/feather/library/utils/EasingManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mToken:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 213
    .end local v8    # "frame":I
    .end local v9    # "next":J
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v7

    .line 191
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 193
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 194
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v7

    .line 197
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v8    # "frame":I
    .restart local v9    # "next":J
    .restart local v15    # "value":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEasingCallback:Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mInverted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEndValue:D

    move-wide/from16 v17, v0

    :goto_1
    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-interface {v0, v1, v2}, Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;->onEasingFinished(D)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/aviary/android/feather/library/utils/EasingManager;->mRunning:Z

    goto :goto_0

    .line 210
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager$Ticker;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mStartValue:D

    move-wide/from16 v17, v0

    goto :goto_1
.end method
