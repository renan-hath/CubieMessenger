.class Lcom/aviary/android/feather/library/utils/EasingManager$TickerStart;
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
    name = "TickerStart"
.end annotation


# instance fields
.field mValue:D

.field final synthetic this$0:Lcom/aviary/android/feather/library/utils/EasingManager;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/utils/EasingManager;D)V
    .locals 0
    .param p2, "value"    # D

    .prologue
    .line 168
    iput-object p1, p0, Lcom/aviary/android/feather/library/utils/EasingManager$TickerStart;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-wide p2, p0, Lcom/aviary/android/feather/library/utils/EasingManager$TickerStart;->mValue:D

    .line 170
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/EasingManager$TickerStart;->this$0:Lcom/aviary/android/feather/library/utils/EasingManager;

    iget-object v0, v0, Lcom/aviary/android/feather/library/utils/EasingManager;->mEasingCallback:Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;

    iget-wide v1, p0, Lcom/aviary/android/feather/library/utils/EasingManager$TickerStart;->mValue:D

    invoke-interface {v0, v1, v2}, Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;->onEasingStarted(D)V

    .line 175
    return-void
.end method
