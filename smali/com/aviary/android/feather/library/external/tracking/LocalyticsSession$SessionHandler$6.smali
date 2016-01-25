.class Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$6;
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

.field private final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$6;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iput-object p2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$6;->val$callback:Ljava/lang/Runnable;

    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$6;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$6;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->upload(Ljava/lang/Runnable;)V

    .line 1217
    return-void
.end method
