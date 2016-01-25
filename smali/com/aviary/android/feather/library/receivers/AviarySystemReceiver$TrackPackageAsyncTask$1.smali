.class Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask$1;
.super Ljava/lang/Object;
.source "AviarySystemReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask$1;->this$1:Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 402
    iget-object v1, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask$1;->this$1:Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;

    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->contextRef:Ljava/lang/ref/SoftReference;
    invoke-static {v1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->access$2(Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 403
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask$1;->this$1:Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;

    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->purchasedPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->access$3(Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 404
    new-instance v1, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$UpdateGolbalSettingsAsyncTask;

    invoke-direct {v1, v0}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$UpdateGolbalSettingsAsyncTask;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask$1;->this$1:Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;

    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->purchasedPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->access$3(Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$UpdateGolbalSettingsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 407
    :cond_0
    return-void
.end method
