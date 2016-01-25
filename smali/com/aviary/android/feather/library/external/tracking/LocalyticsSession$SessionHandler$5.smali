.class Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$5;
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

.field private final synthetic val$screen:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$5;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iput-object p2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$5;->val$screen:Ljava/lang/String;

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$5;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$5;->val$screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->tagScreen(Ljava/lang/String;)V

    .line 1195
    return-void
.end method
