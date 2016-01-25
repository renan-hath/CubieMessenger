.class Lcom/aviary/android/feather/FeatherActivity$12;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Lcom/aviary/android/feather/library/services/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/FeatherActivity;->loadExif()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/services/FutureListener",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;

.field final synthetic val$data:Lcom/aviary/android/feather/library/services/LocalDataService;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;Lcom/aviary/android/feather/library/services/LocalDataService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$12;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iput-object p2, p0, Lcom/aviary/android/feather/FeatherActivity$12;->val$data:Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Ljava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1260
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1261
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$12;->val$data:Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v2, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->setOriginalExifBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
