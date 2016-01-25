.class Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$1;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

.field private final synthetic val$isOptingOut:Z


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$1;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iput-boolean p2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$1;->val$isOptingOut:Z

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$1;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iget-boolean v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$1;->val$isOptingOut:Z

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->optOut(Z)V

    .line 1073
    return-void
.end method
