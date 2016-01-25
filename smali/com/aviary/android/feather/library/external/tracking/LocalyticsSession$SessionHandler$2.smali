.class Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$2;
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

.field private final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$2;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iput-object p2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$2;->val$msg:Landroid/os/Message;

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$2;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$2;->val$msg:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v2, v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->open(ZLjava/util/Map;)V

    .line 1091
    return-void
.end method
